# Idea 2: Solving Problems by Answering Questions

## Solving Problems Through Answering Questions

Once we have successfully articulated our problem, we must then figure out how to solve it. As data scientists, we are somewhat restricted in the types of solutions to which we have access; nobody hires a data scientist to call donors to raise funds for cancer research, for example, or invent a new semiconductor manufacturing technique. Rather, as we will explore in detail in this book, all data science models and algorithms can be fundamentally understood as instruments for **answering questions** about the world using quantitative methods.

```{sidebar} Answering Questions
All data science models and algorithms can be fundamentally understood as instruments for **answering questions** about the world using quantitative methods.
```

In light of that fact, we can reframe the challenge of a data scientist from the more amorphous task of just "figuring out how to solve the problem" to the more concrete "figure out what question, if answered, would make it easier to solve this problem."

<!-- To illustrate, [need some examples here. Examples hurt my head. Sticking to framework for now while I have momentum.] -->

Once we've articulated a question to answer we can turn to choosing the best tool for generating an answer. But it is worth emphasizing this point — it is only at this stage of our project—not at the beginning!—that we start thinking about what statistical method, algorithm, or model to use.

Our job as data scientists is never to just grab the trendiest tool for a given type of question. Rather, we must recognize and evaluate the strengths and weaknesses of different tools available to us *in the context of the specific problem we are seeking to address*.

## Types of Questions

While this may seem an impossible task given the sheer multiplicity of data science methods available today, nearly all data science questions we may wish to answer fall into one of three categories:[^prescriptivequestions]

- Exploratory Questions: Questions about large-scale patterns in the data.
  - Useful for understanding the problem space better and prioritizing subsequent efforts.
- Passive Prediction Questions: Questions about likely outcomes for individual observations or entities.
  - Useful for targeting individuals for additional attention or automating certain tasks.
- Causal Questions: Questions about the consequences of actions or interventions being considered.
  - Useful for deciding on appropriate courses of action.

Each of these can play a different but important role in solving problems, and any effort to answer a question of each type will raise similar issues that need to be considered. As summarized next, by recognizing the *class* of questions we are seeking to answer, we can significantly narrow both the set of data science tools that are appropriate to consider and provide a short list of common considerations to think through.

[^prescriptivequestions]: Careful readers may notice that these categories do not include *should questions*, which are sometimes referred to as "prescriptive" or "normative" questions. As we will discuss in detail in an upcoming reading, that is because while data science is an amazing tool for characterizing the world around us, it cannot, on its own, answer questions about how the world *should* be. Answering "should questions" requires evaluating the desirability of different possible states of the world, and that can only be done with reference to a system of values, making them inherently subjective. Data science can help us predict the *consequences* of different courses of action, but it cannot tell us whether those consequences make a given course of action *preferable*.

## Exploratory Questions

Once you have settled on a problem you wish to address, the next step is often to use data science to better understand the contours of the problem in order to better prioritize and strategize your efforts. As data scientists, our best strategy for this type of investigation is to ask questions about general patterns related to your problem — what I call *Exploratory Questions.*

Why is this necessary? Well, as we'll discuss in a future reading on "stakeholder management," you would be *shocked* at how often stakeholders have only a vague sense of the patterns surrounding their problem. This makes refinement of your problem statement (and thus prioritization of your subsequent efforts) impossible. So before you get too far into any data science project, it's important to ask Exploratory Questions to improve your understanding of how best to get at your problem.

To illustrate, suppose a company hired you because they were having trouble recruiting enough high-quality employees. You *could* ask for their HR data and immediately try to train a neural network to... well, I'm not even sure what you'd want to train it to do right off that bat! And that's a big part of the problem. Getting more high-quality employees is a very general problem, and you could imagine addressing it in any number of ways — you could try and get more people to apply for the job in the first place, you could try and get a *different type* of candidate to apply then is currently applying, you could try and get more high-quality people who are given job offers to accept those offers, or you could help try to increase the number of people who are hired who turn out to be successful hires! But which should you do first?

To help answer this question, we can start by asking a series of Exploratory Questions that, when answered, will aid in your efforts to solve your stakeholder's problem:

- How many job applications are you receiving when you post a job?
- What share of your current job applicants are of high quality?
- If your current applicants come from different sources (online ads, services like Indeed, outreach to colleagues for recommendations, etc.), what share of job applicants from each of these sources are of high quality?
- What share of employees you try to hire accept your offer?
- What share of employees you do hire turn out to be successful employees?

Suppose, for example, only 10% of applicants who receive job offers accept. Then clearly that would seem a place where intervention would be likely to substantially increase the number of high-quality employees being hired. If, by contrast, 95% of applicants accept offers, then that is clearly not a place where you would want to focus.

Similarly, if most applicants are high quality and there just aren't enough of them, then you would probably want to focus your efforts on increasing the number of people who apply in the first place. But if only 2% of applicants seem appropriate to the company, then maybe focus should be put on changing *who* is applying for positions with an eye towards increasing the average quality of applicants.

Answering these questions will likely not, on its own, make it clear exactly where to focus your efforts. Your stakeholder may look at the fact that only 2% of applicants are appropriate and say "That's fine — we have so many applications that the *absolute number* of quality applicants is actually high enough, and it's easy to filter out the bad applicants." But these are numbers you can bring back to your stakeholder to discuss and use to zero in on the specific facet of their problem that is most amenable to an impactful solution.

Generating answers to these types of Exploratory Questions doesn't have the same "coolness factor" as using expensive GPUs to train deep learning models. But it is precisely this type of analysis that will help ensure that when if you *do* later run up a giant bill renting GPUs, at least that money will have been spent addressing a part of your stakeholder's problem that matters.

```{note}
The term *Exploratory Data Analysis* (EDA) is often used in statistics courses to describe the process of poking around in a new data set before fitting a more complicated statistical model. Answering Exploratory Questions will often use some of the same tools used for EDA, but "answering Exploratory Questions" is **not** synonymous with EDA.

As it is commonly used, EDA (as the name implies) is often focused on getting to know a piece of *data*. It entails learning what variables are in a dataset, how they are coded, and *sometimes* also looking at general patterns in a given dataset ([we will discuss the conceptual issues surrounding EDA in more detail in a later reading](../30_questions/07_eda.md).).

Answering Exploratory Questions, by contrast, will often be far more involved. Answering an important Exploratory Question may require you to actively seek out new datasets, merge data from different sources together, and maybe even do novel data collection.

Moreover, where EDA is often viewed as just a box to check on the road to model fitting, answering Exploratory Questions can often be an end goal in-and-of itself.
```

How do we answer Exploratory Questions? As we'll discuss in later chapters, at times Exploratory Questions can be answered with simple tools, like scatter plots, histograms, and the calculation of summary statistics like means and medians. Other times, however, it may require more sophisticated methods, like clustering or other unsupervised machine learning algorithms that can, say, identify "customer-types" in a large dataset of customer behavior.

Regardless of the tool used, however, the goal is always to identify patterns in the data that are salient to understanding your stakeholder's problem.

## Passive Prediction Questions

Answering Exploratory Questions helps you to prioritize your efforts and improve your understanding of your stakeholder's problem. Often you will even bring the answers you generate to Exploratory Questions back to your stakeholder and use them to refine your problem statement in an iterative loop. But what then? As all data science tools are fundamentally tools for answering questions, we return to asking "What question, if answered, would help solve my problem?"

Many problems can be solved if we can answer questions about the future outcomes or behaviors of *individual entities* (people, stocks, stores, etc.). This type of question may take the form "Given this new customer's behavior on my website, are they likely to spend a lot over the next year?" or "Given the symptoms of this patient and their test results, how likely are they to develop complications after surgery?" I term these questions about outcomes for individual entities *Passive Prediction Questions* as they are questions about what is likely to happen if we do not intervene in some way (i.e., if we remain passive).

Because Passive Prediction Questions are questions about individual entities, they don't necessarily have one "big" answer. Rather, Passive Prediction Questions are answered by fitting or training a model that can take the characteristics of an individual entity as inputs (e.g., this patient is age 67, has blood pressure of 160/90, and no history of heart disease) and spitting out an answer *for that individual* (given that, her probability of surgical complications is 82%).

This differentiates Passive Prediction Questions from Exploratory Questions. Being questions about general patterns in the world, Exploratory Questions will tend to have discrete answers. If a company gives you their hiring data, you can answer the question "What share of employees you try to hire end up accepting your offer?"

With Passive Prediction Questions, by contrast, the first question to ask is often one of feasibility: "Given data on new customer behavior on my website, **can I** predict how much they are likely to spend a lot over the next year?" But you then answer that question by training a model that can answer the question you really care about for any given customer: "Given this new customer's behavior on my website, are they likely to spend a lot over the next year?"

This ability to make predictions about future outcomes is obviously of tremendous use to stakeholders as it allows them to tailor their approach at the individual level. A hospital that can predict which patients are most likely to experience complications after surgery can allocate their follow-up care resources accordingly. A business that knows which customers are more likely to be big spenders can be sure that those customers are given priority by customer care specialists.

But the meaning of the term "Prediction" in Passive Prediction Questions extends beyond "predicting the future". Passive Prediction Questions also encompass efforts to predict how a third party *would* behave or interpret something about an individual if given the chance.

For example, suppose our hospital stakeholder wanted to automate the reading of mammograms, so rural hospitals without full-time radiologists could give patients diagnoses more quickly (or, more cynically, pay fewer radiologists).[^mammograms] We can think of this process of reading mammograms as answering the question "if a radiologist looked at this particular scan, would they conclude the patient had cancer?"

[^mammograms]: Mammograms are x-rays of breast tissue used for the detection of breast cancer.

The value of this type of prediction to stakeholders is likely also self-evident, as it opens the door for automation and scaling of tasks that would otherwise be too costly or difficult for humans. Indeed, answering this question is the type of task for which machine learning has become most famous. Spam filtering amounts to answering the question "If the user saw this email, would they tag it as spam?" Automated content moderation amounts to answering "Would a Meta contractor conclude the content of this photo violates Facebook's Community Guidelines?" Indeed, even Large Language Models (LLMs) like chatGPT, Bard, and LLaMA can be understood in this way, as we will discuss later.

```{note}
Thinking of training an algorithm to read a mammogram as "predicting how a radiologist *would* interpret the mammogram if given the chance" may seem a little strange, but this framing is both more accurate and more conceptually useful than other ways of thinking about these models. That's because many data science problems are solved using a practice called *supervised machine learning* in which a statistical model is "trained" using data that a human has already analyzed. Any real mammogram analyzing algorithm, for example,  is likely to be trained using examples of mammograms that human radiologists had reviewed and labeled as either containing suspicious abnormalities or not.

But a critical feature of this supervised machine learning approach is that the model is not actually being being taught to "find cancer" *per se*; it is being taught to emulate the behavior of the human radiologists who labelled the training data. Or, expressed differently, the model is being trained to answer the question "If one of the radiologist who labelled my training data looked at this scan, would they diagnose the patient with cancer?" 

This distinction is subtle, but it is important because it helps us to understand why any model we train in this way will inherit all of the biases and limitations of the radiologists who created the data used to train the algorithm. If, for example, our radiologists were less likely to see cancer in denser breast tissue, that bias would also be inherited by the algorithm.

(We call the inevitable existance of some difference between between what we *want* the algorithm to do — in this case, detect cancer — and *what it is actually being trained to do* — predict how a radiologist would interpret the scan — an "alignment problem.")
```

The big differentiator between Exploratory Questions and Passive Prediction Questions is that Exploratory Questions are questions about *general patterns* in the data, while Passive Prediction Questions are questions about *individual observations or entities*.

It is worth emphasizing that this is a distinction *in purpose*, not necessarily in the statistical tools that are most appropriate to the task. A linear regression, for example, may be used for answering either type of question, but in different ways. To answer an Exploratory Question, we might look at the coefficients in a linear regression to understand the partial correlations between variables in the data. To answer a Passive Prediction Question, we might only look at the predicted values from the regression model.

But even if the same *type* of model can be used for both purposes, how one *evaluates* the model depends entirely on the purpose to which it is being put. When answering an Exploratory Question through the interpretation of regression coefficients, the size of the standard errors on the coefficients is critical. When making predictions, by contrast, one may not care about the coefficients of a model at all! So long as the R-squared is high enough (and other diagnostics seem good), one can simply use the predicted values the regression generates without ever looking "inside the box."

As such, there's no simple mapping between statistical or machine learning methods and the type of questions you aim to answer. However, *in general*, Passive Prediction Questions are most commonly the domain of methods that fall under the label "supervised machine learning," which encompasses everything from linear regression to neural networks.

## Causal Questions

The word "passive" in "Passive Prediction Questions" is there because many data science problems entail predicting what outcomes would occur absent intervention. For example, when answering the question "Given their case history, how likely is this patient to experience post-surgical complications?" we don't actually want to know how likely they are to experience complications — we want to know how likely they would be to experience complications *if the status quo prevails and our behavior doesn't change.* Our hope, after all, is that by learning that a certain patient is likely to experience complications we can act to prevent that outcome!

Causal Questions, by contrast, are questions about predicting the *effect* of actions *we may choose to take*. Causal Questions arise when stakeholders want to do something — buy a Superbowl ad, change how the recommendation engine in their app works, authorize a new prescription drug — but they fear the action they are considering may be costly and not actually work. In these situations, stakeholders will often turn to a data scientist in the hope that the scientist can "de-risk" the stakeholder's decision by providing guidance on the likely effect of the action *before* the action is undertaken at full scale.

Causal Questions, therefore, take the form of "What is the effect of an action X on an outcome Y?"—or more usefully, "If I do X, how will Y change?". Nearly anything can take the place of X and Y in this formulation: X could be something small, like changing the design of a website, or something big, like giving a patient a new drug or changing a government regulation. Y, similarly, could be anything from "how long users stay on my website" or "how likely are users to buy something at my store" to "what is the probability that the patient survives".

In my view, Causal Questions are perhaps the hardest to answer for two reasons. The first is that when we ask a Causal Question, we are fundamentally interested in *comparing* what our outcome Y would be in two states of the world: the world where we do X, and the world where we don't do X. But as we only get to live in one universe, we can never perfectly know what the value of our outcome Y would be in *both* a world where we do X and one where we don't do X—a problem known as the **Fundamental Problem of Causal Inference** (causal inference is just what people call the study of how to answer Causal Questions).

But the second reason is Causal Questions land on the desk of data scientists when a stakeholder wants to know the likely consequences of an action *before they actually undertake the action at full scale.* This may seem obvious, but it bears repeating — not only is answering Causal Questions hard because we never get to measure outcomes in both a universe where our treatment occurs and also a universe where it does not (the Fundamental Problem of Causal Inference), but answering Causal Questions is *also* hard because stakeholders want to know about the likely consequences of an action they aren't ready to actually undertake!

As a result, the job of a data scientist who wants to answer a Causal Question is to design a study that not only measures the effect of a treatment but also does so in a setting that is enough like the context in which the stakeholder wants to act that any measured effect will generalize to the stakeholder's context.

## An Example

In this introductory chapter alone, we've already covered a substantial amount of material. We've discussed the importance of problem articulation, the idea that the way data scientists solve problems is by answering questions, and the three types of questions data scientists are likely to encounter.

It's easy to see how this framework might result in a sequential development of a project. First, a hospital comes to you concerned about the cost of surgical complications. So you:

1. Work with them to more clearly define the problem ("Surgical complications are extremely costly to the hospital and harm patients. We want to reduce these complications in the most cost-effective manner possible.")
2. You answer some Exploratory Questions ("Are all surgical complications equally costly, or are there some we should be most concerned about?").
3. You develop a model to answer a Passive Prediction Question ("Given data in patient charts, can we predict which patients are most likely to experience complications?") so the hospital can marshal its limited nursing resources more effectively.
4. The hospital then comes back to you to ask the Causal Question "Would a new program of post-discharge nurse home visits for patients identified as being at high risk of complications reduce complications?"

In reality, however, while it is important that some steps come before others (if you don't start by defining your problem, where do you even start?), real projects are never so linear. The reality is that you will constantly find yourself moving back and forth between different types of questions, using new insights gained from answering one question to refine your problem statement and articulate new questions.

Nevertheless, by using this framework as a starting point, and using this taxonomy to help you recognize (a) the type of question you are asking, and (b) the reason you are seeking to answer a given question even when iterating through a project, you will see tremendous gains in your ability to please your stakeholders by staying focused on the problems they need addressed.
