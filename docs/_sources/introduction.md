# Introduction to Data Science for Humans

Welcome to Data Science for Humans! 

The goal for this book is to ensure that, by the time you have finished, you will be able to do four things:

1. Understand how all the different activities referred to as Data Science relate to one another,
2. Think critically about how data science is being used in the world around you,
3. Manipulate data and answer the questions you care about *yourself*,
4. Evaluate the strengths and weaknesses of different data science tools. 

As this list suggests, the emphasis of this book is not on learning the nuances of a handful of algorithms, or learning abstract programming principles; rather, our focus in this text is on developing the skills necessary to think critically about the application of Data Science tools in the real world. To that end, in addition to empowering you to use a range of data science tools yourself to answer the questions you care about, we will spend as much time analyzing case studies of data science tools being used—both successfully and unsuccessfully—as learning new methods. It is our hope that, by the end of this book, we will have provided you with a unified perspective on the emerging field of Data Science, and empowered you to think critically about the promises and perils of this emerging field.



## What *is* Data Science?

What is data science?  If you ask ten people working in the field you will almost certainly get ten different descriptions of what it is and what they do.  In part, this is because of how many tasks are involved in "data science."  People working in data science perform a variety of tasks including: defining questions that need answering, collecting data, cleaning data, characterizing and visualizing data and relationships, identifying patterns, making predictions and classifications, and determining what causes what.  An easy definition that captures the full range of activities is elusive.

Perhaps a better way to think about what data science is would be to think about what it is not.  The opposite of science is perhaps art.  So what differentiates science from art?  Data art, if you will!  Art is personal and based on individual inspiration.  Each piece is unique and non-replicable.  The meaning of a piece is personal and can vary between artist and audience.  Ambiguity is welcomed and processes are idiosyncratic.  

Science, on the other hand, is intentionally impersonal.  The process and results should be clear and replicable.  The process and meaning should be accessible to all and different scientists should produce the same outcome.

Stepping back, data science is about a way of answering questions using data in ways that are clear and replicable.  While the results may sometimes be "messy" and unclear – the world is complicated! – the methods and processes being used should never be.  

### What Should Data Science Be?

At it's heart, data science involves a systematic way of working with data in ways that promote clarity and understanding.  We cannot control the results of what we do, but we can control how we go about doing it.

More specifically, this book takes the perspective that Data Science is best understood as **the practice of *answering questions* about the world using computational methods.** You will notice that in this definition, we put the "answering questions" part of our definition first to emphasize its importance. While it is true that for many people "Data Science" is synonymous with terms like *machine learning* or *cloud computing*, we believe that it is more fruitful to approach Data Science by focusing on the different things that Data Scientists seek to accomplish—their goals—than on the specific tools that they use.

This may strike some readers as... odd. If you came to this book because you wanted to create the next Artificial Intelligence / Machine Learning Model to make video recommendations that could outperform TikTok, you may wonder how that would constitute "answering a question about the world." But as we will discuss in detail, nearly all data science methods can be thought of—and indeed, we would argue are *best* thought of—as tools for answering questions. The TikTok recommendation algorithm, for example, is an algorithm designed to answer the question "given how this user has responded to past videos, what video can I show them next that they are most likely to watch for the longest period of time?"

Why do we focus on the objectives of data scientists rather than their tools? First, and most practically, the specific tools the data scientists use are changing at an unbelievable speed. As a result, any education in data science that overemphasizes a specific set of methods is doomed to become obsolete quickly. The *goals* of data scientists, by contrast, are much more fundamental, and learning to think in terms of how different data science tools may serve different objectives will provide you with a more resilient conceptual framework not just to help you understand today's data science tools, but also to provide you with a framework for thinking about new tools as they emerge.

Second, and more importantly, the success of a data scientist will always be evaluated with respect to their original goals. And as we will see from innumerable case studies, *so many* of the failures of data science in the real world come it not from some technical failure to use a statistical model correctly, but from people grabbing a trendy tool without really understanding whether it is serving the purpose to which it is being applied.

### What Is "Data Science" Today?

- Academia is organized into silos
- Over the last decade lots of computational tools have been developed in relative isolation in each of the silos, often leading to duplication of effort / the same tools being rediscovered but with different names.
- Data Science is, in many ways, an attempt to integration lessons from different silos!
- But it's still a work in progress, and most Data Scientists in the field were trained in a silo, and so tend to have a tendency to see things from one perspective. 
    - Blind men and the elephant. CS loves prediction; Stats loves modeling uncertainly; social scientists love causal inference; etc.
    - So be aware YOU may have better perspective on data science than many of your senior colleagues!

## Types of Questions

In particular, in this book we take the view that nearly all Data Science problems can be thought of as efforts to answer one of three types of questions: descriptive or exploratory questions, passive-prediction questions, or causal questions. 

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

