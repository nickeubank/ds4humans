# Answering Causal Questions

In this reading, we turn the surprisingly slippery question "What do we mean when we say X causes Y, and how do we measure the effect of an action $X$ (e.g., administering a new drug to a patient, or showing an ad to a user) on an outcome $Y$ (patient survival, customer spending, etc.)?"

While this reading may come across as much more abstract than previous chapters, it must be emphasized that answering Causal Questions is as much about critical thinking as it is about statistics. The concepts introduced here will prove crucial to your effectiveness in this space.

## What Does It Mean for X to Cause Y?

To understand what it means to answer a Causal Question and why answering Causal Questions is intrinsically hard, we must start by taking a step back to answer the question: "What do we mean when we say some action X *causes* a change in some outcome Y?"

Seriously, what do we mean when we say "X causes Y?" Try and come up with a definition!

While this question may *seem* simple, this question has actually been the subject of serious academic debate for hundreds of years by philosophers no less famous than David Hume. Indeed, even today, there is still debate over how best to answer this question.

In this course, we will use the *Counterfactual Model of Causality* (sometimes called the Neyman-Rubin causal model). In plain English, it posits that for "doing X to cause Y," it must be the case that if we do X, then Y will occur, and if we did not do X, Y would not occur. This is by far the most used definition of causality today, and yet remarkably, it only emerged in the 20th Century and was only really fleshed out in the 1970s. Yeah... that recently.

```{sidebar} Counterfactual Model of Causality
For it to be the case that doing X causes Y", it must be the case that if we do X, then Y will occur, and if we did not do X, then Y would not occur.
```

## Measuring the Effect of X on Y

At first blush, this definition may seem simple. But its simplicity belies a profoundly difficult practical problem. See, this definition relies on *comparing* the value of our outcome Y in two states of the world: the world where we do X and the world where we don't do X. As we only get to live in one universe, we can never perfectly know what the value of our outcome Y would be in *both* a world where we do X and one where we don't do X for a given entity at a given moment in time. As such, we can **never** directly measure the causal effect of X on Y for a given entity at a given moment in time — a problem known as the **Fundamental Problem of Causal Inference** (``causal inference`` being what people call the practice of answering Causal Questions).

To illustrate, suppose we were interested in the effect of taking a new drug (our X) on cancer survival (our Y) for a given patient (a woman named Shikha who arrived at the hospital on June 18th, 2022). We can give her the drug and evaluate whether she is still alive a year later, but that alone can't tell us whether the new drug *caused* her survival according to our counterfactual model of causality — after all, if she survives, maybe she would have survived even without the drug! To confirm the effect of the drug on Shikha *by direct measurement,* we would have to be able to measure her survival both in the world where we gave her the drug *and* the world where we did not and compare outcomes.

Since we can never see both states of the world — the world where we undertake the action whose effect we want to understand and the world where we don't — almost everything we do when trying to answer Causal Questions amounts to trying to find something we *can* measure that we think is a *good approximation* of the state of the world we can't see.

A quick note on vocabulary: by convention, we refer to the action whose effect we want to understand as a "treatment" and the state of the world where an entity receives the treatment as the "treated condition." Similarly, we refer to the state of the world where an entity does *not* receive the treatment as the "control condition." We use this language even when we aren't talking about medical experiments or even experiments in general. We also refer to the state of the world we cannot observe as the "counterfactual" of the world we can observe — so the world where Shikha does not get the cancer drug is the *counterfactual condition* to the world where Shikha does get the drug.

It's at this point most people start throwing out "but what about..."'s, and that's good! You should be — that's exactly the kind of thinking you have to do when trying to answer Causal Questions. For example, "What about if we measured the size of Shikha's tumor before she took the drug and compared it to the size of her tumor after? If the tumor got smaller as soon as she started the drug, then surely the drug caused the tumor to shrink!"

Maybe! Implicitly, what you have done is asserted that you think that the size of Shikha's tumor before we administered the drug is a good approximation of what you think the size of Shikha's tumor *would have been* had we not given her the drug.

But this type of comparison will always fall short of the Platonic ideal given by our definition of causality. Yes, Shikha's tumor *may* have stayed the same size if we had not given her the drug (in which case the size of the tumor before she took the drug would be a good approximation), but it is also possible that regardless of whether we'd given her the drug, her cancer would have shrunk on its own.[^natural_history]

[^natural_history]: The fact that diseases naturally change over time on their own is known as a disease's "natural history."

According to the Counterfactual Model of Causality, we could only ever *know* if taking the drug caused a decrease in tumor size if we could both administer the drug and observe the tumor *and also observe a parallel world in which the same person at the same moment in time was not given the drug for comparison*. Therefore, since we can never see this parallel world — the *counterfactual* to the world we observe — the best we can do is come up with different, imperfect tricks for *approximating* what might have happened in this parallel world, like comparing the tumor size before and after we administer the drug, imperfect though that may be.

So, does that mean we're doomed? Yes and no. Yes, it *does* mean that we're doomed to never be able to take the exact measurements that make it possible to directly answer a Causal Question. But no, that doesn't mean we can't do anything — in the coming weeks, we will learn about different strategies for approximating counterfactual conditions, and in each case, we will learn about what *assumptions* must be true for our strategy to provide a valid answer to our Causal Question. By making the assumptions that underlie each empirical strategy explicit, we will then be able to evaluate the plausibility of these assumptions.

In the example of Shikha, for example, we know that our comparison of tumor size before taking the drug to tumor size after taking the drug is only valid if her tumor *would not have gotten smaller without the drug*. This is something we can't measure directly, but we can look at other patients with similar tumors or the history of her tumor size to evaluate how often we see tumors get smaller at the rate observed after she took the drug. If it's very rare for these types of tumors to ever get smaller, then we can have more confidence that a decrease in tumor size was the result of the drug.

We are also sometimes in a position to be more proactive than our effort to answer Causal Questions. Rather than trying to make inferences from the world around us using what is termed "observational data" (data that was generated through a process we did not directly control, a process we only "observe"), we can sometimes generate our own data through randomized experiments.

Randomized experiments — perhaps the most familiar tool for answering Causal Questions — are also just another way of approximating the unobservable counterfactual condition. A randomized experiment is a study in which participants are assigned to either receive the treatment (the treatment group) or not (the control group) based on the flip of a coin a roll of a die, or - more commonly - a random number generator on a computer. Provided we have enough participants, the Law of Large Numbers then promises that *on average*, the people assigned to the control group will (probably) be "just like" the people assigned to the treatment group in every possible way (save being treated). Simply put, this means that the outcomes of the control group — being just like the treatment group *on average* — will be a good approximation of what *would* have happened to the treatment group in a world where they did not receive the treatment.

```{note}
Randomized experiments go by quite a few different names, depending on who you are talking to. In medical contexts, you'll sometimes hear them called "RCTs," which is short for "Randomized Control Trials." In tech settings, they are often called "A/B Tests." These are just differences in terminology, though — the nature of these studies are the same.
```

Randomized experiments are not a silver bullet, however. The validity of experimental comparisons still rests on a number of assumptions, many of which cannot be directly tested. For example, we can never be entirely sure that when we randomly assigned people to control and treatment groups, the process was truly random or that we ended up with people who were similar in both groups (the law of large numbers only promises that getting similar groups becomes *more likely* as the size of the groups increases, not that it will happen with certainty!). Moreover, conducting a randomized experiment requires working in a context where the researcher can control everything, and that can sometimes generate results that may not generalize to the big, messy world where you actually want to act.

## So where does that leave us?

For many data scientists, this will feel *profoundly* dissatisfying. Many people come to data science because of the promise that it will provide direct answers to questions about the world using statistics. But because of the Fundamental Problem of Causal Inference, this will never be possible when answering Causal Questions. Rather, the job of a data scientist answering Causal Questions is a lot like that of a detective trying to solve a crime — your task is to determine what *probably* happened at a crime scene. You can gather clues, collect forensic evidence, and interview suspects, all to come up with the *most likely* explanation for a crime. But no matter how hard you try, you can't go back in time to witness the crime itself, so you will never be able to be entirely sure if you are right or not.

But just as we investigate and prosecute crimes despite our inability to ever be 100\% certain an arrested suspect is guilty, so too must businesses and governments make decisions using the best available evidence, even when that evidence is imperfect. But it is our job, as data scientists, to help provide our stakeholders with the best available evidence and help them understand the strength of the evidence we are able to provide.

## Why Passive Prediction Is Not Enough

At this point, it is worth pausing to reflect on a question it may not have occurred to you to ask above — if answering Causal Questions is usually about *predicting* what would happen if we were to act on the world in a certain way, then how/why is it different from answering the kind of Passive-Prediction Questions we discussed previously?

There are a number of different ways one can frame the answer to this question. Still, the one I like most for Data Scientists is that when answering a Passive-Predictive Question, we can usually achieve our goals simply by identifying *correlations* that we think are likely to persist into the future. For example, suppose we run the maintenance department for a rental car company. The fact that a car whose *Check Engine* light is on is a car that is likely to break down if it isn't taken to a mechanic is enough for us to identify cars in trouble! Obviously, the *Check Engine* light isn't *causing* the cars to break down, but it doesn't have be useful.

But when seeking to answer Causal Questions, we wish to go beyond just identifying cars in trouble and instead predict what might happen to cars if we *chose to act* in different ways. This requires going beyond simple Passive Prediction because, in choosing to act, we ask how things might turn out in a world where we are behaving differently than we are currently — in other words, we are no longer being passive.

Thus, in a sense, answering Causal Questions is *always* an example of "out-of-sample extrapolation" or "out-of-sample prediction" because, by definition, we are saying we want to know what happens in a world where at least one major agent — us! — changes their behavior. Indeed, there's a very real sense that that's what we *mean* by a causal relationship: a relationship between our actions and an outcome that would persist even if we change our behavior!

What's an example of a situation where a correlation is sufficient for Passive Prediction but not answering a Causal Question? Well, let's go back to our example of the rental car maintenance manager — suppose rather than using *Check Engine* lights to identify cars that needed more attention, the manager decided to just cut the cables that run to all the *Check Engine* lights! After all, the cars that are breaking down all have their *Check Engine* light on, and the cars that don't have their *Check Engine* lights almost never break down! So why not just disable the *Check Engine* lights for all these cars so they stop breaking down?

Now that we've been clear about what we mean when we ask, "Does X cause Y?," we can now understand why this is a perfect example of why correlation does not always imply causation.

Fundamentally, the manager is asking, "Would cutting the cables to the *Check Engine* lights prevent our cars from breaking down?" For that to be true, we know that in an ideal universe, we would want to compare a car on the verge of breaking down that has its *Check Engine* light intact to that same car in a world where we cut the *Check Engine* light — then we can see if there is a difference in whether these cars break down!

But this is *not* the data our manager has turned to draw their conclusion — rather, they are comparing cars with their *Check Engine* lights on and cars without their *Check Engine* lights on. It turns out that cars *without* their *Check Engine* lights on are not a good approximation for the cars *with* their *Check Engine* lights on because the cars without the lights on are different from the cars with the lights on in ways that matter for the likelihood of breaking down (they have engine problems!) *other* than the *Check Engine* light!

Depending on what classes you may have taken in the past, you may have heard these differences referred to as "confounders" or "omitted variables" — those are just different words or ways of talking about the same idea! Confounders or omitted variables are just different words for features that are different between the "treated" and "untreated" observations being examined that the untreated observations are bad approximations of the counter-factual condition for the treated observations!

## Next Steps

In this reading, we learned — in an intuitive sense — why answering Causal Questions is inherently hard. But this explanation, while accurate, is a little informal to be rigorous. In the readings that follow, we will be introduced to the *Potential Outcomes Framework* — the formal statistical framework that underlies the Neyman-Rubin Counterfactual Model of Causality. This framework will help us reason more systematically about how and when methods like randomized experiments, linear regression, matching, and differences-in-differences can help us answer Causal Questions.

But first, in the interest of not losing perspective on the forest for the trees, a discussion of *how* Causal Questions are used in practice.

