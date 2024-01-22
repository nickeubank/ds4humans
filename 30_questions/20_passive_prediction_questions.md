# Passive-Prediction Questions

When most people hear the term "machine learning," what they think of is the ability of computers to answer Passive-Prediction Questions: "which patients are likely to experience complications from surgery if we don't do anything?", "which people applying for life insurance are healthy enough we should issue them a policy?", or "which job applicants would make good employees (and thus, which job applicants should we interview)?" And indeed, the ability of data scientists to answer Passive-Prediction Questions is one of our most useful skills.

However, answering this type of question is also one of the easiest ways to get in trouble as a data scientist. Why? Just as you can always calculate a summary statistic or get a result from an unsupervised machine learning model when trying to answer an Exploratory Question, you can also always get predicted values from a statistical model. But with Passive-Prediction Questions—*unlike* with Exploratory Questions—you can't fully check the validity of your answer to a Passive-Prediction Question with data you currently have. That's because, *by definition*, the reason you are trying to answer a Passive-Prediction Question is that you want to predict something that you don't currently know!

## Flavors of Passive-Prediction Questions

There are two flavors of Passive-Prediction Questions:

- predicting something that has yet to occur ("which patients going in for surgery are likely, in the future, to experience complications?"), and
- predicting something that *could* occur but actually won't ("if a radiologist had looked at this mammogram, would they conclude the patient had cancer?").

The first category of passive prediction—predicting something that has yet to occur—is the most intuitive, and is the type of passive prediction that accords best with the normal meaning of the term "predict." But the second favor of passive prediction—in which we try and predict what someone *would* do—is also very important, as it underlies efforts at automation. Spam detection, image classification, autocomplete, and self-driving cars are all examples of situations where we train a model by showing it examples of how a person *would* do something, so the model can predict what a person would do when faced with new data and emulate that behavior itself.

And just as there are two flavors of passive-prediction, so too are there two corresponding use cases for answering Passive-Prediction Questions:

- Identifying individual entities for follow-up, and
- Automating data classification to make hard-to-work-with data (images, medical scans, text) simpler

## Differentiating Between Exploratory and Passive-Prediction Questions

If you have not felt a little confused about the distinction between Exploratory and Passive-Prediction Questions previously, there's a good chance you find yourself struggling with that issue here, and for understandable reasons.

In many cases, one can easily imagine how the same analysis might constitute an answer to *either* an Exploratory or Passive-Prediction Question. For example, predicting which patients are likely to experience complications from surgery using a logistic regression could constitute the answer a Passive-Prediction Question, but it could also answer Exploratory Questions like "what hospitals have the highest surgery complication rates?" or "what type of surgeries have the highest complication rates?"

The confusion lies in the fact that the distinction between these types of questions isn't related to the statistical machinery you might use to answer the question, but rather what we are trying to accomplish, and thus how we might evaluate the success of a given statistical or machine learning model.

With Passive-Prediction Questions, our interest is in the values that get spit out of a model for each entity in the data. When answering a Passive-Prediction Question, the *only* thing we care about is the quality of those predictions, and so we evaluate the success of a model that aims to answer a Passive-Prediction Question by the quality of those predictions (using metrics like AIC, AUC, R-Squared, Accuracy, Precision, Recall, etc.). Thus, when using a logistic regression to answer a Passive-Prediction Question, we don't actually care about what factors are being used to make our predictions, just that they improve the predictions. Our interest is only the quality of our predicted values, and a good model is one that explains a substantial portion of the variation in our outcome.

With Exploratory Questions, our interest is in improving our understanding of the problem space, not in making precise predictions for each entity in our data. Thus, in the example of logistic regression, our interest is in the factors on the "right-hand side" of our logistic regression and how they help us understand what shapes outcomes, not the exact accuracy of our predictions. A good model, in other words, doesn't actually have to explain a large share of variation at the level of individual entities, but it does have to help us understand our problem space.

For example, a model that looked at the relationship between individuals' salaries and their age, education, and where they live might tell us a *lot* about the importance of a college degree to earnings (which we could see by the large and statistically significant coefficient on having a college degree), even if it only explains a small amount of overall variation in salaries (e.g., the R-Squared might only be 0.2).

This distinction also has important implications when working with more opaque supervised machine learning techniques, like deep learning, random forests, or SVMs. These techniques are often referred to as "black boxes" because exactly how different impute factors relate to the predictions that the model makes is impossible to understand (in other words, it's like the input data is going into a dark box we can't see into, and then predictions are magically popping out the other side). These models can be very useful for answering Passive-Prediction Questions, as they can accommodate very unusual, non-linear relationships between input factors and predicted values, but because these relationships are opaque to us, the data scientist, they don't really help us understand the problem space.

## When Are Our Predictions Valid?

Because passive-prediction is fundamentally about making predictions about things that are not-yet-seen, making predictions is one of the more precarious things a data scientist can do. But that doesn't mean that we are helpless when it comes to determining how confident we should be in our predictions, and when and where we think our predictions will be reliable. In particular, as data scientists, we have a great many tools for evaluating how well our model fits the data we *already have* (a concept known as *internal validity*), and ways of thinking critically about the contexts in which using a given model to make predictions are appropriate (a concept known as *external validity*).

### Internal Validity

Of all the places where data science is fragmented, none is more evident than in how data scientists evaluate how effectively we think a model is representing our data.

The first data science perspective on evaluating the internal validity of a model comes from the field of statistics. Statisticians have approached evaluating model fit with, unsurprisingly, methods based on the idea of random sampling and the properties of statistical distributions. They make assumptions about the distributions underlying data and use those to derive theoretically-motivated metrics. That's the origin of statistics like Akaike Information Criterion (AIC), Bayesian Information Criterion (BIC), as well as the emphasis on the validity of the standard errors assigned to factors on the right-hand side of the regression.

When computer scientists were first developing their own machine learning techniques... I'm editorializing a little here, but I think it's safe to say that initially they either didn't *know about* a lot about these metrics, or they thought that they could do a better job investing their own. So they developed the "split-train-test" approach to model evaluation: they split their data into two parts, train their model on part of the data, then test how well the model is able to predict the (known) outcomes in the test dataset.

Of course, over time these two fields have largely converged in adopting one another's methods, and some—like cross-validation—live comfortably in the middle. But if you're ever wondering why, when you get to a machine learning class, it seems like everything you learned in stats has been abandoned (or end up in a stats class and have the opposite experience), it's largely an artifact of parallel development of methods of model evaluation in computer science and statistics departments.

### External Validity

Where *internal validity* is a measure of how well a model captures the meaningful variation in the data we already have, *external validity* is a measure of how well we think that our model is likely to perform when faced with new data.

The external validity of a model, it is important to emphasize, is specific to the context in which a model is being used. A model will generally have very *high* external validity when used to answer Passive-Prediction Questions in a setting that is very similar to the setting from which the data used to train the model was collected, but *low* external validity when applied in a very different setting.

There are a range of factors that can determine external validity, such as whether a model is being used to answer Passive-Prediction Questions about:

- the *same population* from which the training data was drawn. The patterns in data from one country will often differ from patterns in data from another country, for example.
- the *same time period* from which the training data was drawn. Consumer behavior may vary across seasons, and many patterns in data change over longer timespans.
- the *same parameter ranges* as those in the training data. Statistical and machine learning models are designed to fit the data they can see as well as possible. However, while nearly all models will generate predictions about outcomes when given inputs that weren't in the data used to fit a model because they weren't trained with access to data of this type, their guesses are unlikely to be particularly meaningful.

<!-- Need a figure we make ourselves -->

To illustrate, consider the two models in the figure below ([source](https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/06LeastSquares/extrapolation/complete.html))—one a linear fit, and one a higher-order polynomial. Both model the data similarly *in the range for which data is available* but make very different predictions at values of `x` below 0 or above 2.

FIX COMMENTED SECTIONS

<!-- ![example of two models that look similar over ranges with data but extrapolate very differently outside that range](images/extrapolation.gif) -->

<!-- ## Manipulation and External Validity

Models may exhibit low external validity when applied in contexts that are obviously very different from the data on which it was trained: in a different country, in a different industry, in a different climate, or during a different time of year. But they can sometimes also fail to perform well in situations where everything *looks* similar, but the processes generating the data have changed.

Suppose, for example, we wanted to go back to our example of wanting to reduce complications from surgery. So we build a model that allows us to predict, for each patient going into surgery, the likelihood they will eventually experience complications. -->
