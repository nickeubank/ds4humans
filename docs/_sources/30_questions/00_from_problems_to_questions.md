# From Problems to Questions

> A Problem Well Stated is a Problem Half Solved

Charles Kettering
Head of Research at General Motors
1920 to 1947

> Deep Thought is a computer that was created by a pan-dimensional, hyper-intelligent species of beings (whose three-dimensional protrusions into our universe are ordinary white mice) to come up with the Answer to The Ultimate Question of Life, the Universe, and Everything. Deep Thought is the size of a small city. When, after seven and a half million years of calculation, the answer finally turns out to be 42, Deep Thought admonishes Loonquawl and Phouchg (the receivers of the Ultimate Answer) that "[she] checked it very thoroughly, and that quite definitely is the answer. I think the problem, to be quite honest with you is that you've never actually known what the question was."

Hitchhikers Guide to the Galaxy
[wikipedia paraphrase—need to find full quote]

notes to us:

- Hitchhikers Guide to the Galaxy: what is the question that gives the answer you find?
- Need to be question driven!!
- “Answers” are easy.  Good questions are hard!
- “Gender” gap (or “Racial” gap)?
- What are we measuring? Why? How?  What does it mean?  What is the data?
- Demographics are not causal!
- The hardest issues are often not statistical or programming, they are critical thinking!!

As a data scientist, it will probably be the case that the people you work with will not come to you with well-formed research questions they want investigated. Instead, it is much more likely they will come to you with a problem they are facing, and in some cases a poorly formed idea of how they think you can solve their problem using data science (a solution that will almost certain invoke the magic of "machine learning").

When this happens, it is your job to do two things:

1. Figure out the _real_ core problem/need of the stakeholder,
2. Determine what questions, if answered, would help you address that problem.

As a young data scientist, you will often be in the position of having to use your data science skills to help someone else. In this book, we will refer to any third-party you are helping as your "stakeholder." This may be your manager, your CEO, or someone at another company you are advising.[^workingforyourself] And it will nearly always be the case that your job as a data scientist will be to solve a problem for your stakeholder.

[^workingforyourself]: If you're lucky enough to be in the position where you _aren't_ directly answerable to someone else, either because you work for yourself or because you're in a field that gives you substantial autonomy like academia, just think of your "stakeholder" as yourself.

While this may seem obvious, there's a catch: your stakeholder will almost never come to you with well-formed research questions they want to be investigated. Instead, it is much more likely they will come to you with a vague conception of a problem they are facing and a poorly formed idea of how they think you can solve their problem using data science (a solution that will almost certainly invoke the magic of "machine learning").

When this happens, it is _your job_ to work with your stakeholder to identify the problem your stakeholder actually needs addressed.

"Wait, what?" you may say. "Isn't it the job of my stakeholder to figure out what they need?" Yes, but... no.

At the end of the day, always remember that you will be evaluated on whether you have made your stakeholder's life better, not on the complexity of your algorithms or whether your data visualizations are aesthetically pleasing. And the only way you can make the stakeholder's life better is to successfully identify and solve a problem for them.

## Positive versus Normative Questions

Before we dive into each of these types of questions, it is worth pausing to emphasize that this is a taxonomy of questions about how the world _is_, not about how world _should be_. That's because while data science is an amazing tool for telling us about the state of the world, it _cannot_, on its own, answer _should_ questions. That is because answering _should_ questions requires evaluating the desirability of different possible outcomes, and that can only be done using on the basis of a system of values. Data science may tell us the _consequences_ of different courses of action, but it cannot tell us whether those consequences make a given course of action worthwhile.

To illustrate, suppose you are interested in reducing opioid overdoses. Your rigorous data science analysis may tell you that increasing the regulation of opioid prescriptions will reduce overdoses by some amount X and reduce access to opioids for those with chronic pain by some amount Y. But does that mean you should enact the policy? Well, that depends on how much _value_ you place on patients with chronic pain having access to opioids, and how much _value_ you place on preventing overdoses. And the answers to those questions simply can't come from your data.

In this course, we will refer to questions about how the world _is_ as "positive questions", and questions about how the world _should be_ as normative questions. But be aware these terms aren't universal. Some people use the term "descriptive" instead of positive, and "proscriptive" instead of normative. Since we are using the term "descriptive" for a different purpose in this class, I will use normative and positive throughout this course to avoid confusion.

## What's The _Real_ Problem / Need

You might think that the on thing that the stakeholder knows best is nature of their problem. But one thing you will quickly find is that stakeholders will very often mis-identify or mis-represent their true problem / need.

For example, suppose you are approached by a real estate group interested in developments in the United Kingdom. They tell you:

> We do a lot of work building large residential buildings. One problem we often have is that after we start digging the fundations of our buildings, we discover that we're actually on top of ancient ruins of some sort that the stupid government wants to preserve for stupid posterity. Then we have to spend piles of money to have archeologists come to dig out these old bones with toothbrushes, all of which also puts us behind schedule. So what we want you to do is design a machine learning algorithm that we can use to detect archeological sites from the ground penetrating radar scans we do after we've cleared out a job site so we can avoiding digging foundations in the spots on our plots where archeological sites might be located.

So what does this stakeholder want you to do? At first glance, it might seem like the answer is "develop a machine learning algorithm for detecting archeological sites in ground penetrating radar scans".

But here's the thing: most people ask data scientists for help because they don't know much about data science. As a result, they specific thing they ask for may not actually be the best approach available given the state of data science.

In this case, for example, I would argue that the _real_ need of this company is to know where archeological sites are likely to be located, full stop. Finding a way to identify archeological remains in ground radar scans might help them, but there are two problems with that approach. First, it's not clear it's feasable. Training a supervised machine learning algorithm requires labeled training data, which in this case would mean ground penetrating radar scans of identified-but-not-yet-excavated-ruins. And its not at all clear such data could be obtained.

But second, and more importantly, it seems like it'd be _much_ more helpful and cost effective if you could make a guess about whether there are archeological sites at a location _before_ the company buys the land and clears away the existing buildings!

So what would I propose to a stake holder like this? I would say: "If I could tell you the likelihood that an archeological site is under a plot of land *you're thinking about buying, would that be more helpful to you?"

Now to be clear, you may not always be right in your assessment. They may come back and say "No, sorry -- there's this other consideration we didn't explain initially" (like "we've already bought all this land. We're committed."). But before diving in, you always want to be sure _you're solving the right problem._ And you should never **assume** that the problem to be addressed has been properly specified.

### What Questions Do I Need To Ask?

Data science tools aren't designed to solve problems; they answer questions. And so to have any hope of successfully solving the problem presented by your stakeholder, you must first determine what questions, if answered, would help solve the problem at hand.

In the example of the real estate development company above, for example, a question which, if answered, would make it essentially solve the stakeholder's problem would be:

_Can I predict the presence of archeological ruins using publicly available data, such as data topology, hydrology, soil types, and geography?_

Unlike using machine learning to process ground penetrating radar scans, the training data required to build a supervised machine learning algorithm to answer this question -- information on the locations of previously located archeological ruins -- is likely public, and there are _lots_ of public sources of data on landscape features and soil types. You would have to deal with the fact that people will only have figured out if archeological ruins are present in places where development has taken place in the past (so you'd want to build your training data using only the locations of large real estate developments that _would_ find ruins if ruins were present), but this is emminently doable.

Again, I am not saying this is the _best_ strategy -- there may be considerations we don't know about yet -- but this approach is certainly something I would bring back to the real estate company before doing any actual data work.

### Make Your Questions Specific and Actionable

In developing your questions, it is important to make them specific and actionable. A specific and actionable question is one that makes it very clear what you need to do next. For example, suppose an international aid organization told you they were worried that urbanization in Africa, Asia and Latin America was impacting efforts to reduce infant mortality. Some examples of specific, actionable questions are: "Is infant mortality higher among recent migrants to urban centers, controlling for income?" or "are the causes of infant mortality among recent migrants to urban centers different from those living in rural area?" Reading those questions, you can probably immediately think of what data you'd need to collect, and what regressions you'd want to run to generate answers to those questions.

Vague questions would be "is urbanization impacting efforts to reduce infant mortality?", or "does urbanization affect infant mortality?" Note that when you read these, they don't seem to obviously imply a way forward.

Perhaps the best way to figure out if your question is answerable is to write down what an answer to your question would look like. Seriously -- try it. Can you write down, on a piece of paper, the graph, regression table, or machine learning diagnostic statistics (complete with labels on your axes, names for variables, etc.) that would constitute an answer to your question? If not, it's probably too vague!
