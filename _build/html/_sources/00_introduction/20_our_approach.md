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
