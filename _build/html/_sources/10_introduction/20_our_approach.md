# Solving Problems with Data: An Overview

The remainder of this introductory section contains an overview of the concepts and approach of the book. All concepts discussed here will also be covered in greater detail in future readings. To help readers understand those more detailed readings in their proper context, however, it is important you first get an overall sense of the approach to data science being advocated in this book.

## Specifying the Problem

The first step in solving any problem is *always* to carefully specify the problem. While this may seem trivial, properly articulating the core problem one seeks to address can be remarkably difficult. Moreover, because everything you will do *after* articulating your problem is premised on having correctly specified your objective, it is *the* greatest determinant of the success of your project. The most sophisticated, efficiently executed, high precision, high recall model in the world isn't worth a lick of good if the results it generates don't solve the problem you or your stakeholder need solved.

Specifying your problem not only ensures that your subsequent efforts are properly directed, but it can also radically simplify your task. Many times problems only *appear* difficult because of how they are presented. As Charles Kettering, Head of Research at General Motors from 1920 to 1947 once said, "A problem well stated is a problem half solved."

How do you know if you've "clearly articulated the problem," and how should you go about refining your problem statement with your stakeholder? Those are topics we will discuss in detail in the coming chapters, as well as strategies for using data to help inform this process through iterative refinement of your understanding of the contours of the problem space.

```{note}
Throughout this book, I will frequently use the term "stakeholder" to refer to the person whose problem that you, the data scientist, is seeking to address. I use this term because, as a young data scientist, you will often be in the position of having to use your data science skills to help someone else. Thus your stakeholder may be your manager, your CEO, or someone at another company you are advising.

However, if you're lucky enough to *not* be directly answerable to someone else, either because you work for yourself or because you're in a field that gives you substantial autonomy like academia, you can simply think of your "stakeholder" as yourself.

If you're interested in developing a consumer-facing product (e.g., you're an independing developer whose thinking of creating a new data-science-based web app), you may also find it useful to think of your customer of the stakeholder, since very few products are successful if they don't solve a problem customers face. 
```

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
