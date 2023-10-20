# Stakeholder Management & Solving the Right Problem

In Douglas Adams' comedic sci-fi classic *Hitchhiker's Guide to the Galaxy*, a race of hyperintelligent pandimensional beings set out to build a massive supercomputer the size of a city to solve the mysteries of the cosmos once and for all. When they turned on the computer, named Deep Thought, they announced that:

> "The task we have designed you to perform is this. We want you to tell us... the Answer!"
>
> "The Answer?" said Deep Thought.
>
> "The Answer to what?"
>
> "Life!" urged one designer.
>
> "The Universe!" said another.
>
> "Everything!" they said in chorus.
>
> Deep Thought paused, then answered, "Life, the Universe, and Everything. There is an answer. But," Deep Thought added, "I'll have to think about it."

Seven and a half million years later, when Deep Thought had *finally* finished its calculations, the descendants of those designers assembled to learn the result of their ancestors' work.

> "Er ...good morning, O Deep Thought," said Loonquawl [one descendants] nervously, "do you have ... er, that is ..."
>
> "An answer for you?" interrupted Deep Thought majestically. "Yes. I have."
>
> The two [descendants] shivered with expectancy. Their waiting had not been in vain.
>
> "There really is one?" breathed Phouchg [the other descendant].
>
> "There really is one," confirmed Deep Thought.
>
> "To Everything? To the great Question of Life, the Universe and Everything?"
>
> "Yes. [...] Though I don't think," added Deep Thought, "that you're going to like it."
>
> [...]
>
> "All right," said the computer, and settled into silence again.
>
> The two fidgeted.
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
> "Exactly!" said Deep Thought. "So once you do know what the question actually is, you'll know what the answer means."[^quote]

[^quote]: Yes, I recognize that it is wildly indulgent to open a chapter with such a long epigraph. But it's my book, and if there's anything to be indulgent about its quotes from *Hitchhiker's Guide to the Galaxy*, damn it!

In addition to establishing the premise for one of the greatest comedic science fiction novels in human history,[^fivepart] I feel this passage perfectly exemplifies the three things that cause most data science projects to fail.

[^fivepart]: Not least for being the only 5-book trilogy of which I am aware!

The first is that we are often so enamored with technology that we have absolute faith that if we just throw our problems at it, it will solve them for us. But it won’t. Without our thoughtful, critical guidance, it can’t. It never has, and it never will.

The second is that the *reason* this doesn't work is that if we don't actually figure out what it is we hope the technology will do for us, and make sure that what we're asking for will actually solve a real problem, technology couldn't care less. It will do what it has been asked to do — no more and no less. Garbage in, garbage out.

But the third reason data science projects fail that is exemplified in this passage is the most subtle. In this passage, we can see that Deep Thought clearly recognizes the idiocy of the request it has been given by Loonqual and Phouchg, it doesn't do anything about it. And that, unfortunately, is the cardinal sin committed by most young data scientists — they fail to recognize that helping the stakeholder properly specify their problem in a way that that is amenable being solved with the tools of data science is a core part of the job.

```{sidebar}
And that, unfortunately, is the cardinal sin committed by most young data scientists — they fail to recognize that helping the stakeholder properly specify their problem in a way that that is amenable being solved with the tools of data science is a core part of the job.
```

At this point, you may be thinking "well, isn't that *their* problem? They're the ones who asked me to do the wrong thing?" And... yes, in some sense it is. But it's also yours. Once you leave the classroom, you will no longer be evaluated on the complexity of your model or the aesthetics of your visualizations—you'll be evaluated on whether you've made your stakeholder's life better. And even if it was the stakeholder who originally mis-specified their need, if you fail to correct that error and deliver a result that doesn't help your stakeholder, then that's all that will be remembered.

So in this chapter we will discuss the concept of "stakeholder management:" specific ways you can work with your stakeholder to help refine and improve your mutual understanding of the problem you are seeking to solve before you—like the Deep Thought computer in *Hitchhikers Guide to the Galaxy*—spend weeks dutifully grinding away to solve a misspecified problem, only to deliver a result to their stakeholder that turns out to not actually be as helpful as expected.

Not someone who has an obvious stakeholder with whom you can have this type of conversation? Well, stick with me — many of the suggested questions and conversational strategies detailed below are ones I've often used in conversation with myself in my own academic research, and I assure you they work almost as well when talking to the voices in your own head as with another person.

## Stakeholder Management

How then should you — the young data scientist — go about ensuring your efforts are well spent?

There are (sorry) no hard and fast rules for how to avoid this kind of problem, but here's a simple road map:

- Start a conversation about the problem.
- Reframe and abstract the problem.
- Propose a question to answer.
- Iterate.

### Step 1: Recognize Your Role

### Step 2: Abstract the Problem

#### Beware Technical Suggestions

### Step 3: Ask Questions (Especially Quantiative!)

#### No Answer? Your First Exploratory Question

### Step 4: Propose Questions You Might Answer

#### Make Your Questions Specific and Actionable

### Step 5: Iterate

### Step 1: Recognize Your Role

Begin by having a discussion about the stakeholder's goals. The first step to avoid solving a mis-specified problems is recognizing that helping your stakeholder properly specify the problem is part of your job.

Remember: you've been hired precisely because of your expertise in solving problems with data, so *speak up.* Suggest different ways of stating the problem. Ask about different "deliverables" you could provide and ask why they might or might not solve the stakeholders problem (even if a suggestion gets shot down, the *reason* the problem is shot down will teach you something).

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

## What Solving the Wrong Problem Looks Like

Our discussion up to this point has been a little abstract, so to illustrate what we mean by "mis-specifying a problem", let's work through an example. The details of this example are fictitious, but the underlying logic of this example is not; indeed, the insight illustrated by this example is central to one of the biggest pivots in how people think about online advertising.

You have been hired by the advertising division of a fictitious national pizza chain—let's call it Little Papa Dominos (LPD). LPD spends a *lot* on online advertising, but they their resources aren't being deployed as effectively as they could be. They spend more than most of their competitors, and yet their online sales are lagging.

After consulting industry groups and online advertising experts, they discover that the rate at which people click their ads (their ads' *click-through rate*, or CTR) is well below the industry average.

To address the problem, they've hired you—a newly minted Data Scientist—to improve the CTR of their ads. They give you a large budget, access to all the cloud computing resources you need, and even a small staff.

"Well," you reason, "maybe the problem is that our ads aren't being shown to the right people. After all, it seems unlikely that any ad for pizza—no matter how appealing—is likely to draw a click if it's shown to a 75-year-old at 7 am." So you set out to build a statistical model to answer the question, "given a user's demographics and online behavior, how likely are they to click on one of LPDs ads?" If you can answer that, you figure, LPD can prioritize buying the ad spots for the types of users most likely to click on their ads.

To develop that model, you use your budget to run your ads on different sites and at different times. You then use that data (and those glorious cloud computing resources) to train a machine learning model that predicts whether someone will click on one of your ad based on the user's demographics and ad placement. You try out a few different models, tune the model parameters, and eventually settle on a neural network model with extremely high precision *and* recall. Hooray!

LPD uses the model to target users likely to click their ads, and almost immediately the CTR of their ads increase 5-fold! Not only that, but the share of people who click on ads that go on to buy a pizza has also increased. Everyone congratulates you, and you move on to the next project feeling very smug.

A few months later, though, you are called into a meeting with the LPD advertising team and the company's Chief Financial Officer. They've been looking over the numbers, and despite the huge rise in CTR, they seem to be getting fewer online orders than before you arrived. CTR rates are up, but somehow it isn't generating greater profits.

Can you figure out what went wrong?

OK, this is the place in most books where the authors ask you that question, and you look up at the ceiling for a minute, shrug, and then read on.

But I'm really, *really* serious about this: close your laptop, stand up, set a 5-minute timer on your phone, and go for a walk. Ponder this example. See if you can figure out what's going on. This is *precisely* the kind of problem you will soon face as a professional data scientist, so why not practice trying to think through the problem.

### Solving The Wrong Problem

So what happened?

The reason an increased click rate wasn't making LPD richer is that LPD's problem was never the fact they had a low CTR; LPD's *real* problem was that they weren't getting a lot of orders online. And because Little Papa Domino's problem wasn't a low CTR, being able to answer the question "how likely is a given user to click on an ad" *didn't actually solve their real problem*.

What question, if answered, would have helped solve their problem? "Given a user's demographics and online behavior, *how much more likely are they to buy a pizza* from LPD if we show them an ad?"

The difference is subtle, but critically important: someone clicking an ad doesn't make Little Papa Dominos any money. In fact, someone clicking an ad *and ordering a pizza* doesn't necessarily make LPD any money. Why? Because they may be someone who would have bought a pizza from LPD anyway, whether you showed them an ad or not. In fact, the person who was already thinking of ordering a pizza from LPD is *precisely* the type of person your algorithm may have targeted, and who may have clicked the ad to save themselves a Google search!

But the person LPD *wants* to show an ad to isn't the person who was already thinking of ordering a pizza from LPD, it's the person who was thinking of a pizza but wasn't sure who to order it from, or the person who wanted dinner but didn't know what to get. They may be less likely to click the ad than the person who was about to Google "Little Papa Dominos," but their precisely the type of user who is more likely to buy a pizza from LPD as a result of seeing an ad than they would have been otherwise.

#### Counter-Factual Advertising

Lest you think this example is contrived, it's not. In fact, the realization that the goal of ads isn't to maximize clicks but rather to induce the largest possible change in purchasing behavior is one of the most important ideas in online advertising. It has had a huge impact on how online advertising works, how people evaluate the success of ad campaigns.

Indeed, this is why companies like Meta and Google are so eager to track user behavior across apps and websites. When Meta and Google are able to "follow" users after they've clicked an ad, they can evaluate ad performance based not on clicks but on customer behavior. And when paired with their ability to show ads to some users and not to others and track both groups as they move around the web, Meta and Google can see whether users who see the ads are more likely to make purchases than those that don't. This allows them to estimate the true effect of ads on sales, data they use to improve ad targeting *and* justify higher prices to advertisers.
