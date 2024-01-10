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

But the third reason data science projects fail that is exemplified in this passage is the most subtle. In this passage, we can see that Deep Thought recognizes the idiocy of the request it has been given by Loonqual and Phouchg, it doesn't do anything about it. And that, unfortunately, is the cardinal sin committed by most young data scientists — they fail to recognize that helping the stakeholder properly specify their problem is a core part of the job.

```{sidebar}
And that, unfortunately, is the cardinal sin committed by most young data scientists — they fail to recognize that helping the stakeholder properly specify their problem is a core part of the job.
```

At this point, you may be thinking "well, isn't that *their* problem? They're the ones who asked me to do the wrong thing?" And... yes, in some sense it is. But it's also yours. Once you leave the classroom, you will no longer be evaluated on the complexity of your model or the aesthetics of your visualizations—you'll be evaluated on whether you've made your stakeholder's life better. And even if it was the stakeholder who originally misspecified their need, if you fail to correct that error and deliver a result that doesn't help your stakeholder, then that's all that will be remembered.

In this chapter, we will discuss the concept of "stakeholder management:" specific ways you can work with your stakeholder to help refine and improve your mutual understanding of the problem you are seeking to solve before you—like the Deep Thought computer in *Hitchhiker's Guide to the Galaxy*—spend weeks dutifully grinding away to solve a misspecified problem, only to deliver a result to their stakeholder that turns out to not be as helpful as expected.

Not someone who has an obvious stakeholder with whom you can have this type of conversation? Well, stick with me — many of the suggested questions and conversational strategies detailed below are ones I've often used in conversation with myself in my academic research, and I assure you they work almost as well when talking to the voices in your head as with another person.

## Problem Refinement & Stakeholder Management

How then should you — the young data scientist — go about ensuring your efforts are well spent?

There are (sorry) no hard and fast rules for how to work with your stakeholder to better articulate the problem you are seeking to solve. If there were, there would probably be a lot fewer problems in the world, since refining and re-articulating problems is often a major part of what results in them being solved. As Charles Kettering, Head of Research at General Motors from 1920 to 1947 once said, "A problem well stated is a problem half solved."

```{sidebar}
"A problem well stated is a problem half solved." 
- Charles Kettering, Head of Research at General Motors.
```

Nevertheless, here are some guiding principles to bear in mind. Read these, reflect on these, but most importantly, *review* them from time to time as you begin new data science engagements!

### Step 0: Recognize Your Role

If you remember nothing else from this chapter, please remember this: helping your stakeholder better understand their problem is a core part of the job.

Because most stakeholders are older and domain experts in their field, young data scientists tend to err on the side of deference. It is important to be respectful of your stakeholder's experience and to use their domain expertise, but it is important to also recognize that data science is about *pairing* domain expertise with computational methods and quantitative insights, and neither you nor your stakeholder is likely to have expertise in *both* the substantive domain in question *and* cutting edge quantitative methods. Indeed, if they did, they probably wouldn't be hiring you![^google] So don't hesitate to speak up! Ask questions, raise concerns, and while you should do so with *some* humility, have confidence in your own expertise.

[^google]: Obviously there are exceptions to this — if you work for a mature tech company like Google or Meta, you may very well end up working under a manager who knows sides of a problem significantly better than you. In my experience, however, is circumstance is the exception, not the rule.

### Step 1: Don't Assume Your Stakeholder Knows What They Need

A corollary to Step 0 is to not assume your stakeholder understands what they need. So when I say "helping your stakeholder understand their problem is a core part of the job," I don't only mean that it's part of your job *if the stakeholder admits to deep uncertainty about their problem*." Odds are your stakeholder will come to you with a strong statement of what they think they want, but you should take that as a starting point for discussion, not your mandate.

This is particularly true if your stakeholder comes to you with really specific technical suggestions. Often you will be approached by a stakeholder who, rather than laying out a problem, announces they would like you to do X using some data science tool Y. Occasionally the stakeholder doing this knows exactly what they're talking about, and you should use Y to do X.

More often, however, you're dealing with a stakeholder with just enough knowledge to be dangerous (and to drop buzzwords), but not enough to know how best to solve their problem.

Most people ask data scientists for help because they don't know much about data science (or, worse, they *think* they know about data science but don't). Again, different rules apply if you're at Google or Apple, but in most contexts, it's a good idea to treat implementation details provided by the client as a red herring. Focus on the stakeholder's *needs*. Only get into implementation details once you feel you understand the problem well.

```{sidebar}
Focus on the stakeholder's *needs*. Only get into implementation details once you feel you understand the problem well.
```

### Step 2: Abstract the Problem

So how do you help your stakeholder better understand *their* problem?

If I could offer only one piece of advice on how to approach a sticky problem, it would be this: rephrase the problem in a more general manner that abstracts away from the specifics. It's difficult to overstate how often a "unique" sticky problem becomes very straightforward once you realize it's a special case of a more general type of problem, or once you realize that your stakeholder has (often unknowingly) introduced constraints to the problem that aren't actually constraints.

Perhaps my favorite example of this comes from a talk given by [Vincent Warmerdam at PyData 2019.](https://youtu.be/kYMfE9u-lMo?t=1281&si=haO8mlmO5tB4OC9k)

The World Food Program (WFP) is a global leader in food aid provision. As Vincent tells the story — which he reports having heard at an Operations Research Conference — the WFP was struggling with an extremely difficult data science problem: how best to get food from the places it was being grown/stored to the people who needed it most. Essentially, the WFP would receive reports of needs from communities facing food insecurity. One community might report a need for bread and beef, while another might request lentils and meat. The WFP would compile these requests and then set about trying to determine the most efficient way to meet these needs.

This type of logistics problem is an example of a notoriously difficult problem (essentially a version of the Traveling Salesman Problem, which is NP-Complete, if that means anything to you) that companies like FedEx and UPS buy supercomputers to address. But this particular problem was made extra challenging by all the different types of food the WFP was trying to provide communities.

What the WFP realized was that they didn't actually need to provide bread to the village asking for bread. See, humans don't need *bread* to avoid starvation — they need a certain number of calories, a certain amount of protein, and a handful of other nutrients.[^nutrients] So when a village asks for bread, rice, or wheat, you can instead think of them asking for carbohydrates. And a village asking for beef or beans is actually asking for protein and iron. So by simply abstracting the task from "How best can we meet all these food requests?" to "How best can we meet the nutritional needs indicated by these requests?" the WFP was able to *dramatically* reduce the number of constraints being imposed on the logistical optimization problem WFP needed to solve, making its task *far* simpler.

[^nutrients]: As I understand it, calcium, iron, vitamins A, B1, B2, C, and niacin.

### Step 3: Ask Questions (Especially Quantitative Ones!)

Be sure to ask a lot of questions of your stakeholder. In particular, I would suggest two types: questions about what success would look like, and questions about the problem itself.

#### Questions About Success

Getting a sense of where the goalposts are for your stakeholder will both help you know what to target and also help you better understand your stakeholder's understanding of the problem. Make sure to ask questions like:

- How are you measuring the problem? What would you measure to help you know if you were successful in solving the problem?
- How big, in quantitative terms, is this problem?
- How much would you need the current situation to change to call this a success?

#### Questions About the Problem

The more you know about your client's needs the better, so ask anything that comes to mind. If the client can answer your question, it will help you better understand the situation; if the client can't answer your question you may find that they are suddenly really interested in knowing the answer, and you immediately have some of your first Exploratory Questions to try to resolve.

In the example of the company that wanted to improve recruitment of high-quality employees in the introduction of this book, I suggested that some of the first exploratory questions you might want to investigate would be things like:

- How many job applications are you receiving when you post a job?
- What share of your current job applicants are of high quality?
- What share of employees you try to hire accept your offer?
- What share of employees you do hire turn out to be successful employees?

These are all questions that I would ask my stakeholder in one of our first meetings.

### Step 4: Propose Questions You Might Answer

As a data scientist, answering questions about the world is the instrument you have to solve problems. So once you think you have a sense of your stakeholder's needs, turn around and propose a handful of questions and ask them if answering those questions would help solve their problem.

This is important because many people have only a vague sense of what they are likely to get as a "deliverable" from the data scientist. They usually have a vague sense that they will get some type of magic machine (a "magic model" or "magic algorithm") that will just make their problem go away. By concretely framing your deliverable as the answer to a question (or a model that would answer a specific question for each entity like a customer or patient that it encounters), you can get much more valuable feedback before you dive into a problem.

#### Make Your Questions Specific and Actionable

In developing your questions, it is important to make them specific and actionable. A specific and actionable question makes it very clear what you need to do next. For example, suppose an international aid organization told you they were worried that urbanization in Africa, Asia, and Latin America was impacting efforts to reduce infant mortality. Some examples of specific, actionable questions are: "Is infant mortality higher among recent migrants to urban centers, controlling for income?" or "Are the causes of infant mortality among recent migrants to urban centers different from those living in rural areas?" Reading those questions, you can probably immediately think of what data you'd need to collect, and what regressions you'd want to run to generate answers to those questions.

Vague questions would be "Is urbanization impacting efforts to reduce infant mortality?", or "Does urbanization affect infant mortality?" Note that when you read these, they don't seem to obviously imply a way forward.

Perhaps the best way to figure out if your question is answerable is to write down what an answer to your question would look like. Seriously -- try it. Can you write down, on a piece of paper, the graph, regression table, or machine learning diagnostic statistics (complete with labels on your axes, names for variables, etc.) that would constitute an answer to your question? If not, it's probably too vague.

### Step 5: Iterate

And here's the last but perhaps most important step: **iterate.** Bring your work back to your stakeholder as often as possible.

Many stakeholders find the idea of data science mysterious and abstract and will struggle to understand what is and is not feasible. By bringing them intermediate results, the whole process will start to become more concrete for the stakeholder, and it will help them provide you with better feedback.

The way this book is organized suggests a natural flow from problem articulation to answering Exploratory Questions to prioritize efforts, to answering Passive-Prediction Questions to target individuals for extra attention or automate tasks, and finally to Causal Questions to better understand the effects of that extra attention/automation. In reality, however, a good data scientist is always coming back to the stakeholder, updating their plan, and jumping back in the sequence when new questions arise.

## What Solving the Wrong Problem Looks Like

Our discussion up to this point has been a little abstract, so to illustrate what it means to "mis-specifying a problem." The details of this example are fictitious, but the underlying logic of this example is not; indeed, the insight illustrated by this example is central to one of the biggest pivots in how people think about online advertising.

You have been hired by the advertising division of a fictitious national pizza chain—let's call it Little Papa Dominos (LPD). LPD spends a *lot* on online advertising, but their resources aren't being deployed as effectively as they could be. They spend more than most of their competitors, and yet their online sales are lagging.

After consulting industry groups and online advertising experts, they discovered that the rate at which people click their ads (their ads' *click-through rate*, or CTR) is well below the industry average.

To address the problem, they've hired you—a newly minted Data Scientist—to improve the CTR of their ads. They give you a large budget, access to all the cloud computing resources you need, and even a small staff.

"Well," you reason, "maybe the problem is that our ads aren't being shown to the right people. After all, it seems unlikely that any ad for pizza—no matter how appealing—is likely to draw a click if it's shown to a 75-year-old at 7 am." So you set out to build a statistical model to answer the question, "given a user's demographics and online behavior, how likely are they to click on one of LPDs ads?" If you can answer that, you figure, LPD can prioritize buying the ad spots for the types of users most likely to click on their ads.

To develop that model, you use your budget to run your ads on different sites and at different times. You then use that data (and those glorious cloud computing resources) to train a machine learning model that predicts whether someone will click on one of your ad based on the user's demographics and ad placement. You try out a few different models, tune the model parameters, and eventually settle on a neural network model with extremely high precision *and* recall. Hooray!

LPD uses the model to target users likely to click their ads, and almost immediately the CTR of their ads increases 5-fold! Not only that, but the share of people who click on ads that go on to buy a pizza has also increased. Everyone congratulates you, and you move on to the next project feeling very smug.

A few months later, though, you are called into a meeting with the LPD advertising team and the company's Chief Financial Officer. They've been looking over the numbers, and despite the huge rise in CTR, they seem to be getting fewer online orders than before you arrived. CTR rates are up, but somehow it isn't generating greater profits.

Can you figure out what went wrong?

OK, this is the place in most books where the authors ask you that question, and you look up at the ceiling for a minute, shrug, and then read on.

But I'm really, *really* serious about this: close your laptop, stand up, set a 5-minute timer on your phone, and go for a walk. Ponder this example. See if you can figure out what's going on. This is *precisely* the kind of problem you will soon face as a professional data scientist, so why not practice trying to think through the problem?

### Solving The Wrong Problem

So what happened?

The reason an increased click rate wasn't making LPD richer is that LPD's problem was never the fact they had a low CTR; LPD's *real* problem was that they weren't getting a lot of orders online. And because Little Papa Domino's problem wasn't a low CTR, being able to answer the question "How likely is a given user to click on an ad" *didn't actually solve their real problem*.

What question, if answered, would have helped solve their problem? "Given a user's demographics and online behavior, *how much more likely are they to buy a pizza* from LPD if we show them an ad?"

Or, expressed more succinctly, LPD *thought* their problem was that their ads weren't *getting clicks,* but really their problem was that their ads weren't *driving increased sales*.

The difference is subtle, but critically important: someone clicking an ad doesn't make Little Papa Dominos any money. Someone clicking an ad *and ordering a pizza* doesn't necessarily make LPD any money. Why? Because they may be someone who would have bought a pizza from LPD anyway, whether you showed them an ad or not. The person who was already thinking of ordering a pizza from LPD is *precisely* the type of person your algorithm may have targeted, and who may have clicked the ad to save themselves a Google search!

But the person LPD *wants* to show an ad to isn't the person who was already thinking of ordering a pizza from LPD, it's the person who was thinking of a pizza but wasn't sure who to order it from, or the person who wanted dinner but didn't know what to get. They may be less likely to click the ad than the person who was about to Google "Little Papa Dominos," but their precisely the type of user who is more likely to buy a pizza from LPD as a result of seeing an ad than they would have been otherwise.

#### Counter-Factual Advertising

Lest you think this example is contrived, it's not. The realization that the goal of ads isn't to maximize clicks but rather to induce the largest possible change in purchasing behavior is one of the most important ideas in online advertising. It has had a huge impact on how online advertising works, and how people evaluate the success of ad campaigns.

Indeed, this is why companies like Meta and Google are so eager to track user behavior across apps and websites. When Meta and Google can "follow" users after they've clicked an ad, they can evaluate ad performance based not on clicks but on customer behavior. When paired with their ability to show ads to some users and not to others and track both groups as they move around the web, Meta and Google can see whether users who see the ads are more likely to make purchases than those who don't. This allows them to estimate the true effect of ads on sales, data they use to improve ad targeting *and* justify higher prices to advertisers.

## Next Up: Types of Questions

Having established the importance of first articulating the problem one seeks to solve, we will shortly turn to developing our understanding of the three types of questions introduced in the first chapter of this book.

First, though, a quick digression into understanding the historical context of data science. This may feel like an odd topic to talk through in a technical data science text, but as we'll see understanding how we got to where we are today is key to successfully navigating modern data science.

## Reading Reflection Questions

- Why should you care if your stakeholder misspecifies their problem?
