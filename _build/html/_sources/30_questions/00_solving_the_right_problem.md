# Solving the Right Problem

> Many many millions of years ago a race of hyperintelligent pandimensional beings (whose physical manifestation in their own pandimensional universe is not dissimilar to our own) got so fed up with the constant bickering about the meaning of life which used to interrupt their favorite pastime of Brockian Ultra Cricket (a curious game which involved suddenly hitting people for no readily apparent reason and then running away) that they decided to sit down and solve their problems once and for all.
>
> And to this end they built themselves a stupendous super computer which was so amazingly intelligent that even before its data banks had been connected up it had started from I think therefore I am and got as far as deducing the existence of rice pudding and income tax before anyone managed to turn it off.
> It was the size of a small city.
>
> [...]
>
> "O Deep Thought computer," he said, "the task we have designed you to perform is this. We want you to tell us..." he paused, "the Answer!"
>
> "The Answer?" said Deep Thought. "The Answer to what?"
>
> "Life!" urged Fook.
>
> "The Universe!" said Lunkwill.
>
> "Everything!" they said in chorus.
>
> Deep Thought paused for a moment's reflection. "Tricky," he said finally.
>
> "But can you do it?"
>
> Again, a significant pause.
>
> "Yes," said Deep Thought, "I can do it."
>
> "There is an answer?" said Fook with breathless excitement. "A simple answer?" added Lunkwill.
>
> "Yes," said Deep Thought. "Life, the Universe, and Everything. There is an answer. But," he added, "I'll have to think about it."
>
> [...]
>
> Fook glanced impatiently at his watch. "How long?" he said.
>
> "Seven and half million years," said Deep Thought.

[Seven and a half million years later]

> "Never again," cried the cheerleader, "never again will we wake up in the morning and think Who am I? What is my purpose in life? Does it really, cosmically speaking, matter if I don't get up and go to work? For today we will finally learn once and for all the plain and simple answer to all these nagging little problems of Life, the Universe and Everything!"
>
> [...]
>
> There was a moment's expectant pause while panels slowly came to life on the front of the console. Lights flashed on and off experimentally and settled down into a businesslike pattern. A soft low hum came from the communication channel. "Good morning," said Deep Thought at last.
>
> "Er ...good morning, O Deep Thought," said Loonquawl nervously, "do you have ... er, that is ..."
>
> "An answer for you?" interrupted Deep Thought majestically. "Yes. I have."
>
> The two men shivered with expectancy. Their waiting had not been in vain.
>
> "There really is one?" breathed Phouchg.
>
> "There really is one," confirmed Deep Thought.
>
> "To Everything? To the great Question of Life, the Universe and Everything?"
>
> "Yes."
>
> Both of the men had been trained for this moment, their lives had been a preparation for it, they had been selected at birth as those who would witness the answer, but even so they found themselves gasping and squirming like excited children.
>
> "And you're ready to give it to us?" urged Loonquawl.
>
> "I am."
>
> "Now?"
>
> "Now," said Deep Thought.
>
> They both licked their dry lips.
>
> "Though I don't think," added Deep Thought, "that you're going to like it."
>
> [...]
>
> "All right," said the computer, and settled into silence again.
>
> The two men fidgeted.
>
> The tension was unbearable.
>
> "Forty-two," said Deep Thought, with infinite majesty and calm.
>
> "Forty-two!" yelled Loonquawl. "Is that all you've got to show for seven and a half million years' work?"
>
> "I checked it very thoroughly," said the computer, "and that quite definitely is the answer. I think the problem, to be quite honest with you, is that you've never actually known what the question is."
>
> "But it was the Great Question! The Ultimate Question of Life, the Universe and Everything," howled Loonquawl.
>
> "Yes," said Deep Thought with the air of one who suffers fools gladly, "but what actually is it?"
>
> A slow stupefied silence crept over the men as they stared at the computer and then at each other.
>
> "Well, you know, it's just Everything ... everything ..." offered Phouchg weakly.
>
> "Exactly!" said Deep Thought. "So once you do know what the question actually is, you'll know what the answer means."

Douglas Adams, **Hitchhikers Guide to the Galaxy**

We do data science to solve problems. And yet all too often data science projects fail not because their model accuracy was low or because of insufficient data, but rather because the problem the team solved wasn't actually the problem that needed solving!

Why is this such a common issue? In part, it's because properly specifying a problem is *immensely* difficult. To specify a problem properly requires *understanding* the issue, and often we call issues "problems" precisely because we don't really understand them. There's a reason that Charles Kettering, Head of Research at General Motors famously said "A problem well stated is a problem half solved."

But there's also a second reason more unique to data science, and especially to the work of *young* data scientists: excessive deference to stakeholders.

As a young data scientist, you will often be in the position of having to use your data science skills to help someone else. In this book, we will refer to any third party you are helping as your "stakeholder." This may be your manager, your CEO, or someone at another company you are advising.[^workingforyourself] And it will nearly always be the case that your job as a data scientist will be to solve a problem that has been brought to you by your stakeholder.

[^workingforyourself]: If you're lucky enough to *not* be directly answerable to someone else, either because you work for yourself or because you're in a field that gives you substantial autonomy like academia, just think of your "stakeholder" as yourself.

That in and of itself is fine—division of labor makes the modern economy work! The problem arises when data scientists assume that the problem statement their stakeholder has brought them is properly specified and that their job is to take that problem statement as given and run with it. Because your job as a data scientist isn't to mindlessly solve the problem brought to you by your stakeholder—a *central* part of your job is to work *with* your stakeholder to identify the *real* problem they want solved and to ensure that the work you *plan* to do will bring real value.

Because all too often, young data scientists—like the Deep Thought computer in *Hitchhikers Guide to the Galaxy*—spend weeks dutifully grinding away to solve a misspecified problem, only to deliver a result to their stakeholder that turns out to not actually be as helpful as expected.

At this point, you may be thinking "well, isn't it *their* problem that they asked me to do the wrong thing?" And... yes, in some sense it is. But it's also yours. And that's because when you leave the classroom, you will won't be evaluated on the complexity of your model or the aesthetics of your visualizations—you'll be evaluated on whether you've made your stakeholder's life better. And even if it was the stakeholder who originally misspecified their need, if you fail to correct that error and deliver a product that doesn't help your stakeholder, then that's what will be remembered.

```{sidebar}
when you leave the classroom, you will won't be evaluated on the complexity of your model or the aesthetics of your visualizations—you'll be evaluated on whether you've made your stakeholder's life better. And even if it was the stakeholder who originally mis-specified their need, if you fail to correct that error and deliver a product that doesn't help your stakeholder, then that's what will be remembered.
```

## Little Papa Dominos Has A Problem

Our discussion up to this point has been a little abstract, so to illustrate what we mean by "mis-specifying a problem", let's work through an example. The details of this example are fictitious, but the underlying logic of this example is not; indeed, the insight illustrated by this example is central to one of the biggest pivots in how people think about online advertising.

You have been hired by the advertising division of a fictitious national pizza chain—let's call it Little Papa Dominos. Little Papa Dominos spends a *lot* of money on online advertising, but they worry the money isn't being used as effectively as it could be—they spend more than most of their competitors, and yet their online sales are lagging. After consulting industry groups and online advertising experts, they discover that their ads' click-through rate (CTR, the percentage of ads that are shown to users that are actually clicked) is well below the average for food delivery services, suggesting that their ads aren't very effective.

To address the problem, they've hired you—a newly minted Data Scientist—to improve the CTR of their ads. They give you a large budget, access to all the cloud computing resources you need, and a small staff.

"Well," you reason, "maybe the problem is that our ads aren't being shown to the right people. After all, it seems unlikely that any ad for pizza—no matter how appealing—is likely to draw a click if it's shown to a 60-year-old at 7 am." So you set out to answer the question: "What factors predict the likelihood that a user will click on one of our ads?" a classic passive-predictive question.

You and your team use your budget to run your ads in front of different types of users on different sites and at different times. You then use that data (and those glorious cloud computing resources) to train a machine learning model that predicts whether someone will click on one of your ads as a function of user demographics and ad placement.

Based on this analysis, you conclude that Little Papa Dominos has not been doing a very good job of targeting likely ad-clickers. You suggest they shift their ad spend to focus on the types of users your model predicts are likely to click on Little Papa Dominos ads.

And sure enough, almost immediately the data shows your CTR has increased 5-fold! Not only that, but the share of people who click on ads who end up actually buying a pizza has even increased. Everyone congratulates you, and you move on to the next project feeling very smug.

A few months later, though, you are called into a meeting with the Little Papa Dominos advertising team and the company's Chief Financial Officer. They've been looking over the numbers, and despite the huge rise in CTR, their online sales business is doing *worse* than it was before your change to their system. CTR rates are still up, but somehow it isn't generating more profits.

Can you figure out what went wrong?

OK, this is the place in most books where the authors ask you that question, and you look up at the ceiling for a minute, shrug, and then read on.

But I'm really, really serious about this: close your laptop, stand up, set a 5-minute timer on your phone, and go for a walk. Ponder this example and see if you can figure out what's going on. This is *precisely* the kind of problem you will soon face as a professional data scientist, so why not practice trying to think through the problem here where you can check your work?

### Solving The Wrong Problem

The reason increasing clicks wasn't making Little Papa Dominos richer is that Little Papa Dominos' problem wasn't that their ads had a low CTR; their *real* problem was that not many people were buying pizzas online.

And because Little Papa Domino's problem wasn't a low CTR, the question that needed to be answered was *not* "who is most likely to click on an ad." The question that needed to be answered was "what users are most likely to decide to buy a pizza (who wasn't already going to buy a pizza) if I show them an ad?"

The difference is subtle, but crucially important: showing an ad to someone and having them click it doesn't mean the ad made Little Papa Dominos any money; in fact, having someone click an ad and *buy a pizza* doesn't even mean the ad made Little Papa Dominos money. Little Papa Dominos only makes money if someone *who wasn't already planning to buy a pizza* decides to buy a pizza because of an ad.

Or, expressed the way we normally frame causal statements: an ad only makes Little Papa Dominos money if the ad *causes* someone to buy a pizza.

Why are these so different? Because the best way to get someone to click an ad for your company is to show it to someone who was probably going to buy your product anyway. In the case of Little Papa Dominos, for example, you can probably get the best CTR by showing ads to college students at 10 pm who were searching the name of your company. But does that make you any money? No, because most of those people were going to end up on your site anyway!

### Causal Inference in Advertising

As noted at the beginning of this example, while Little Papa Dominos is not a real company, this realization—that in online advertising, our goal is not to show ads to the people most likely to click on the ad, but rather the people whose behavior is most likely to be changed by the ad—has had a huge impact on how online advertising works, and how people evaluate the success of ad campaigns.

Indeed, this is also why companies like Meta and Google are so eager to track user behavior across apps and websites. When Meta and Google are able to "follow" users after they've clicked an ad, they can evaluate ad performance based not on clicks but on customer behavior. And when paired with their ability to show ads to some users and not to others and compare the customer behavior of both groups (something we'll talk about more soon), Meta and Google cause estimate the true effect of ads on sales, allowing them to charge more for their ad spots *and* use the data to improve ad targeting.

## Solving The *Real* Problem

So how to we avoid solving the wrong problem? There are (sorry) no hard and fast rules for how to avoid this kind of problem, but here's a simple road map:

- Start a conversation about the problem.
- Propose a question to answer.
- Iterate.

### Step 1: Start a Conversation

Begin by having a discussion about the *goals* of your project. As noted above, the first step to avoiding mis-specified problems is to just *recognize* that helping to properly specify the problem is part of your job. Remember: you've been hired precisely because of your expertise in solving problems with data, so *speak up.* Suggest different ways of stating the problem. Ask about different "deliverables" you could provide and ask why they might or might not solve the stakeholders problem (even if a suggestion gets shot down, the *reason* the problem is shot down will teach you something).

For example, suppose you are approached by a real estate group interested in developments in the United Kingdom. They tell you:

> We do a lot of work building large residential buildings. One problem we often have is that after we start digging the foundations of our buildings, we discover that we're actually on top of ancient ruins of some sort that the stupid government wants to preserve for stupid posterity. Then we have to spend piles of money to have archeologists come to dig out these old bones with toothbrushes, all of which also puts us behind schedule. So what we want you to do is design a machine learning algorithm that we can use to detect archeological sites from the ground penetrating radar scans we do after we've cleared out a job site, so we can avoid digging foundations in the spots on our plots where archeological sites might be located.

So what does this stakeholder want you to do? At first glance, it might seem like the answer is "develop a machine learning algorithm for detecting archeological sites in ground penetrating radar scans".

But it seems like it'd be *much* more helpful and cost-effective if you could make a guess about whether there are archeological sites at a location *before* the company buys the land and clears away the existing buildings!

So what would I propose to a stakeholder like this? I would say: "If I could tell you the likelihood that an archeological site is under a plot of land you're thinking about buying, would that be more helpful to you?"

Now to be clear, you may not always be right in your assessment. They may come back and say "No, sorry—there's this other consideration we didn't explain initially" (like "we've already bought all this land. We're committed."). But before diving in, you always want to be sure *you're solving the right problem.* And you should never **assume** that the problem to be addressed has been properly specified.

#### Beware Technical Suggestions

It's remarkable how often stakeholders will come to you with a vague conception of a problem they are facing and an over-formed idea of how they think you can solve their problem using data science (a solution that will almost certainly invoke the magic of "machine learning" or "AI").

But remember: most people ask data scientists for help because they don't know much about data science, or worse they *think* they know a lot about data science, but don't. Again, different rules apply if you're at Google or Apple, but in most contexts, it's a good idea to treat implementation details provided by the client as a red herring. Focus on the stakeholder's actual *needs*, and only think about implementation once you feel you understand the problem well.

```{sidebar} Have Confidence in Your Own Expertise
Most people ask data scientists for help because they don't know much about data science. As a result, the specific thing they ask for may not actually be the best approach available given the state of data science.
```

In the example above, for example, I would argue that the *real* need of the real estate company is to know where archeological sites are likely to be located, full stop. Finding a way to identify archeological remains in ground radar scans *might* help them, but is it (a) feasible and (b) the best choice?

Training a supervised machine learning algorithm requires labeled training data, which in this case would mean ground penetrating radar scans of identified-but-not-yet-excavated-ruins. And it's not at all clear such data could be obtained.

Moreover, there's presumably LOTS of public data on where archeological sites have been found in the past, and there's a good chance a basic GIS analysis of already-found sites could tell you a lot (and for a lot less money!).

### Step 2: Propose A Question To Answer

Once you think you understand your stakeholder's need, the next step is propose a question you plan to answer to your stakeholder. In our prior example, I might ask the real estate agent: "if I could answer the question: for any given real estate plot, what's the probability the site contains archeological ruins? would that solve your problem?"

This strategy is critical because data science tools aren't designed to solve problems; they answer questions. And so to have any hope of successfully solving the problem presented by your stakeholder, you must first determine what questions, if answered, would help solve the problem at hand. And when you propose a question you plan to answer, it helps make clear to the stakeholder what you'll be delivering, and helps them evaluate whether your plan of action makes sense.

### Make Your Questions Specific and Actionable

In developing your questions, it is important to make them specific and actionable. A specific and actionable question is one that makes it very clear what you need to do next. For example, suppose an international aid organization told you they were worried that urbanization in Africa, Asia and Latin America was impacting efforts to reduce infant mortality. Some examples of specific, actionable questions are: "Is infant mortality higher among recent migrants to urban centers, controlling for income?" or "are the causes of infant mortality among recent migrants to urban centers different from those living in rural area?" Reading those questions, you can probably immediately think of what data you'd need to collect, and what regressions you'd want to run to generate answers to those questions.

Vague questions would be "is urbanization impacting efforts to reduce infant mortality?", or "does urbanization affect infant mortality?" Note that when you read these, they don't seem to obviously imply a way forward.

Perhaps the best way to figure out if your question is answerable is to write down what an answer to your question would look like. Seriously -- try it. Can you write down, on a piece of paper, the graph, regression table, or machine learning diagnostic statistics (complete with labels on your axes, names for variables, etc.) that would constitute an answer to your question? If not, it's probably too vague!

### Step 3: Iterate

And here's the last but perhaps most important step: **iterate.** Bring your work back to your stakeholder as often as possible. Many stakeholders find the idea of data science mysterious and abstract, and will struggle to understand what is and is not feasible. By bringing them intermediate results, the whole process will start to become more concrete for the stakeholder, and it will help them provide you with better feedback.

## Descriptive versus Proscriptive Questions

A last but important note on questions.

In our previous reading, we introduced three classes of questions: Exploratory, Passive-Predictive, and Casual. But that was actually a slight simplification.

There are actually two broad kinds of questions: descriptive questions and proscriptive questions. Exploratory, Passive-Predictive, and Casual questions are all examples of descriptive questions—questions that aim to describe something about objective reality (e.g., What is the current tax rate for people earning over $250,000? How old do you have to be to get married in North Carolina?).[^objectivereality]

But some questions aren't about the objective reality of the world, but rather about how the world *should* be (e.g., Should the current tax rate for people earning over $250,000 be higher? How old should you have to be to get married in North Carolina?. These questions are often called *proscriptive questions* (or in some fields, *normative questions*).

[^objectivereality]: Yes, we are positing an objective reality, which admittedly is an idea which has it's own complications. However, if you are familiar with the epistemological issues around the idea of an "objective reality" I suspect you are already familiar with the distinction being drawn in this section.

The reason we've chosen to focus on descriptive questions rather than proscriptive question is that while data science is an amazing tool for telling us about the state of the world, it *cannot*, on its own, answer *should* questions. That is because answering *should* questions requires evaluating the *desirability* of different possible outcomes, and that can only be done using on the basis of a system of values. Data science may tell us the *consequences* of different courses of action, but it cannot tell us whether those consequences make a given course of action worthwhile.

To illustrate, suppose you are interested in reducing opioid overdoses. Your rigorous data science analysis may tell you that increasing the regulation of opioid prescriptions will reduce overdoses by some amount X and reduce access to opioids for those with chronic pain by some amount Y. But does that mean you should enact the policy? Well, that depends on how much *value* you place on patients with chronic pain having access to opioids, and how much *value* you place on preventing overdoses. And the answers to those questions simply can't come from your data.

In this course, we will refer to questions about how the world *is* as "positive questions", and questions about how the world *should be* as normative questions. But be aware these terms aren't universal. Some people use the term "descriptive" instead of positive, and "proscriptive" instead of normative. Since we are using the term "descriptive" for a different purpose in this class, I will use normative and positive throughout this course to avoid confusion.
