# EDA: The Most Pernicious Term in Data Science

After finishing the last section on Descriptive Questions, some readers may be rolling their eyes thinking "yeah, yeah, EDA [Exploratory Data Analysis]. I learned about EDA in my first stats class. When do we get to the good stuff?"

If that's you, or if you just don't feel clear on the distinction between answering Descriptive Questions and "Exploratory Data Analysis," commonly referred to by the acronym "EDA," this section is for you.

In my view, and that of many of my colleagues, the practice commonly referred to as "EDA" and students understanding of its role in problem-solving is one of the greatest failures in data science education. 

The problem with the term EDA is that, if you asked most data scientists what it means, they probably couldn't actually give you a straight answer. If you pressed them further, they would probably say something like "exploring your data before you start fitting your models."

While the idea that data scientists should "get to know their data" before fitting a model is well-meaning (you *absolutely* should!), the ubiquitous but uncritical use of the term has given young data scientists the sense that the undirected poking at data is worthy of a capitalized three world title, complete with a universally recognized acronym.

This is problematic because *any* activity that involves data but lacks a clear motivation is doomed to be unending and unproductive. Data science has emerged precisely because our datasets are far too complex for us to understand directly; indeed, I would argue that the job of a data scientist can be summed up, in part, as a person who identifies **meaningful** patterns in our data and makes them comprehensible.

But therein lies the problem — without a clear motivation for *why* the data scientist is poking at their data, what makes a pattern meaningful is undefined. And without a clear purpose from which a concept of meaningfulness can be derived, there is no end to the ways one can slice and dice the data with no way of knowing when to stop or what is useful.

I would argue that what most people call Exploratory Data Analysis (EDA) can actually be decomposed into three activities.

The first activity people call EDA is what I call "learning the structure of your *dataset*" (emphasis on learning about your *dataset*, not using your data to learn about the world). This consists of answering questions about your dataset like "what constitutes a single observation in this dataset?," "what variables are included in this dataset?," "how many observations are there?," "how are variables coded?," and "what population is represented in this data?" These are questions about *the specific dataset* you are working with, *not* the real world, and answers are likely to be found in the dataset documentation and through basic tools for data introspection.[^pandas]

[^pandas]: In `pandas`, this would be things like `df.columns` to see what variables are in the data, `df.info()` to get a sense of how data is being represented and the number of rows, and simple tools for tabulating unique values like `df["first column"].value_counts()`.

The second activity that often falls under the label EDA is what I call "*validating* your dataset." It's a poor data scientist who takes the validity of their data on blind faith, so when faced with a new dataset, one should begin with a few "sanity checks" just to make sure things look reasonable. Does the number of observations seem reasonable given what you know about how the data was collected and who is supposed to be represented in the data? If there are date variables in the data, does their range match what should be in this data? And given the specifics of the data, does the range of variables make sense? For example, if you have data on registered voters 18 and over, you should probably check that the age variable has a minimum value of 18 and a maximum value of something sensible (e.g., not 225).

The third and final activity people call EDA is... everything one does with the data before they fit a statistical or machine learning model. This is the second major reason that I feel the very concept of EDA has had a pernicious influence on data science — it implicitly devalues anything done with data that doesn't entail a complicated model as "lesser" or "just a stop on the way towards the "real" analysis," when nothing could be further from the truth.

This type of data analysis — looking at summary statistics, calculating distributions of variables, computing tabulations and cross-tabulations of different things to improve one's understanding of the world — is categorically different from "learning the structure of your data," because it is inquiry in the service of better understanding the world, not the structure of your dataset. But it is *not* categorically different analyzing data using statistical models, not just because in many cases generating cross-tabulations or calculating group averages are essentially equivalent to using a statistical method like linear regression, but also because they are both examples of the same enterprise: attempting to answer questions about the world using data in the service of solving problems.

And just as one cannot properly fit or tune a model without a clear sense of the question one is seeking to answer and how that answer is meant to be used, nor can one know what cross-tabulations to compute without having a sense of purpose to make clear what constitutes "meaningfulness."

```{note}
"But I do EDA all the time without a clear question!" I hear you cry. "Sometimes I just want to see what patterns there are in the data." 

To you I say: you may not have realized you had questions in mind, but most of your data explorations have been *implicitly* motivated by a sense of questions you thought might relate to your stakeholder's problem. 

Perhaps you were looking at a store's retail sales data and decided to see how sales volumes varied by customer age or gender. That may not seem obviously question-motivated, but I put it to you that you had in mind that those are customer demographics to which the store could target advertising or product stocking decisions. And had someone suggested "why don't you look at how sales volumes vary by customer birth month or whether their name starts with a letter in the first half of the alphabet," you would have looked at them funny and said "why on Earth would I do that?"

But the problem with approaching your data with *implicit* motivations is that (a) it's hard to reflect on them or evaluate whether they rest on solid assumptions about the stakeholder problem, and (b) without an explicit goal, there's no way to know when you've reached your destination, making it *really*  easy to get lost in the data.
```

## Am I Just Being a Curmudgeon?

No — this is a view held by many people who work with data. Not only is it a common (informal) complaint among colleagues, but others have also written on the topic in different forms. In a [wonderful Medium post](https://medium.com/@eytanadar/banning-exploration-in-my-infovis-class-9578676a4705), for example, Eytan Adar discusses his decision to ban his students from using the term EDA entirely:

> I got to have lunch with John Tukey many years ago. We talked about birding. I wish we talked about "Exploratory Data Analysis." For all the clever names he created for things (software, bit, cepstrum, quefrency) what's up with EDA? The name is fundamentally problematic because it's ambiguous. "Explore" can be both transitive (to seek something) and intransitive (to wander, seeking nothing in particular). Tukey's book seems to emphasize the former [...]. The problem is that students think he meant the latter.
> 
> Somehow that term has given students, and some professionals, the license to be totally imprecise about what they were building, and (more critically) how to evaluate whether it worked. If you're not seeking anything in particular, any tool that lets you meander through data is perfectly reasonable. It makes the job of deriving insight completely the responsibility of the end-user. In that world, any decision is a reasonable one, evaluation is unnecessary, and there is no grade but an A. But that's not the real world and so I've banned "explore." 
>
> Exploration is too unbounded in the context of building a tool. We need to be able to decide when exploration terminates. Forcing students to tell me what they want the end-user to find and/or what decisions they want to enable has led to better projects. 

Obviously in this book I've endorsed the term "Exploratory" as an adjective, rather than a verb — in my few, once you've articulated a concrete Exploratory Question, I think it *does* help motivate subsequent 

[Nathan Yau](https://flowingdata.com/2017/04/28/data-exploration-banned/) makes a similar point about EDA data visualizations: 

> Data exploration with visualization is good, but when someone describes their project as an exploration tool, it often means it lacks focus or direction. Instead it looks like generic graphs that don't answer anything particular and leave all interpretation to the reader.


## Recap

Despite its ubiquity, few data scientists could actually tell you what constitutes Exploratory Data Analysis (EDA). Moreover, some of what people might call EDA in practice — answering questions about the world without complex modeling — should not be called EDA, but rather... well, that's just data science.

So in this book, we will acknowledge the important (but distinct!) goal of two purposeful activities often called EDA:

- Learning the structure of your dataset (what constitutes a unit of observation, what variables are in the dataset),
- Validating your dataset (does the data pass the sniff test? Does it exhibit the basic properties you would expect given what it claims to be?)

But I will *not* use the term EDA itself, and when I differentiate between data science enterprises, I will do so by emphasizing differences in the *end goals* of those activities (answering Descriptive Questions, Passive-Prediction Questions, or Causal Questions), not the methods used to achieve those ends.
