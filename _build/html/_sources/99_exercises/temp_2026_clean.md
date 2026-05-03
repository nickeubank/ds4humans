# 2026 Final for IDS 701

Hello, and welcome to the IDS 701 2026 Final! I know this doesn't *feel* exciting, but I hope you find this a useful opportunity to practice applying all the knowledge you've gained about causal inference over the course of the semester.

While you will find all *questions* in this packet, **please record all your answers on your answer sheet.**

## Causal Inference

#### Question 1

What is the Fundamental Problem of Causal Inference?

(a) Causal Questions can only be answered reliably through randomized experiments.
(b) We can **never** directly observe the same unit being treated and not treated at the same moment in time. And so by definition, we can never directly measure the causal effect of X on Y.
(c) Answering Causal Questions requires really large sample sizes to estimate causal effects properly.
(d) Internal validity is easy to ensure when answering Causal Questions, but external validity is extremely hard.
(e) None of these answers.

### Question 2

What is the primary purpose of Causal Questions?

(a) Better understanding a stakeholder's problem.
(b) Automation.
(c) Identifying individual entities for additional attention.
(d) Estimating the likely impact of an action our stakeholder is considering taking.
(e) None of these.
(f) All of these (except the None answer, obviously).

### Potential Outcomes

Duke University is trying to decide on a policy for AI use (or, more specifically, LLM use) among undergraduates.

To help inform their decision, they conducted a survey in a large *Intro to Philosophy* class. The class had a clear "you may use AI if you want" policy. Students were then asked whether they had used AI on their final essay. The essays were graded by a group of TAs who did not know which students had used AI.

When the researchers examined the relationship between AI use and essay grades, they found that students who used AI received lower grades.

For the following questions, select the choice that correctly maps quantities in this study context to the different components/notation of the Potential Outcomes Framework.

You may assume that student reports about using AI were truthful.

For example, $$E(Y^0| D=0)$$ would be "The average essay score of students who reported not using AI in the world where they do not use AI."

#### Question 3

$$E(Y^1| D=1) - E(Y^0|D=1)$$

(a) The average difference in essay scores between students who reported using AI and students who reported not using AI in a world where no one uses AI.
(b) The average difference in essay scores for students who reported not using AI between a world where they **do** use AI and a world where they **do not** use AI (i.e., the average effect of AI on essay scores for the students who reported not using AI).
(c) For students who reported using AI, the average difference in essay scores between a world where they **do** use AI and a world where they **do not** use AI (i.e., the average effect of AI on essay scores for the students who reported using AI).
(d) None of these options.

#### Question 4

$$E(Y^0|D=0)$$

(a) The average essay score of students who **report using** AI in the world where **they do not use**  AI.
(b) The average essay score of students who **report not using** AI in the world where **they use** AI.
(c) The average essay score of students who **report using** AI in the world where **they use** AI.
(d) The average essay score of students who **report not using** AI in the world where **they do not use** AI.
(e) None of these options.

#### Question 5

Please give one reason—in plain English—why the following condition may hold in the context of this study of AI use and essays.

This is not multiple choice — please write an answer on your answer sheet.

As you do so, be specific! Tell me a story about why *in the case of this study* you think this is likely to be true. One can always say things like “people in the two groups may have been different”, but I want a specific, **affirmative** reason you think they might have been different in a way that meets the condition. (Hint: an affirmative reason requires arguing why TWO things are true).

It may be the case that $$E(Y^0| D=1) - E(Y^0| D=0) \neq 0$$ because... (please write actual answer on answer sheet)

```




```

### A/B Testing

#### Question 6

When picking an Overall Evaluation Criterion (OEC) when designing an A/B test, it is important to ensure that the OEC you pick has what **two** properties: **Select 2**

(a) Changes in the OEC are a good indicator of whether you are achieving your organization's long-term goals.
(b) It is possible to randomly assign the OEC.
(c) The OEC is something you can measure that responds to your treatment quickly enough and strongly enough that you can detect the impact of a successful intervention in an experiment of reasonable duration.
(d) Changes in the OEC are uncorrelated with your guardrail metrics.
(e) The OEC is balanced across all treatment arms.

#### Question 7

![trustworthy ab testing estimation](images/trustworthy_ab_testing_estimation_results.png)

Above is the plot of some possible outcomes of an A/B test from *Trustworthy Online A/B Testing*. Which **two** results would the authors of *Trustworthy Online A/B Testing* say tell you that the treatment you were studying isn't something you should deploy and that you should move on to studying the next possible treatment? *Remember: the center line is 0, and to the right of the right dotted line and to the left of the left dotted line are magnitudes of practical significance*.

(a) Results 1
(b) Results 2
(c) Results 3
(d) Results 4
(e) Results 5
(f) Results 6

#### Question 8

A p-value is:

(a) Probability that the Null Hypothesis is True.
(b) Probability that the Null Hypothesis is False.
(c) $$Pr(\text{coefficient as large as the coefficient observed} | H_{0} \text{ is True})$$
(d) $$Pr( H_{0} \text{ is True} | \text{coefficient as large as the coefficient observed})$$

### Observational Causal Inference

#### Question 9

Omitted Variable Bias in a linear regression is:

(a) The difference between the *true* value of a coefficient of interest and the *estimated* value of a coefficient of interest caused by not including a variable in your regression that is correlated with both (a) the dependent variable and (b) the coefficient of interest.
(b) The bias caused by including too many variables in your regression model.
(c) The difference between the *true* value of a coefficient of interest and the *estimated* value of a coefficient of interest caused by not including a variable in your regression that is correlated with the dependent variable.
(d) None of these are omitted variable bias.

#### Question 10

A researcher is interested in better understanding what factors lenders consider when deciding whether to grant small business loans.

To answer this question, the researcher brings in a group of lenders and presents them with a set of loan applications. Lenders were then asked whether they would approve or reject each application.

The lenders' responses — 1 if the lender said they would lend to an applicant, 0 if not — were then regressed against attributes of the application. The result of that regression is this table:

![regression of small business loan decision on applicant features](images/loan_regression.png)

where `has_college`, `female`, and `poc` are indicators for whether the applicant has a college degree, is female, and identifies as a "Person of Color" (i.e., someone who does not identify as "White") respectively, and take a value of 1 if the applicant meets the condition.

Does this regression table show that having a college degree had a causal effect on the decisions made by the lenders?

(a) Yes: the coefficient on `has_college` is large (the average loan rate was around 45%, and having a college degree increases the likelihood of approval by almost +20 percentage points); the coefficient is very statistically significant (t-stat is over 22!). So we can conclude that having a college degree had a very large causal effect on lender decisions.
(b) No: while there are some controls in the regression, they probably weren't sufficient to control for differences between applicants with college degrees and applicants without college degrees.
(c) No, the R-squared on this model is so low, we really can't infer anything.
(d) I really can't say based on the information I have been provided. I would need to know more about where the applications came from and what data was included on them.

#### Question 11

Now suppose I told you the applications were a random sample of real loan applications, and that the only features on the application were the applicant's age, gender, race, and educational attainment.

*Now* does this regression table show that having a college degree had a causal effect on the decisions made by the lenders?

(a) No: since the having a college degree was not randomly assigned, the coefficient on `has_college` is not a valid causal estimate; it's just a correlation.
(b) Yes: the coefficient on `has_college` is large (the average loan rate was around 45%, and having a college degree increases the likelihood of approval by almost +20 percentage points); the coefficient is very statistically significant (t-stat is over 22!). So we can conclude that having a college degree had a very large causal effect on lender decisions.
(c)  Probably yes: even though having a college degree was not randomly assigned, we have been able to measure all features on the application. Thus even if applicants with and without college degrees are not the same on average, we have all the covariates we need to account for how these differences that may have impacted the lender's decision. Given that, and the magnitude and statistical significance of the coefficient on `has_college`, it is probably the case that that having a college degree had a large causal effect on the decisions made by lenders. But to be sure, I would want to run some additional diagnostic tests on the model to ensure that I have specified the model correctly.

#### Question 12

Now suppose I told you that the applications that the lenders saw were a random sample of real small business applications that included the applicants age, gender, race, educational attainment, employment history, criminal record, as well as personal statement and business plans.

*Now* does this regression table show that having a college degree had a causal effect on the decisions made by the lenders?

(a) No: since having a college degree was not randomly assigned, the coefficient on `has_college` is not a valid causal estimate; it's just a correlation.
(b)  Probably No: since having a college degree was not randomly assigned, the applicants with and without college degrees were probably different in many ways. Since our regression only accounts for some of the ways the lender may have been able to tell they were different, the coefficient on `has_college` is likely subject to omitted variable bias. Thus it probably does not reflect the causal effect of having a college degree.
(c) Probably Yes: the coefficient on `has_college` is large; the coefficient is very statistically significant. Moreover, we are able to control for age, gender, and race, so we can conclude having a college degree had a causal effect on the decisions of lenders.

#### Question 13

Now consider this specification from the context described above.

![regression of small business loan decision on applicant features with interaction term](images/loan_regression_interact.png)

Based only on the information in this table, do you think a lender is more likely to give a loan to:

- a White applicant with a college degree, or
- a Person of Color with a college degree

holding all else (age, gender) constant. `poc` is an indicator for identifying as a Person of Color (i.e., someone who does not identify as White).

(a) The White applicant with a college degree
(b) The Person of Color with a college degree
(c) I can't say based on just the data you've provided.

## Teams

#### Question 14

In a reading on Psychological Safety, you read about a study of teams in a hospital Neonatal Intensive Care Unit (NICU). The study author collected data on team dynamics and medical errors reports. The data showed that teams with better indicators of team collaboration and effectiveness had a *higher* number of medical error reports.

**What did the researcher conclude was the reason for this result?**

(a) Effective teams weren't actually committing more medical errors; they were just more likely to admit when errors occurred.
(b) The measure of team effectiveness actually just measured how well people got along, and teams that were comfortable with each other were *too* comfortable, leading to mistakes.
(c) Effective teams were being assigned to more difficult cases, resulting in more demands on the teams and thus more medical errors.
(d) None of these.

### Question 15

What is the Fundamental Attribution Error, and why is it a problem?

(a) It refers to a collective phenomenon where the desire for harmony within a team results in an irrational or dysfunctional decision-making outcome. The problem arises when team members suppress dissenting viewpoints to avoid conflict, ultimately leading to a loss of individual creativity and independent thinking.
(b) It's the tendency to believe that other people's behavior and shortcomings are caused by intrinsic, immutable aspects of their personality rather than the circumstances they face. It causes us to blame *people* for things that go wrong too much and to under-estimate the role of the situation in which a person has been placed.
(c) Our tendency to forgive people for mistakes by attributing them to their circumstances, not their personal failings. It tends to make leaders too lenient.
(d) It is a cognitive bias where an observer's overall impression of a person influences how they feel and think about that person’s character in specific areas. It becomes problematic in professional settings because one positive trait can lead a manager to overlook significant performance deficits or behavioral red flags.

## Problems and Questions

#### Question 16

What are the FOUR Big Ideas from the Data Science 4 Humans (the book I'm writing from which you read many chapters in the second half of the semester)?

(a) Data scientists solve problems by answering questions.
(b) While most data science classes may focus on model fitting and diagnostics, *most* of the work data scientists actually do is cleaning and preparing data for analysis.
(c) Black box models may outperform interpretable models, but black box models rarely serve the interests of stakeholders.
(d) Reasoning rigorously about uncertainty and errors is what differentiates good data scientists from great data scientists.
(e) The questions data scientists answer can be divided into three categories: descriptive, passive predictive, and causal.
(f) Data science is about solving problems.

#### Question 17

According to the author of Data Science 4 Humans, what is **the** one "metric" that matters for evaluating the success of your work as a data scientist? (please write actual answer on answer sheet)

```




```

#### Question 18

Which of the following is a Normative Question about marijuana (also known, in various circles, as weed, pot, cannabis, ganja, Mary Jane, and of course, best of all, the Devil's Lettuce)?

(a) Does marijuana use lead to the use of other drugs like heroin or cocaine?
(b) Is it a good idea to legalize recreational marijuana?
(c) Does recreational marijuana legalization cause violent crime?
(d) Is marijuana legalization likely to generate tax revenue for local governments?
(e) None of these are Normative Questions.

#### Question 19

Which of the following is a Normative Question about facial recognition technology?

(a) Do most commercially available facial recognition models have higher error rates for individuals with dark-skin?
(b) Does the use of facial recognition by police reduce crime?
(c) Is facial recognition currently used by the Durham police?
(d) Should Durham allow police to use facial recognition on patrol car cameras?
(e) None of these are Normative Questions.

#### Question 20

Which of the following is **NOT** one of my [Nick's] concerns about the term EDA?

(a) The term's prevalence creates the impression students need to invest in really "getting to know their data" before fitting a model. Students should really just be focused on post-modeling diagnostics (e.g., residual plots) to catch errors.
(b) It conflates several distinct activities under a single name — learning the structure of your data, validating your data, and answering questions about the world without formal modeling.
(c) It devalues analyses not based on mathematically-complex modeling.
(d) It creates the impression one can learn a lot about the world by "doing EDA" without first articulating a clear question on seeks to answer.

### Passive Prediction

### Question 21

Why can't you evaluate a classification model's performance just by knowing its accuracy?

(a) Accuracy doesn't tell us about the type of errors the model is making.
(b) Without information about the baseline balance of classes in the data, accuracy is effectively meaningless.
(c) Performance is relative — we also need to know the performance of the next best available alternative. 51% accuracy may not sound like much, but if the best anyone else has been able to achieve is 50% and there's a way to make money off a 1% increase in accuracy, it may be business changing.
(d) These are all reasons accuracy is meaningless without context.

#### Question 22

Which of the following is true of Split-Train-Test modeling approaches? (Choose as many as are correct)

(a) Because final model evaluation is applied to the test dataset — which was not used in training, and is thus "external" to what the model was trained on — the measures of model quality we get from this workflow give us a good understanding of a model's external validity.
(b) split-train-test helps to prevent overfitting by evaluating the model against a set of observations it did not see during training.
(c) The purpose of splitting data is to increase the total amount of information available for the gradient descent algorithm, thereby ensuring that the model's weights are as precise as possible.
(d) Split-train-test allows us to evaluate the distribution of errors across different types of observations, allowing us to ensure maximum fairness.

#### Question 23

According to Cynthia Rudin, which of the following is **NOT** true of black box models?

(a) The explanations generated for the black box model **must** be wrong. They cannot have perfect fidelity with respect to the original model. If the explanation was completely faithful to what the original model computes, the explanation would equal the original model, and one would not need the original model in the first place, only the explanation. (In other words, this is a case where the original model would be interpretable.) This leads to the danger that any explanation method for a black box model can be an inaccurate representation of the original model in parts of the feature space.
(b) Making a Black Box model explainable doesn't address the problem the fact you can't assess the impact of input data problems with black box models, like when a typographical error results in an inmate getting an inaccurate risk assessment score.
(c) Black box models usually outperform interpretable models according to standard evaluation metrics by finding hidden structure in the data.
(d) Cynthia Rudin would argue these are all true of black box models. (don't overthink how to interpret this answer — if you think a, b, and c are all true of black box models, select this answer.)
