# About that title...Data Science for Humans?!?

On the one hand, our title is ridiculous.  Of course our book is written for humans given that we are the only species capable of doing Data Science (on this planet?).  Despite our curiosity as to what it may contain, *Data Science for Cats* would not make much sense.

But our title is intentional as it highlights that when doing Data Science it is important to distinguish how we use data from how computers are able to use information.  Computers are exceptional pattern-finders and maximizers.  Given a dataset, computers are able to find complex relationships through brute-force computing that well exceeds human capabilities.  The ability to process and consider so many relationships also allows computers to maximize (or minimize) complex optimization problems for difficult situations (e.g., when calculus cannot be used to solve for the optimal solution).  

But computers are limited.  They are completely dependent on the data that is given to them -- i.e., what data is collected and missing, how important quantities are measured -- and while they can find patterns and optimize using the data they are given, they lack the ability to evaluate the meaning and importance of what they may find.

Humans, on the other hand, are defined by their curiosity.  Questions drive us and are often central to what we do.  What is going on in the world around us, and why?  While we can be faulted by reaching too quickly for answers to the *what* and *why* -- perhaps given that our brain seems wired to do so as we quickly reach for generalizations and assertions about the world even when our ability to evaluate the claims are limited -- human curiosity is a defining and important feature that Data Science complements.

In addition to being question-driven -- by which we mean to have inquiries and analyses following from pre-defined questions rather than using pattern-recognition processes find relationships which are then used to generate questions -- two other traits are critical for our approach.  A second is fallibility.  We make mistakes.  Lots of them.  And the consequences can be tremendously impactful not only for ourselves, but also for others.  

In answering questions it is important to always think about the uncertainty that we may have about our answers.  How confident should we be in our answer?  What assumptions did we have to make in getting our answer and how might our results change?  Developing our question-solving skills in Data Science with an forward-looking appreciation for quantifying our uncertainty as best we can is essential for placing our results in context.  Our data (and methods) are rarely perfect and it is critical that we help quantity -- as best we can -- how robust and sensitive our answers may be.

A final human trait is that we are social creatures.  It is not enough to answer a question for ourselves.  We also want to communicate our findings to others.  This implicates considerations both when conducting Data Science and also for reporting the results from Data Science.

When conducting Data Science we want to be mindful of the importance of replication and clarity and do our analyses in ways that minimize errors.  Science, by definition, is based on replication by others and the idea that others should be able to exactly replicate our processes to get the same results.  Art, on the other hand, is more personality driven -- what matters is the product rather than the process.  We are doing Data Science, not Data Art and a guiding principle is to make our analyses as easy to follow as possible and to minimize the potential for user-induced error by using defensive-based programming approaches and file management.

It is not enough to obtain (a replicable) result, however.  We must also communicate that result to others -- including those who may not be aware of the precise details and complexities of the analyses -- in ways that are not deceptive or misleading.  In Data Science we are sometimes, if not often, trying to solve a question that was given by someone else (e.g., a CEO) and it is incumbent on us to communicate our results as cleanly as possible in ways that minimize the potential for misinterpretation.  Data Science is increasingly being used to describe important conditions and the characterizations are often consumed by non-experts -- think, for example, of analyses of the incidence of COVID-19 during the pandemic or the results of public opinion polls -- and it is essential that we think about our audience when communicating those results.  Visualization is often essential here.

Pulling these thoughts together then, a human-centered Data Science takes account of three aspects of the human condition: 1) being question-driven, 2) accounting for our uncertainty/faliability, 3) ensuring our analyses and findings can be understood by others.     



# Solving Problems with Data Science

## Defining the Problem

Gotta start here, yo!

## What Question, If Answered, Would Help Solve Our Problem?

that's the next step!

## Types of Questions, And How To Answer Them

In this book we take the view that nearly all Data Science tools can be thought of as efforts to answer one of three types of questions: descriptive or exploratory questions, passive-prediction questions, or causal questions. 

### Descriptive / Exploratory Questions

Imagine you woke up one morning and found yourself in the middle of the forest. You don't know where you are or how you got there. What's the first thing that you would do (after pinching yourself)? You would probably look around and explore your surroundings to figure out where you are and what's around you so can plan your next steps.

Well, the same often makes sense when you're starting a new project—the first thing you want to do is better understand the world to aid in prioritization of your efforts.

For example, suppose you are interested in developing machine learning algorithms they could be used to improve the energy efficiency of buildings. Before you run off and try to start training a neural network, the first thing you might want to do is figure out what *type* of buildings are actually using the most energy so you can think about where you can have the most impact—is more CO2 being generated by air conditioning office buildings in hot climates, or heating office buildings in cold climates? And if you're hoping to run a business, you might also want to know about the relative costs of electricity and different parts of the country, since you're more likely to find customers in places where energy costs are high.

Generating answers to questions like this may not seem as trendy as using expensive GPUs to train deep learning models, but it is the type of exploratory data analysis that will help ensure that your subsequent efforts are well-directed.

Answering these types of descriptive questions generally takes the form of (a) finding data sets on the subjects you care about, and then (b) working to identify **meaningful** patterns in the data.

```{note}
The term *Exploratory Data Analysis* (EDA) is often used in statistics courses to describe the process of poking around in a new data set that you have been given before you fit a more complicated statistical model. While many of the tools that you may use to do that type of poking around are the same tools that you would use to answer more sophisticated Descriptive Questions, when we talk about answering Descriptive Questions in this book, we are generally talking about a much more involved process—one that often requires locating or bringing together new data sources—then this type of "data checking."
```

### Passive Prediction Questions

Answering descriptive questions generally serves the purpose of helping the data scientist prioritize their efforts, but once they have zeroed in on a specific problem they want to address, many data science projects take the form of answering "passive prediction" questions.

What we mean by passive prediction questions? These are questions like "given this new customer's behavior when they arrive on my website, are they likely to spend a lot with my business?," or "given the symptoms of this patient and their test results, how likely are they to develop complications after surgery?" In other words, we're hoping to *predict* something about individuals we can't immediately observe. 

The "passive" in passive prediction emphasizes that these are questions about predicting what is likely to happen if we don't change our own behavior. As we will discuss below, understanding the effect of changes we deliberately introduce in the world—for example, by changing a government policy, or re-designing our website—requires a different set of tools. 

Not all passive prediction questions are about events in the future; some passive prediction questions are about predicting how a third party *would* classify data if given the chance. For example, suppose we wanted to use data science to look at mammograms and tell us which scans showed cancer—one way to think about this is that we want to answer the question "if a radiologist looked at this scan, would they think the patient had cancer?" Or if we wanted to use data science to review job applicants resumés to determine who a company should hire, we could think of what we're doing as answering the question "if a hiring manager looked at this resumé, would they want to interview this candidate?" 

This may seem a slightly odd way to think about these types of problems, but as we'll discuss later, this way of framing data science problems it can be very powerful, in large part because it is a more accurate description of what many data science models are actually doing. That's because many data science problems are solved using a practice called *supervised machine learning* in which a statistical model is "trained" using data that a human has already analyzed. The statistical model is then designed to try to emulate the behavior of the humans that analyzed the training data when it sees new data. So, for example, we might train an algorithm to detect cancer in mammograms by first asking a radiologist to look at dozens of mammograms and then write down whether they think the mammogram show evidence of cancer. We could then give this pre-analyzed ("labeled") training data to an algorithm that will then try to emulate the behavior of the radiologist. If successful, we would end up with an algorithm that looks like it is "detecting cancer," but what it is really trying to do is answer the question "if a radiologist looked at the scan, would they diagnose the patient with cancer." This distinction is subtle, but it is important, because it helps us to understand that any algorithm that we create through this type of process will inherent all of the biases and limitations of the radiologists who created the data used to train the algorithm.

### Causal Questions

The final type of question regularly faced by data scientists is perhaps the hardest to answer: causal questions. 

Learning to answer the previous two classes of questions can take a data scientist a long way in life—learning to answer descriptive questions will ensure you prioritize your efforts when wrestling with new problems, and the value of passive-prediction to automate a huge number of analysis tasks is self-evident. But often in life we want to go beyond *characterizing* the world around us; we want to *act* to change the world. But before we *manipulate* the world around us—by launching an advertising campaign, or a new government program—we often want to get some sense of the likely *effect* our actions will *cause*. And that is the domain of causal questions.

