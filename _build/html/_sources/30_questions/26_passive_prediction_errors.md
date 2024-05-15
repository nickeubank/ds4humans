# Thinking About The Right Way To Be Wrong

With the rise of online machine learning competitions like Kaggle and an academic literature fixated on publishing papers showing marginal improvements in performance metrics on standard benchmarks, you could be forgiven for thinking that the hardest part of data science is finding the right model and features to max out standard metrics like Area Under the Curve (AUC), Accuracy (share of cases correctly classified) or F1 scores.

However, this is far from the case when it comes to solving real-world problems. Yes, advancement in academic computer science is often tied to one's ability to write a new algorithm that performs marginally better on standard benchmarks, and most problem sets or online competitions you encounter will pre-specify how model performance will be evaluated.

But when it comes to solving real-world problems, determining what success looks like is actually a core part of your job as a data scientist. And what makes this task difficult is not how you measure your model's successes — the number of true positives and true negatives the model generates — but in determining the types of mistakes it makes when it gets things wrong.

Understanding how a model fails is just as important as minimizing mistakes in the first place (i.e., maximizing accuracy). Depending on the context, there can be *huge* asymmetries regarding the consequences of false positives and false negatives. Tell a someone with cancer they're fine (false negative), and the result may be the death of the patient from an easily treatable condition; tell someone healthy there's a chance they have cancer, and you may cause stress and additional tests, but the patient death is very unlikely.

Similarly (but in a much less scary context), classify a credit card applicant as a "good credit risk" who is not actually credit-worthy (a false positive), and your company may lose the credit limit on the card they issue; classify someone as high risk who is actually not, and your company may lose the transaction fees that customer would have generated, but they won't lose tens of thousands of dollars in unpaid bills.

When answering Passive Prediction Questions, the choice of how to balance true positives, true negatives, false positives, and false negatives is *the* bridge between the math of statistics and machine learning and the specifics of real-world problems. And as a result, an ability to speak thoughtfully about how to balance these interests is one of the most important differentiators between data scientists who have only ever fit models for problem sets and data scientists business leaders trust to solve their problems.

```{note}
In case you need more motivation to care about how best to distribute your true and false positives and negatives to best solve your stakeholder's problem, allow me to offer the following: if you are comfortable just endorsing a single success metric (accuracy, F1 score, AUC), *most* Passive Prediction Questions can be answered relatively well by automated tools. And that means that if the only thing that differentiates you from the next data scientist (or generation of chatGPT) is that you can get a slightly higher AUC than the person sitting next to you, how much value do you think you are likely bringing to your stakeholder (and thus how well paid)?

Don't believe me? Consider scikit-learn — by design, nearly all of the algorithms in that package have the exact same APIs — you run `test_train_split()`, `.fit()`, and `.predict()`. That means it's almost trivially easy to write a program that just loops over all the models in the library, fits them, and checks their performance against the simple metric you chose. Indeed, products exist that do just this, often under names like `AutoML`.

Will these do as well as a well trained data scientist? Not yet — there's skill in feature engineering and choosing which path to go down when computationally constrained. And if you're someone working at the forefront of developing new machine learning algorithms or infrastructure, then this does not apply to you. But if you are someone who is primarily interested in applying the best tools of data science to solve real world problems, then you should also bear in mind that anything easily computable lends itself to automation.[^pinker]

[^pinker]: An idea closely related to a point made by Steven Pinker in his 1994 book *The Language Instinct*: "The main lesson of thirty-five years of AI research is that the hard problems are easy and the easy problems are hard. The mental abilities of a four-year-old that we take for granted – recognizing a face, lifting a pencil, walking across a room, answering a question – in fact solve some of the hardest engineering problems ever conceived... As the new generation of intelligent devices appears, it will be the stock analysts and petrochemical engineers and parole board members who are in danger of being replaced by machines. The gardeners, receptionists, and cooks are secure in their jobs for decades to come."

Thinking carefully about your stakeholder's problem and being able to get them to articulate the relative value they place on true and false positives and negatives, then translating that domain expertise into an optimization problem — *that* is a task that requires substantially more critical thinking and interpersonal skills, and consequently is less likely to be made obsolete any time soon.
```

## The Problem with Accuracy

Let's begin our discussion about balancing true and false positives and negatives with my least favorite metric for classification problems: Accuracy.

There is perhaps no better way for a data scientist to demonstrate they don't know what they're doing than for them to proudly proclaim that their model has an accuracy score of ninety-something percent without additional context. And yet it is a mistake that I see constantly. It is as though, being students, young data scientists implicitly assume that accuracy scores, like grades, exist on an absolute scale, where values in the 90s are "A"s and something to celebrate and values in the 70s are "C"s and something to feel bad about, when in reality neither is necessarily the case.

```{sidebar} Reporting Accuracy Without Context
There is perhaps no better way for a data scientist to demonstrate they don't know what they're doing than for them to proudly proclaim that their model has an accuracy score of ninety-something percent without additional context.
```

How do I know this fallacy is common, you ask? As Director of Admissions for the [Duke Masters of Interdisciplinary Data Science (MIDS)](https://datascience.duke.edu/) program, I read hundreds of Statements of Purpose essays and resumes every year from aspiring data scientists from around the world. And despite having done this for years, I continue to be shocked by the number of applicants who proudly proclaim something like "I fit a model using XYZ method and was able to achieve a 95% accuracy score," or report an accuracy score in the 90s in their resume as though those numbers, absent context, were meaningful.

So why is reporting accuracy scores without context such a problem? There are at least three reasons.

### Accuracy and Imbalanced Data

Most data you will encounter in your career will be *imbalanced*, meaning that one of the outcomes you are trying to predict with your model (assuming a classification task) will be much, much less prevalent than the other. In these situations, because accuracy is just "the share of cases correctly classified," getting high acccuracy can be achieved trivially by always predicting the more prevalent outcome.

To illustrate, consider routine mammograms. Mammograms are x-rays of women's breast tissue used to screen for early signs of breast cancer. In the United States, it is recommended that all women over 40 get a mammogram every two years. Unsurprisingly, therefore, *vast* majority of routine mammograms are medically unremarkable. According to the Susan G. Komen society, roughly 90% of routine mammograms are perfectly normal and require no followup.[^false_positives] Thus a "model" that reports that *any* routine mammogram it is given is normal will immediately achieve an accuracy score of 90%.

[^false_positives]: The vast majority of the roughly 10% of scans that are abnormal are eventually determined to be false positives.

Moreover, most data scientists wouldn't even consider 90/10 data to be particularly imbalanced. In any given year in the United States, only about 3% of single-family residential mortgages are in a state of delinquency[^delinquency], and fraudulent credit card purchases [make up less than one-tenth of 1% of all credit card transactions](https://www.federalreserve.gov/newsevents/pressreleases/other20181016a.htm). That means a "model" that reports all mortgages are in good standing or that all credit card transactions are valid will immediately have accuracy scores of 97% and $>99.9%$, respectively.

[^delinquency]: In other words, they have failed to make a mortgage payment for at least a certain period of days.

### Relative to What?

The second problem with reporting accuracy scores absent context is that the value of a model can only ever be evaluated relative to what came before. A model with a 93% accuracy score is unlikely to be of particular value to a business if the model they were using before you arrived had an accuracy score of 98%, and your model does not have any other benefits to offset its lower accuracy. Similarly, a model with an accuracy score of 70% may constitute a considerable innovation to a business that could not make predictions more accurately than with 50%-50% odds.

Indeed, a related issue with treating accuracy as an absolute scale akin to academic grades is that model performance depends on the amount of *signal* in the data on which it is trained. Data only has so much predictive information in it, and in theory, the way a model *should* be evaluated is in terms of how close it comes to harnessing that full predictive potential of the data on which it is being trained. Of course, we are not gods, and so we will never know the exact predictive potential of a given dataset, but the principle is one to bear in mind — the potential of a model is bounded by the data on which is being trained, and the only way to get a model that exceeds that true performance frontier is by overfitting your data (creating an *illusion* of better performance that will not hold up when the model is actually deployed).

### But What About The Mistakes?

The third reason reporting accuracy scores without context — and indeed the reason that accuracy is a problematic metric in general — is that it tells you nothing about the types of misclassifications your model is making. Are all its errors false positives? Are they all false negatives? In what ratio do they occur?

Accuracy says *nothing* about how different types of mistakes are being balanced, which is why accuracy is sometimes a fun statistic to use on problem sets but a *terrible* metric in the real world.

## Area Under the Curve

## The Ethics of Misclassifications

> It is better that ten guilty persons escape than that one innocent suffer.

- William Blackstone

The author presents two classes of fairness concepts: Disparate Treatment Fairness (concepts related to the decision-making process itself), and Disparate Impact Metrics (those related to the fairness of the results of the application of an algorithm).

One example of a Disparate Treatment Fairness concept the author references is colorblindness—i.e., not using race itself in making a decision, presumably by not allowing for the use of race as an input into an algorithm.

What potential problems do you see with colorblindness as a governing fairness principle? Hint: think like a data scientist—why might removing the "race" variable from a dataset be insufficient to generate fair outcomes?
