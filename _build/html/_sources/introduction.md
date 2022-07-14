# Introduction to Data Science for Humans

Welcome to Data Science for Humans! 

The goal for this book is to ensure that, by the time you have finished, you will be able to do four things:

1. Understand how all the different activities referred to as Data Science relate to one another,
2. Think critically about how data science is being used in the world around you,
3. Manipulate data and answer the questions you care about *yourself*,
4. Evaluate the strengths and weaknesses of different data science tools. 

As this list suggests, the emphasis of this book is not on learning the nuances of a handful of algorithms, or learning abstract programming principles; rather, our focus in this text is on developing the skills necessary to think critically about the application of Data Science tools in the real world. To that end, in addition to empowering you to use a range of data science tools yourself to answer the questions you care about, we will spend as much time analyzing case studies of data science tools being used—both successfully and unsuccessfully—as learning new methods. It is our hope that, by the end of this book, we will have provided you with a unified perspective on the emerging field of Data Science, and empowered you to think critically about the promises and perils of this emerging field.

## What *is* Data Science?

The question of what Data Science is actually a surprisingly tricky question, and one that can be interpreted in two ways: what *should* data science be, and what is the field today.

### What Should Data Science Be?

This book takes the perspective that Data Science is best understood as **the practice of *answering questions* about the world using computational methods.** You will notice that in this definition, we put the "answering questions" part of our definition first to emphasize its importance. While it is true that for many people "Data Science" is synonymous with terms like *machine learning* or *cloud computing*, we believe that it is more fruitful to approach Data Science by focusing on the different things that Data Scientists seek to accomplish—their goals—than on the specific tools that they use.

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

In particular, in this book we take the view that nearly all Data Science problems can be thought of as efforts to answer one of three types of questions: descriptive or exploratory questions, classification questions, or causal questions. 


### Descriptive / Exploratory Questions

Imagine you woke up one morning and found yourself in the middle of the forest. You don't know where you are or how you got there. What's the first thing that you would do (after pinching yourself)? You would probably look around and explore your surroundings to figure out where you are and what's around you so can plan your next steps.

Well, the same often make sense when you're starting a new project!


```{note}
The term *Exploratory Data Analysis* (EDA) is often used in statistics courses to describe the process of poking around in a new data set that you have been given before you fit a more complicated statistical model. While many of the tools that you may use to do that type of poking around are the same tools that you would use to answer more sophisticated Descriptive Questions, when we talk about answering Descriptive Questions in this book, we are generally talking about a much more involved process—one that often requires locating or bringing together new data sources—then this type of "data checking."
```

### Classification Questions


### Causal Questions

