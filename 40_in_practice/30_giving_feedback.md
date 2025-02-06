# Giving Effective Feedback (Data Science Edition)

One of the best ways to be successful in the workplace is to not just be good at what one does, but to also be effective at making the people around you better at *their* jobs. Help others be successful is not only good because it means the teams and units you're on will be more successful, but it also generates good will. People *like* to be on teams with people who make them more effective, and are more willing to stick their neck out to help a colleague they feel has been helpful to them.

Providing detailed, constructive feedback is one of the best ways to help colleagues. Yet it's a skill we rarely teach. In this reading, I will provide a framework for providing feedback that's specific to empirical data science. As with everything in this book, you may eventually decide you like approaching things differently, but this should at least provide a basis for thinking about what you do and do not like in feedback.

## Levels of Feedback

The key to effective feedback on data science projects, in my view, is to recognize the multiple levels on which all data science projects operate:

- **Approach - Problem fit:** given the problem that motivates the project, will the question the author is seeking to answer actually help address the problem?
- **Are they using an appropriate strategy to answer the question they want to answer?**: In principle, is the strategy being employed by the project a good one for answering the question they have set out to answer?
- **Was their strategy implemented effectively?**: Finally, when they actually applied their model to the data, do you think the result is correct? Are there issues with the result, data, or diagnostics that give you pause?

A project can have issues at any (or all) of these three levels, and each step of this ladder from motivation to estimated answer is a place where feedback can be provided.

Richard McElreath, author of the amazing book [Statistical Rethinking](https://xcelab.net/rm/), argues statistical analyses can be similarly divided into three levels, which he refers to as the Estimand (the quantity you're setting out to measure), the Estimator (the specific model and specification you've chosen to use to measure that quantity), and the Estimate (the actual number that you get from the model). Delightfully, he also uses [this figure](https://youtu.be/mBEA7PKDmiY?si=pykJpxpC9uBJVQKM&t=206) to emphasize the inevitable... challenges that emerge at each transition from theory to empirical reality:

![estimand estimator estimate hedgehog](images/estimand_estimator_estimate.png)

Students tend to feel most comfortable at the lowest of these levels of abstraction — data science classes tend to emphasize factor engineering and model diagnostics, so students have the most practice raising concrete concerns about model fitting and implementation. Yet that is also the domain where most other data scientists are likely to feel most comfortable, and so while feedback at this level is valuable, learning to reflect more on project motivation and how the project fits with the motivating problem often gives one a comparative advantage in providing useful feedback.

## Start with a Summarization

Before you offer suggestions, begin by laying out how you understand the project. Using this framework, lay out what you understand to be:

- the problem motivating the project ("This project aims to address [problem]..."), 
- how the project aspires to address this problem ("In order to address this problem, the seek to answer the question [question authors intend to answer]..."), 
- how they attempt to do so ("Using data from [such and such], the authors set out to answer this question using [modelling strategy]),
- what they find *expressed in concrete terms* ("They find that the partial correlation between X and Y is Z.")
- how they interpret what they find ("They interpret this as evidence that the answer to their question is that [something something]"),
- how they relate it back to the problem ("Given that, they argue [something about their motivating problem]...")

At each stage, try not to fill in any gaps in the logic of your colleague's arguments — the goal here is to make sure, concretely, you see the project precisely for all its parts. 

This exercise is useful for two reasons. First, it helps *you* think through the project in very concrete terms. Humans are exceptionally good at seeing patterns in the world even when they don't exist, and when reading your brain will naturally try to gloss over inconsistencies in the logic of what you are reading. Decomposing a project into granular components in this manner helps counteract that tendency, bringing attention to logical fallacies or gaps you might otherwise overlook. 

Second, summarizing how you understand a project helps the project authors understand what they have communicated to the reader and the basis for the feedback you provide. Moreover, it makes it clear to the recipient of feedback that you gave their project your full attention, which is likely to make them more receptive to critiques.

## 
