# Solving the Right Problem

If data science is the study of how to solve problems using quantitative methods, then the first — and arguably most important — stage in any data science project is to define the problem to be solved.

While this may seem simple, it is often far from it. Indeed, as noted in the introduction, problems often only appear complicated because they are poorly understood. Reframing or rearticulating a difficult problem is often the key to figuring out how to solve it, which is why the adage "A problem well stated is a problem half solved" has remained popular for so long.

```{sidebar}
A problem well stated is a problem half-solved.
- Charles Kettering, Head of Research at General Motors
```

In this chapter, we will discuss what happens when data scientists fail to appreciate the importance of this stage of a project. With that established, we will then turn to advice on how to approach problem articulation.

This chapter will be written as if you are the sole actor on a data science project, responsible for everything from problem articulation to execution. But of course, this will rarely be the case in your professional life as a data scientist, especially early in your career. With that in mind, in the next chapter we will turn to the topic of "Stakeholder Management" — the practice of refining your understanding of the problem to be solved with a stakeholder.

## If You Don't Articulate The Problem

There are many examples in the world of data science projects going awry because the team behind them failed to properly articulate the problem they wished to solve. Rather than start with one of those true stories, however, I'd like to begin with one of my favorite fictional (and humorous) examples of the phenomenon.

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

No, the problem motivating the stakeholder is that their price suggestion algorithm doesn't take into account the condition of equipment going up for sale. Given that, you would know your model was successful if the predicted prices from the model were more in line with final sale prices for equipment of all conditions.

### 2. Abstract the Problem

So how do you help your stakeholder better understand *their* problem?

If I could offer only one piece of advice on how to approach a sticky problem, it would be this: rephrase the problem in a more general manner that abstracts away from the specifics. It's difficult to overstate how often a "unique" sticky problem becomes very straightforward once you realize it's a special case of a more general type of problem, or once you realize that your stakeholder has (often unknowingly) introduced constraints to the problem that aren't actually constraints.

Perhaps my favorite example of this comes from a talk given by [Vincent Warmerdam at PyData 2019.](https://youtu.be/kYMfE9u-lMo?t=1281&si=haO8mlmO5tB4OC9k)

The World Food Program (WFP) is a global leader in food aid provision. As Vincent tells the story — which he reports having heard at an Operations Research Conference — the WFP was struggling with an extremely difficult data science problem: how best to get food from the places it was being grown/stored to the people who needed it most. Essentially, the WFP would receive reports of needs from communities facing food insecurity. One community might report a need for bread and beef, while another might request lentils and meat. The WFP would compile these requests and then set about trying to determine the most efficient way to meet these needs.

This type of logistics problem is an example of a notoriously difficult problem (essentially a version of the Traveling Salesman Problem, which is NP-Complete, if that means anything to you) that companies like FedEx and UPS buy supercomputers to address. But this particular problem was made extra challenging by all the different types of food the WFP was trying to provide communities.

What the WFP realized was that they didn't actually need to provide bread to the village asking for bread. See, humans don't need *bread* to avoid starvation — they need a certain number of calories, a certain amount of protein, and a handful of other nutrients.[^nutrients] So when a village asks for bread, rice, or wheat, you can instead think of them asking for carbohydrates. And a village asking for beef or beans is actually asking for protein and iron. So by simply abstracting the task from "How best can we meet all these food requests?" to "How best can we meet the nutritional needs indicated by these requests?" the WFP was able to *dramatically* reduce the number of constraints being imposed on the logistical optimization problem WFP needed to solve, making its task *far* simpler.

[^nutrients]: As I understand it, calcium, iron, vitamins A, B1, B2, C, and niacin.

## Make Your Questions Specific and Actionable

In developing your questions, it is important to make them specific and actionable. A specific and actionable question makes it very clear what you need to do next. For example, suppose an international aid organization told you they were worried that urbanization in Africa, Asia, and Latin America was impacting efforts to reduce infant mortality. Some examples of specific, actionable questions are: "Is infant mortality higher among recent migrants to urban centers, controlling for income?" or "Are the causes of infant mortality among recent migrants to urban centers different from those living in rural areas?" Reading those questions, you can probably immediately think of what data you'd need to collect, and what regressions you'd want to run to generate answers to those questions.

Vague questions would be "Is urbanization impacting efforts to reduce infant mortality?", or "Does urbanization affect infant mortality?" Note that when you read these, they don't seem to obviously imply a way forward.

Perhaps the best way to figure out if your question is answerable is to write down what an answer to your question would look like. Seriously -- try it. Can you write down, on a piece of paper, the graph, regression table, or machine learning diagnostic statistics (complete with labels on your axes, names for variables, etc.) that would constitute an answer to your question? If not, it's probably too vague.

## Iterate

And here's the last but perhaps most important step: **iterate.** Bring your work back to your stakeholder as often as possible.

Many stakeholders find the idea of data science mysterious and abstract and will struggle to understand what is and is not feasible. By bringing them intermediate results, the whole process will start to become more concrete for the stakeholder, and it will help them provide you with better feedback.

The way this book is organized suggests a natural flow from problem articulation to answering Exploratory Questions to prioritize efforts, to answering Passive-Prediction Questions to target individuals for extra attention or automate tasks, and finally to Causal Questions to better understand the effects of that extra attention/automation. In reality, however, a good data scientist is always coming back to the stakeholder, updating their plan, and jumping back in the sequence when new questions arise.
