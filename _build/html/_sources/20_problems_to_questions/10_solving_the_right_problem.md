# Solving Problems

All too often, young data scientists get lost in the technical details of models and lose sight of the bigger picture. Data science is not about maximizing accuracy — it's about using data and quantitative methods to solve *problems*, and at the end of the day, the only "metric" that matters is **whether your work has helped solve the problem you set out to address.**

To some readers, this idea may seem self-evident and uncontroversial. In my experience as an instructor, however, this is not a natural perspective for students. On one level, they recognize that data science is generally meant to accomplish a goal — though when asked about the goal of a data scientist, they often offer more generic answers like "generate insights from data" or "make recommendations," but then struggle to explain what makes something an insight, or on what basis one would make a recommendation. This lack of attention to project motivation and design is often further reinforced by classroom projects organized around instructor-provided, clearly articulated goals. And even when students are left free to choose their own topics, those topics are often backward-designed from available datasets, and students rarely get detailed faculty feedback.

In the real world, however, often the most important contribution of the data scientist is to navigate the ambiguities and uncertainties of the real world, clearly articulating the problem one's stakeholder is trying to solve, and finally deploying the tools of data science in a manner that is appropriate to the context in which one is operating.

With that in mind, this chapter and the next are focused on the stage of a data science project that sets the stage for all that follows: problem articulation.

In this chapter, we discuss the importance of clearly articulating your problem in an actionable way and illustrate, through examples, what happens if you *don't* articulate it correctly. It provides concrete suggestions for how to reframe problems and examples of how reframing has successfully helped simplify apparently intractable problems in the past.

Then, the next chapter focuses on the challenge of *Stakeholder Management.* In it, we step back from the unrealistic simplification that the problem is the reader's problem, and instead acknowledge that most data scientists are working *for* a stakeholder. The chapter discusses the delicate art of working with stakeholders to refine your mutual understanding of the problem you are trying to solve. Crucially, this chapter discusses the importance of being respectful of the stakeholder and their domain expertise while also not being *overly* deferential and assuming the stakeholder always knows best — a problem I often see with young data scientists.

```{note}
Throughout this book, I will frequently use the term "stakeholder" to refer to the person whose problem you, the data scientist, are seeking to address. I use this term because, as a young data scientist, you will often be in the position of having to use your data science skills to help someone else. Thus, your stakeholder may be your manager, your CEO, or someone at another company you are advising.


However, if you're lucky enough to *not* be directly answerable to someone else, either because you work for yourself or because you're in a field that gives you substantial autonomy like academia, you can simply think of your "stakeholder" as yourself.


If you're interested in developing a consumer-facing product (e.g., you're an independent developer who's thinking of creating a new data-science-based web app), you may also find it useful to think of your customer as the stakeholder, since very few products are successful if they don't solve a problem customers face.
```

## Problem Articulation

The first step in solving any problem is to carefully specify the problem. While this may seem obvious, properly articulating the core problem one seeks to address can be remarkably difficult. Moreover, because everything you will do *after* articulating your problem is premised on having correctly specified your objective, it is *the* greatest determinant of the success of your project. The most sophisticated, efficiently executed, high precision, high recall model in the world isn't worth a lick of good if the results it generates don't solve the problem you or your stakeholder needs solved.

Specifying your problem not only ensures that your subsequent efforts are properly directed, but it can also radically simplify your task. Many times, problems only *appear* difficult because of how they are presented. As Charles Kettering, Head of Research at General Motors from 1920 to 1947, once said, "A problem well stated is a problem half solved."

```{sidebar}
A problem well stated is a problem half-solved.


   *Charles Kettering, Head of Research at General Motors*
```

### What is a (Meaningful) Problem?

While it may seem pedantic, we should start by defining what we mean by a "problem."

A problem is something about the world that we (or our stakeholder) would like to be different. It is not a topic (customer retention, homelessness, infant mortality), but rather a specific condition that one would like to see changed. Many times when someone refers to a topic, they may be implicitly invoking a problem, but implicit invocations of a problem are a great way to introduce unnecessary ambiguity to a situation, and in doing so, make it more difficult to address. For example, when someone talks about "homelessness," they may be saying that there are too many people who do not have access to affordable housing, while another person may mean that we aren't doing enough to support people with mental health issues who can't function effectively in a capitalist economy.

In this book, we will also focus on attention on *meaningful* problems, by which I mean problems that you or your stakeholder are *willing to allocate time and money to making addressing.* If your stakeholder is a business, their problem may be losing customers to a competitor and not knowing how to prevent it. If your stakeholder is a hospital owner, their problem may be that they are regularly sued when patients fall and get hurt, and they would like to reduce the frequency of falls and lawsuits. And if your stakeholder is a regulator, then their problem may be that they are uncertain whether authorizing a new drug would cause more harm than benefit, and they want to reduce that uncertainty before making a problem.

Regardless of the context, though, a meaningful problem is something your stakeholder wants to be different about the world and is willing to invest time, effort, and resources to change. This last part — the willingness to put time, effort, and resources into addressing the problem — is how we know that a given problem isn't just "something that'd be nice" but actually matters, and thus is worth your energy. Solving the problem of "no one cleans their dirty mugs in the office sink" may get you a "good job" in the weekly staff meeting, but it's not a problem whose solution is going to make your stakeholder's life markedly better and get you promoted. And so, before you dive into solving a problem, you should always stop to make sure it's something that matters enough that, if told the problem could be solved with sufficient investment, your stakeholder would be willing to make that investment.

For the purposes of this book, then, a meaningful and well-articulated problem has two key attributes:

1. It is clear from the problem statement how you would know if you had successfully made headway into addressing the problem, and
2. The problem matters enough to you or your stakeholder for you to be willing to allocate resources to addressing it.

So, how do we get to the point of a well-articulated, meaningful problem statement, and what happens if we don't have one?

### If You Don't Articulate The Problem

There are many examples in data science of projects going awry because the team behind them failed to properly articulate the problem they sought to solve. Rather than start with one of those true stories, however, I'd like to begin with one of my favorite fictional (and humorous) examples of the phenomenon.

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

[^quote]: Yes, I recognize that it is wildly indulgent to open a chapter with such a long epigraph. But it's my book, and if there's anything to be indulgent about, it's quotes from *Hitchhiker's Guide to the Galaxy*, damn it!

In addition to establishing the premise for one of the greatest comedic science fiction novels in human history,[^fivepart] I feel this passage perfectly exemplifies the three reasons most data science projects fail.

[^fivepart]: Not least for being the only 5-book trilogy of which I am aware!

**The first is our absolute faith that technology will save us.** All we have to do to solve any problem is feed it into the newest, shiniest AI/LLM/ML model available. Sure, there may be technical challenges associated with configuring the environment, formatting the data, etc., but fundamentally, all that lies between us and success is putting the problem into technology's hands.

The second is that when a data science project fails, it's rarely because the technology itself failed. Rather, **projects usually fail because people failed to ensure that the task they asked their model to accomplish would actually solve their problem.** Technology doesn't care if the task it's been given is useful to the user. It will do what it has been asked to do — no more and no less. Garbage in, garbage out.

Finally, this passage also gives a nod to the third — and perhaps most important reason that data science projects fail: **data scientists are far too deferential to their stakeholders.** In this passage, we can see that Deep Thought recognizes the idiocy of the request it has been given by its stakeholders — Loonqual and Phouchg — but does nothing about it. And to the degree to which we can think of the Deep Thought personality as a stand-in for the data scientist, this is a troubling, realistic illustration of how many data science interactions go. The stakeholder says they want something, and the (usually younger) data scientist assumes their only responsibility is to ensure the stakeholder's request is implemented.

But as discussed in the introduction of this book, your success as a data scientist will *always* be evaluated in terms of whether you've made your stakeholder's life better. And if doing precisely what they ask does not improve their lives, that's the only thing that will matter. No one is blaming Deep Thought in this story, but they sure aren't excited about what it did, either.

## Articulating and Reframing Your Problem

The preceding story gives an (admittedly extreme) example of how things can go wrong when a data science project is not well motivated — in short, large amounts of energy and sweat can go into creating technically impressive results that, in the end, in no way solve a problem or improve the lives of anyone involved.

How, then, can you avoid that fate? Every problem is different, but here are some strategies to employ when faced with one to aid refinement, reframing, and articulation. As we work through these, we will also work on a few examples based on real cases designed to help you get a feel for what this process entails and why it's so important.

### 1. How do you know if you've been successful?

One of the most helpful questions to ask when trying to understand a problem is "how would we know if we've successfully solved this problem?" This question is powerful because it abstracts away the question of *how* you might solve a problem, and instead focuses attention on the *goal* one is trying to achieve. In other words, the objective of this question is to figure out how you might *measure* success.

Crucially, the answer to this question shouldn't be something like "we have a good model for doing X" — that answer has largely just shifted the question to what constitutes "good." Rather, try to come up with an answer in terms of the *metric* or *behavior* that, if observed, would tell you that you've been successful.

To illustrate the potential power of this question, let's consider an example I've encountered in the real world (with some details changed to protect the anonymity of everyone involved).

The stakeholder is an online auction site for used construction equipment (front loaders, backhoes, etc.). They want to improve the algorithm that suggests prices to people selling equipment, but they've realized that while they have good data on how machinery type impacts prices, their algorithm can't take into account the condition of the equipment being listed. So they've hired a data science team to train an image classification model on listings to estimate the condition of each listed piece of machinery.

So: how would you know if you've been successful in solving this stakeholder's problem?

At first blush, you might say I would know I was successful if I had a model that has high classification accuracy for equipment condition when fed photos of equipment listed in the past.

But look more carefully, is that really what the stakeholder cares about? No, because "image classification model" is something young data scientists are familiar with, they tend to latch on to it immediately. "Oh, great, image classification! I can do that. Let's go!"

No, the problem motivating the stakeholder is that their pricing algorithm doesn't account for the equipment going up for sale. Given that, you would know your model was successful if the predicted prices were more in line with final sale prices for equipment across all conditions. *That's* the actual goal.

Yes, an image classification model might allow the stakeholder to estimate equipment condition, which could then be used as training data to revise the pricing model. But is that the best approach?

To train a model to distinguish construction machinery in good or bad condition, the first thing you'd need to do is have a person go through and label many old listings as good or bad. And you'd probably need a lot of them — after all, your model would have to be able to differentiate between indicators of wear that are superficial (dirt, superficial rust, and peeling paint) and indicators of wear that are substantial (cracks, patch welds, etc.), and do so on a range of different types of construction equipment. Then you'd use that to train an image classifier, tune and validate it, and then use its classifications to improve the pricing model.

Alternatively, you could just (a) have someone label some old listings and use those labels *directly* to refine the pricing model, and (b) add a drop-down menu that asks people listing equipment to report the condition of their equipment (so that data is available to the pricing model when someone goes to list a product). Congratulations! You've just *entirely* removed image classification from this task.

### 2. Abstract the Problem

A second strategy for better understanding a problem is to try to reframe it at a higher level of generality/abstraction. When you do, you may find your thorny problem is actually just a specific example of a more general type of problem, one that people smarter than either of us have already figured out how to solve.

Alternatively, you may realize that you or your stakeholder has (often unknowingly) introduced constraints to the problem that aren't actually constraints.

Perhaps my favorite example of this phenomenon comes from a talk given by [Vincent Warmerdam at PyData 2019.](https://youtu.be/kYMfE9u-lMo?t=1281&si=haO8mlmO5tB4OC9k)

The World Food Program (WFP) is a global leader in food aid provision. As Vincent tells the story — which he reports hearing at an Operations Research Conference — the WFP was struggling with an extremely difficult data science problem: how best to get food from the places where it was being grown/stored to the people who needed it most. Essentially, the WFP would receive reports of needs from communities facing food insecurity. One community might report a need for bread and beef, while another might request lentils and chicken. The WFP would compile these requests and then determine the most efficient way to meet these needs.

This type of logistics problem is a notoriously difficult one (essentially a version of the Traveling Salesman Problem, which is NP-Complete, if that means anything to you) that companies like FedEx and UPS buy supercomputers to address. But this particular problem was made even more challenging by the different types of food the WFP was trying to provide to communities.

What the WFP realized was that they didn't actually need to provide bread to the village that was asking for it. See, humans don't need *bread* to avoid starvation — they need a certain number of calories, a certain amount of protein, and a handful of other nutrients.[^nutrients] So when a village asks for bread, rice, or wheat, those requests can be *converted* into requests for carbohydrates. And when a village asks for beef or beans, those requests can be converted into requests for protein and iron. So by simply abstracting the task from "How best can we meet all these food requests?" to "How best can we meet the nutritional needs indicated by these requests?" the WFP was able to *dramatically* reduce the number of constraints being imposed on the logistical optimization problem WFP needed to solve, making its task *far* simpler.

[^nutrients]: As I understand it, calcium, iron, vitamins A, B1, B2, C, and niacin.

How far should you abstract things? To the level that feels most useful. Yes, in the private sector, you *can* abstract almost any problem to "how do we maximize the lifetime discounted profits of the company," but I don't think it would be controversial to say that that formulation is not particularly useful if you're trying to pick the best box sizes for your company to stock for online orders. But there's also no real cost to thinking about your problem at that level of generality for a little while, so my advice would be: if you haven't gotten to a level of abstraction that feels silly, you probably haven't abstracted enough.

### 3. Let Your Articulation Change

My last suggestion is to allow your understanding of the problem you are trying to solve to evolve. As your project develops, you will learn new things about your problem context, and you should allow them to inform how you think about it. This is true not only for you — the data scientist — but also your stakeholder. We'll discuss stakeholder management more in our next chapter, but you should regularly be asking them: "Does the way we've articulated the problem we're trying to solve still feel right to you, given everything we've learned?"

## The Role of Domain Expertise

Application is, in many ways, what sets data science apart from the disciplines of mathematics, computer science, and statistics. And to apply the tools of data science tools effectively, by definition, requires an understanding of the domain to which your tools are being deployed. This fact makes many data scientists uncomfortable — after all, many young data scientists do not even know the industry in which they will be employed when they graduate, never mind feel they can lay claim to being a "domain expert" in any specific substantive field.

A consequence of this discomfort is that the term "domain expertise" is often invoked as a way of abdicating responsibility for part of an analysis as "somebody else's problem" (a dangerously powerful construction, as explained by the [incomparable Douglas Adams](99_sep_field)).

But it would be a mistake to view domain expertise as beyond the data scientist's responsibility for two reasons. First, engaging with the details of a substantive domain to tailor the application of data science methods to solve a specific problem isn't ancillary to the job of a data scientist — it's a data scientist's comparative advantage. Data scientists (generally) are not the most technically skilled mathematicians, statisticians, or programmers — we are professionals who specialize in distilling the best insights from all three skill sets and adapting them to the specific needs of a given problem. So embrace the role of "domain knowledge!"

The second reason is that while you are unlikely to be a "domain expert" yourself, learning to solicit important information about a domain from true domain experts is a skill unto itself. As we will detail in our readings on "stakeholder management," stakeholders may be experts in their particular substantive domain, but because they (usually) won't understand data science, they are unlikely to ever provide you with the domain knowledge you need to do your job successfully (and you can't get away with just saying "yes, this project failed, but it was because you didn't tell me X!" See the discussion above of the single criterion used to evaluate data scientists). So learning to *partner* with your stakeholder and domain experts to understand a problem is a key part of understanding it properly, and thus eventually solving it.
