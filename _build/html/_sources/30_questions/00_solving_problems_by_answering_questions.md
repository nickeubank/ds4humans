# Idea 2: Solving Problems by Answering Questions

The second big idea of the book is that **data scientists solve problems by answering questions about the world.** Given that, we can reframe the challenge of a data scientist from the more amorphous task of "figuring out how to solve the problem" to the more concrete "what question, if answered, would make it easier to solve this problem?"

Moreover, once we've articulated a question to answer, we can turn to choosing the best tool for generating an answer to that specific type of question. And it is only at this stage—not at the beginning!—that we start thinking about what statistical method, algorithm, or model is most appropriate.

This idea emerges from the fact that all data science tools, at their core, are tools for answering questions about the world, and that understanding data science tools through the lens of "what question is this tool answering?" is extremely powerful.

In the case of some tools — such as clustering algorithms and other unsupervised machine learning methods — this idea is relatively uncontroversial. A clustering algorithm answers some form of the question "if I wanted to partition the observations in this data to maximize the similarity of points within each cluster (in terms of a specified set of variables and a similarity metric) and minimize similarity between clusters, how would I do so?"

In other contexts — like supervised machine learning — this perspective may seem less relevant (or even just pedantic). But let's take the example of a supervised machine learning algorithm designed to classify mammograms as normal or abnormal, trained on data labelled by radiologists at a Boston hospital, an example I use in the book. What question is this model answering? It is *not* answering the question, for any input mammogram, "Is this mammogram normal or abnormal?" Rather, in a very real sense, it is answering the question "if this mammogram were shown to one of the Boston radiologists, how would they label the training data, how likely are *they* to label the mammogram as normal or abnormal?" And while we hope the answers to those questions are similar, being explicit about the distinction clarifies how human biases and tendencies are replicated in our models.

## Idea 3: Types of Questions

Which brings us to the third big idea of this book: **The questions data scientists answer can be divided into three categories: Descriptive, Passive Predictive, and Causal.** Each of these question types serves a different purpose in solving problems, and the type of question you are seeking to answer bears on what tools you should use and what constitutes a successful answer. The remainder of this chapter provides an introduction to each of these question types and the purposes they serve before we take up each in detail in the chapters that follow.

**Descriptive Questions** are questions about patterns and regularities in the world around us. Answering Descriptive Questions helps data scientists better understand the landscape of the problem they wish to solve — for example, by helping them understand where the problem is most acute, or what factors seem most strongly correlated with problem intensity — and often aid in prioritizing subsequent efforts.

Answering Descriptive Questions is largely the domain of statistical inference and unsupervised machine learning. However, as I emphasize to students, many of the tools and approaches to data science we encounter are artifacts of how university departments are organized, and our substantive goals as data scientists will not always follow the lines we draw between computer science, statistics, and social science departments.

Answering Descriptive Questions is **not** synonymous with "Exploratory Data Analysis" (EDA). As commonly understood and practiced by students, EDA refers to the process of poking around in a new data set before fitting a more complex statistical model. It entails learning which variables are present, how they are coded, and *sometimes* examining general patterns in the data prior to model fitting. Crucially, it is generally defined by what it is *not* — it is what you do *before* you fit a complicated model — and by the tools used — EDA consists of plotting distributions or cross-tabulations, not fitting models or doing more sophisticated analyses.

Answering Descriptive Questions, by contrast, is about achieving a substantive goal — learning about patterns *in the world* — not the tools used to do it, or what comes before. Answering an important Descriptive Question may require you to actively seek out new data, merge data from different sources, and potentially conduct novel data collection. It may also entail model fitting or the use of unsupervised machine learning algorithms to uncover latent patterns.

Indeed, the book allocates a [full sub-chapter](https://ds4humans.com/30_questions/07_eda.html) to a discussion of the conceptual problems with how the term EDA is commonly used.

**Passive Prediction Questions** are questions about the unobserved outcomes of individual entities (people, stocks, stores, etc.). Because Passive Prediction Questions concern individual entities, they don't necessarily have a single "big" answer. Rather, Passive Prediction Questions are answered by fitting or training a model that can take the characteristics of an individual entity as inputs (e.g., this patient is age 67, has blood pressure of 160/90, and no history of heart disease) and spitting out an answer *for that individual* (given that, her probability of surgical complications is 82%). This differentiates Passive Prediction Questions from Descriptive Questions, which concern global patterns rather than individual-level predictions.

Passive Prediction Questions are usually deployed for one of two business purposes:

1) identifying individual entities of particular interest (high-risk patients, high-value clients, factory machinery in need of preventative maintenance, etc.), and
2) automating classification or labeling tasks currently performed by people (reading mammograms, reviewing job applicant resumes, identifying internet posts that violate terms of use).

In general, these two business purposes correspond to the two types of "predictions" being made. Identifying individual entities of particular interest is generally accomplished by making predictions about the likely future outcomes absent intervention. "Given this new customer's behavior on my website, are they likely to spend a lot over the next year?"

This ability to predict future outcomes is obviously of tremendous use to stakeholders, as it allows them to tailor their approach at the individual level. A hospital that can predict which patients are most likely to experience complications after surgery can allocate their follow-up care resources accordingly. A business that knows which customers are more likely to be big spenders can be sure that those customers are given priority by customer care specialists.

But the meaning of the term "Prediction" in Passive Prediction Questions extends beyond "predicting the future". Passive Prediction Questions also encompass efforts to predict how a third party *would* behave or interpret something about an individual if given the chance. Here we can return to the example of an ML model for reading mammograms. Suppose a hospital stakeholder wanted to automate the reading of mammograms so that rural hospitals without full-time radiologists could give patients diagnoses more quickly (or, more cynically, pay fewer radiologists).

They could train a model by feeding it a dataset of mammograms labelled by human radiologists. That model would then effectively be answering the question: "If a radiologist looked at this particular scan, would they conclude it is abnormal?"

The value of this type of prediction to stakeholders is likely self-evident, as it opens the door to automating and scaling tasks that would otherwise be too costly or difficult for humans. Indeed, answering this question is the type of task for which machine learning has become most famous. Spam filtering amounts to answering the question "If the user saw this email, would they tag it as spam?" Automated content moderation amounts to answering "Would a Meta contractor conclude the content of this photo violates Facebook's Community Guidelines?" Indeed, even Large Language Models (LLMs) like chatGPT, Gemini, and LLaMA can be understood in this way, as we will discuss later.

Again, this framing of what supervised machine learning models do as answering this type of question may feel slightly pedantic to some readers, but in my experience, it helps students understand how these types of models inherit the limitations of their training data, and open the door to discussion of issues of misalignment, which I also address.

Finally, **Causal Questions** are questions about the likely consequences of actions for the stakeholder. Causal Questions arise when stakeholders want to *do* something — buy a Superbowl ad, change how the recommendation engine in their app works, authorize a new prescription drug — but they fear the action they are considering may be costly and not actually work. In these situations, stakeholders will often turn to a data scientist in the hope that the scientist can provide greater certainty about the likely consequences of different courses of action before the stakeholder is forced to act at scale. This, in turn, helps reduce the risk the stakeholder bears when making their decision — something all stakeholders appreciate.

By emphasizing that Causal Questions in an applied data scientist's career are generally motivated by a desire to understand an action the stakeholder is considering taking, this book is able to discuss concepts of external validity much more concretely than in many other texts on causal inference which — in my experience — tend to be motivated by social science questions in which there is no clear, specific intervention in mind for which external validity becomes a first-order concern.

## An Example

Armed with the lessons you have learned about problem articulation and an overview of this question taxonomy, it is not difficult to see how one might deploy all of these tools in the service of solving a real problem. To illustrate, suppose you are approached by a hospital concerned about the cost of surgical complications.

You might:

1. Work with them to more clearly define the problem ("Surgical complications are extremely costly to the hospital and harm patients. We want to reduce these complications in the most cost-effective manner possible.")
2. You answer some Descriptive Questions ("Are all surgical complications equally costly, or are there some we should be most concerned about?").
3. You develop a model to answer a Passive Prediction Question ("Given data in patient charts, can we predict which patients are most likely to experience complications?") so the hospital can marshal its limited nursing resources more effectively.
4. The hospital then comes back to you to ask the Causal Question: "Would a new program of post-discharge nurse home visits for patients identified as being at high risk of complications reduce complications?"

In reality, while it is important that some steps come before others (if you don't start by defining your problem, where do you even start?), real projects are rarely so linear. In practice, you will constantly find yourself moving back and forth between different types of questions, using new insights gained from answering one question to refine your problem statement and articulate new questions.

Nevertheless, by using this framework as a starting point, and using this taxonomy to help you recognize (a) the type of question you are asking, and (b) the reason you are seeking to answer a given question even when iterating through a project, you will see tremendous gains in your ability to please your stakeholders by staying focused on the problems they need addressed.
