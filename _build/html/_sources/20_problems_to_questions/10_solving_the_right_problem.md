# Solving the Right Problem

If data science is the study of how to solve problems using quantitative methods, then the first — and arguably most important — stage in any data science project is to define the problem to be solved.

While this may seem simple, it is often far from it. Indeed, as noted in the introduction, problems often only appear complicated because they are poorly understood. Reframing or rearticulating a difficult problem is often the key to figuring out how to solve it, which is why the adage "A problem well stated is a problem half solved" has remained popular for so long.

```{sidebar}
A problem well stated is a problem half-solved.
- Charles Kettering, Head of Research at General Motors
```

In this chapter, we will discuss what happens when data scientists fail to appreciate the importance of this stage of a project. With that established, we will then turn to advice on how to approach problem articulation.

This chapter will be written as if you are the sole actor on a data science project, responsible for everything from problem articulation to execution. But of course, this will rarely be the case in your professional life as a data scientist, especially early in your career. With that in mind, in the next chapter we will turn to the topic of "Stakeholder Management" — the practice of refining your understanding of the problem to be solved with a stakeholder.

## What *is* a "Stakeholder Problem?"

Before I dive into the nuances of problem articulation, I should probably start by defining what I mean by "your stakeholder's problem."

A problem, in this context, is something about the world that your stakeholder would like to be different. They have to make a decision about whether to authorize a new drug, but they aren't sure what the consequences of authorization would be. They are losing customers to a competitor. They are a hospital and are being regularly sued for patient falls. All of these are things in your stakeholder's world that they wish would change. And we could say their problem has been addressed when that state of the world changes, and your stakeholder is happier as a result.

Critically, a problem isn't just something your stakeholder *wants* to be different; a stakeholder problem is something they are willing to *pay* to make different. After all, the time of a data scientist isn't cheap, so no stakeholder is going to be willing to hire you unless there's something they are willing to allocate resources to resolve.

Sometimes, a stakeholder problem will clearly indicate what the remedy will look like — a government regulator charged with deciding whether a drug should be made publically available who isn't sure about the consequences of authorization would be... wants to know the consequences of drug authorization. But this will not always be the case — often it's easy to identify a problem ("we're losing customer's to Bob's Burgers down the street!") in a way that doesn't immediately imply what form a solution would take. And other times, as we'll discuss below, your stakeholder will *assume* they know what form a solution would take, and part of your job will be to differentiate between the actual problem (that you do need to address) and the assumed solution (which you should question, because it *may* be the best way to resolve the problem, but also may not).

## If You Don't Articulate The Problem

There are many examples in the world of data science of projects going awry because the team behind them failed to properly articulate the problem they wished to solve. Rather than start with one of those true stories, however, I'd like to begin with one of my favorite fictional (and humorous) examples of the phenomenon.

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

> "Er ...good morning, O Deep Thought," said Loonquawl [one descendant] nervously, "do you have ... er, that is ..."
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
> "Well, you know, it's just Everything ... everything ..." offered Phouchg weakly.
>
> "Exactly!" said Deep Thought. "So once you do know what the question actually is, you'll know what the answer means."[^quote]

[^quote]: Yes, I recognize that it is wildly indulgent to open a chapter with such a long epigraph. But it's my book, and if there's anything to be indulgent about its quotes from *Hitchhiker's Guide to the Galaxy*, damn it!

In addition to establishing the premise for one of the greatest comedic science fiction novels in human history,[^fivepart] I feel this passage perfectly exemplifies the three reasons most data science projects fail.

[^fivepart]: Not least for being the only 5-book trilogy of which I am aware!

**The first is our absolute faith that technology will save us.** All we have to do to solve any problem is feed it into the newest, shiniest AI/LLM/ML model available. Sure, there may be technical challenges associated with configuring the environment, formatting the data, etc., but fundamentally, all that lies between us and success is putting the problem into technology's hands.

The second is that when a data science project fails, it's rarely because the technology itself failed. Rather, **projects usually fail because people failed to ensure that the task they asked their model to accomplish would actually solve their problem.** Technology doesn't care if the task it's been given is useful to the user. It will do what it has been asked to do — no more and no less. Garbage in, garbage out.

Finally, this passage also gives a nod to the third — and perhaps most important reason — that data science projects fail: **data scientists are far too deferential to their stakeholders.** In this passage, we can see that Deep Thought recognizes the idiocy of the request it has been given by its stakeholders — Loonqual and Phouchg — but does nothing about it. And to the degree to which we can think of the Deep Thought personality as a stand-in for the data scientist, this is a troubling realistic illustration of how many data science interactions go. The stakeholder says they want something and the (usually younger) data scientist assumes their only responsibility is to ensure the stakeholder's request is implemented.

But as discussed in the introduction of this book, your success as a data scientist will *always* be evaluated in terms of whether you've made your stakeholder's life better. And if doing precisely what they ask does not improve their lives, that's the only thing that will matter. No one is blaming Deep Thought in this story, but they sure aren't excited about what it did, either.

## Articulating and Reframing Your Problem

The preceding story gives (an admittedly extreme) example of how things can go wrong when a data science project is not well motivated — in short, large amounts of energy and sweat can go into creating technically impressive results that, in the end, in no way solve a problem or improve the lives of anyone involved.

How, then, can you avoid that fate? Every problem is different, but here are some strategies to employ when faced with a problem to aid in refinement, reframing, and articulation. As we work through these, we will also work a few examples based on real cases designed to help you get a feel for what this process entails and why it's so important.

### 1. How do you know if you've been successful?

One of the most helpful questions to ask when trying to understand a problem is "how would we know if we've successfully solved this problem?" This question is powerful because it abstracts away the question of *how* you might solve a problem, and instead focuses attention on the *goal* one is trying to achieve. In other words, the objective of this question is to figure out how you might *measure* success.

Crucially, the answer to this question shouldn't be something like "we have a good model for doing X" — that answer has largely just shifted the question to what constitutes "good." Rather, try to come up with an answer in terms of the *metric* or *behavior* that, if observed, would tell you that you've been successful.

To illustrate the potential power of this question, let's consider an example I've encountered in the real world (with some details changed to protect the anonymity of everyone involved).

The stakeholder is an online auction site for used construction equipment (front loaders, backhoes, etc.). They want to improve the algorithm that suggests prices to people selling equipment, but they've realized that while they have good data on how machinery type impacts prices, their algorithm can't take into account the condition of equipment being listed. So they've hired a data science team to train an image classification model on listings to estimate the condition of each listed piece of machinery.

So: how would you know if you've been successful in solving this stakeholder's problem?

At first blush, you might say I would know I was successful if I have a model that has high classification accuracy for equipment condition when fed photos of equipment listed in the past.

But look more carefully, is that really what the stakeholder cares about? No — because "image classification model" is something young data scientists are familiar with, they tend to latch on to it immediately. "Oh, great, image classification! I can do that. Let's go!"

No, the problem motivating the stakeholder is that their price suggestion algorithm doesn't take into account the condition of equipment going up for sale. Given that, you would know your model was successful if the predicted prices from the model were more in line with final sale prices for equipment of all conditions. *That's* the actual goal.

Yes, an image classification model might allow the stakeholder to estimate equipment condition which could then be used as training data to revise the pricing model. But is that the best approach?

To train a model that can differentiate construction machinery in good or bad condition, the first thing you'd need to do is have a person go through and label a lot of old listings as being in good or bad condition. And you'd probably need a lot of them — after all, your model would have to be able to differentiate between indicators of wear that are superficial (dirt, superficial rust, and peeling paint) and indicators of wear that are substantial (cracks, patch welds, etc.), and do so on a range of different types of construction equipment. Then you'd use that to train an image classifier, then you'd have to tune and validate that image classifier, then you could use its classifications to improve the pricing model.

Alternatively, you could just (a) have someone label some old listings and use those labels *directly* to refine the pricing model, and (b) add a drop-down menu that asks people listing equipment to report the condition of their equipment (so that data is available to the pricing model when someone goes to list a product). Congratulations! You've just *entirely* removed image classification from this task.

### 2. Abstract the Problem

A second strategy for better understanding a problem is to try to reframe it at a higher level of generality/abstraction. When you do, you may find your thorny problem is actually just a specific example of a more general type of problem, one that people smarter than either of us have already figured out how to solve.

Alternatively, you may realize that you or your stakeholder has (often unknowingly) introduced constraints to the problem that aren't actually constraints.

Perhaps my favorite example of this phenomenon comes from a talk given by [Vincent Warmerdam at PyData 2019.](https://youtu.be/kYMfE9u-lMo?t=1281&si=haO8mlmO5tB4OC9k)

The World Food Program (WFP) is a global leader in food aid provision. As Vincent tells the story — which he reports having heard at an Operations Research Conference — the WFP was struggling with an extremely difficult data science problem: how best to get food from the places it was being grown/stored to the people who needed it most. Essentially, the WFP would receive reports of needs from communities facing food insecurity. One community might report a need for bread and beef, while another might request lentils and chicken. The WFP would compile these requests and then set about trying to determine the most efficient way to meet these needs.

This type of logistics problem is an example of a notoriously difficult problem (essentially a version of the Traveling Salesman Problem, which is NP-Complete, if that means anything to you) that companies like FedEx and UPS buy supercomputers to address. But this particular problem was made extra challenging by all the different types of food the WFP was trying to provide communities.

What the WFP realized was that they didn't actually need to provide bread to the village asking for bread. See, humans don't need *bread* to avoid starvation — they need a certain number of calories, a certain amount of protein, and a handful of other nutrients.[^nutrients] So when a village asks for bread, rice, or wheat, those requests can be *converted* into requests for carbohydrates. And when a village asks for beef or beans, those requests can be converted into requests for protein and iron. So by simply abstracting the task from "How best can we meet all these food requests?" to "How best can we meet the nutritional needs indicated by these requests?" the WFP was able to *dramatically* reduce the number of constraints being imposed on the logistical optimization problem WFP needed to solve, making its task *far* simpler.

[^nutrients]: As I understand it, calcium, iron, vitamins A, B1, B2, C, and niacin.

How far should you abstract things? To the level that feels most useful. Yes, in the private sector you *can* abstract almost any problem to "how do we maximize the lifetime discounted profits of the company," but I don't think it would be controversial to say that that formulation is not particularly useful if you're trying to pick the best box sizes for your company to stock for online orders. But there's also no real cost to thinking about your problem at that level of generality for a little while, so my advice would be: if you haven't gotten to a level of abstraction that feels silly, you probably haven't abstracted enough.

### 3. Let Your Articulation Change

My last suggestion is to allow your understanding of the problem you are trying to solve evolve. As your project develops, you will learn new things about your problem context, and you should allow those to inform how you are thinking of your problem. This is true not only for you — the data scientist — but also your stakeholder. We'll discuss stakeholder management more in our next chapter, but you should regularly be asking them: "does the way we've articulated the problem we're trying to solve still feel right to you given everything we've learned?"
