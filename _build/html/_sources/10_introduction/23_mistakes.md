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
    cancer_detected = False
    return cancer_detected
```

Are you still impressed? That model *does* have an accuracy rate of about 90%, so shouldn't I be proud of it?

Of course not. And to be clear, the problem with this model is not that it the accuracy is only 90% and not, say 95%. The problem with this model is that *it has a False Negative Rate (the share of cases that are positive — in this case, mammograms from women with cancer — that are classified as cancer free) of 100%.* And obviously one of the things we care about most in cancer screenings is minimizing the False Negative Rate.

Wait, if the accuracy is 90%, how does this model have a False Negative Rate of 100%? Simple — the data is very imbalanced. According to the Susan G. Komen society, roughly 90% of routine mammograms are perfectly normal and require no followup. Thus a "model" that reports all routine mammograms are normal will immediately achieve an accuracy score of 90%. In fact, the true accuracy of the model is actually higher than 90%, since most mammograms flagged as "abnormal" are determined to not be indicative of cancer after followup (e.g., after biopsies).

OK, if what we care about is the False Negative Rate, shouldn't we just minimize that? Not so fast — consider this model:

```python
def my_no_false_negative_model(mammogram):
    cancer_detected = True
    return cancer_detected
```

Oh dear. Yes, that model has a 0% False Negative Rate, but a 100% False Positive Rate, meaning anyone subject to this screening would be told they might have cancer and needs followup diagnostic procedures! That's no good either.

No, a *good* model for reading mammograms needs to maximize accuracy while also balancing the desire to not subject healthy women to unnecessary procedures (minimize False Positives) *and* the desire to not fail to flag potentially cancerous scans. And that's what I mean when I say that a *great* data scientist is one who is thoughtful about how their models make mistakes. Determining what model is "best" requires more than optimizing a simple objective function — it requires thinking critically about the problem one is trying to solve (Big Idea 1), the substantive impact of different types of model errors in the context of that problem, and using that to inform model selection and evaluation.
