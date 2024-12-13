# Idea 3: Being Thoughtful About Being Wrong

The third big idea of this book is that one of the biggest differentiators of good data scientists and great scientists is not their ability to maximize the accuracy of their models, but to think rigorously about their models limitations and the errors they will inevitably commit.

To illustrate the type of fallacy that young data scientists fall prey to in their quest to maximize model performance, let us consider that most intuitive of metrics, *accuracy* — the share of classifications a model makes that are correct. In my role as the Admissions Chair for the Duke Masters of Interdisciplinary Data Science (MIDS) program, I read hundreds of essays a year from aspiring data scientists, and I long ago lost count of the number of times I have seen some version of the following passage with little to no additional context:

> While working in [person]'s lab, I fit a [logit/XGBoost/Random Forest/Deep Learning] model to the data and achieved an accuracy of 96%.

Or, in the applicant's resume, they report attaining an accuracy score in the 90s with some model.

I assume that these authors believe that this type of declaration reflects well on them — after all, 96% accuracy means only 4% of observations were mis-classified! But the truth is that reporting a high accuracy absent addition information about model performance actually tells me more about the author's failure to understand this third Big Idea of the book than it tells me about their modelling prowess.

To illustrate why, suppose I told you I had developed a model that could predict breast cancer in mammograms with an accuracy of over 90%. That'd be amazing, right? Mammograms cost roughly $10 *billion* dollars a year in the US alone,[^mammogram_costs] so any reduction in need for skilled radiologists to review mammograms would be a huge win for women's health and healthcare costs, right?

[^mammogram_costs]: ["Aggregate Cost of Mammography Screening in the United States: Comparison of Current Practice and Advocated Guidelines"](https://pmc.ncbi.nlm.nih.gov/articles/PMC4142190/), *Annals of Internal Medicine*, February 2014.

Now suppose I told you that the model I wrote was this:

```python
def my_cancer_detection_model(mammogram):
    is_scan_abnormal_maybe_cancerous = False
    return is_scan_abnormal_maybe_cancerous
```

How does that have an accuracy of 90%? Simple — according to the Susan G. Komen Society, roughly 90% of routine mammograms are normal and require no followup. Thus a "model" that reports all routine mammograms are normal will immediately achieve an accuracy score of 90%. In fact, the true accuracy of the model is actually higher than 90%, since most mammograms flagged as "abnormal" are determined to not be indicative of cancer after followup (e.g., after biopsies).

So, are you still impressed by my model's 90% accuracy?

Of course not. And to be clear, the problem with this model is *not* that its accuracy is only 90% and not, say 95%. The problem with this model is that *it has a False Negative Rate (the share of cases that are positive — in this case, mammograms from women with cancer — that are classified as cancer free) of 100%.* And since the thing we care about most in cancer screenings is not telling a patient with cancer they're fine (a False Negative), that's a huge problem!

OK, if what we care about is the False Negative Rate, shouldn't we just minimize the False Negative Rate? Not so fast! Consider this model:

```python
def my_no_false_negative_model(mammogram):
    is_scan_abnormal_maybe_cancerous = True
    return is_scan_abnormal_maybe_cancerous
```

Oh dear. Yes, that model has a 0% False Negative Rate, but it also has a 100% False *Positive* Rate, meaning anyone subject to this screening would be told they might have cancer and needs followup diagnostic procedures! That's no good either.

No, a *good* model for reading mammograms needs to maximize accuracy while also balancing the desire to not subject healthy women to unnecessary procedures (minimize False Positives) *and* the desire to not fail to flag potentially cancerous scans. And that's what I mean when I say that a *great* data scientist is one who is thoughtful about how their models make mistakes. Determining what model is "best" requires more than optimizing a simple objective function — it requires thinking critically about the problem one is trying to solve (Big Idea 1), the substantive impact of different types of model errors in the context of that problem, and using that to inform model selection and evaluation.

<!-- And less you think this is a contrived example, it's not. This particular problem — models that just says everything is from the more prevalent group getting high accuracy scores — happens any time you have *imbalanced data* (the data is mostly of one type). And 90/10 isn't even that imbalanced — fraudulent credit card purchases [make up less than one-tenth of 1% of all credit card transactions](https://www.federalreserve.gov/newsevents/pressreleases/other20181016a.htm). That means a "model" that reports all credit card transactions are valid will immediately have an accuracy score of $>99.9%$.

This is just one example of the kind of problem you will encounter if you aren't thoughtful about the types of errors you make, however. 

 Suppose you train a model to review job applications. You pick a balance of False Positives, False Negatives, and Accuracy that makes sense for you problem, but forget to look at *who* ends up being classified as False Negatives and False Positives. If all of the False Positives (applicants advanced in the hiring process who shouldn't be) turn out to be White men, and all of the False Negatives are women and People of Color, is that something you should worry about? Is it ethical? Is it *legal*?

And  -->