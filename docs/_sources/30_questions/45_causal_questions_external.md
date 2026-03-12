# Causal Questions, Experiments, and External Validity

Randomized experiments — be they the Randomized Control Trials (RCTs) of medical research or the A/B tests used by e-commerce companies — are often considered to be the gold standard for answering Causal Questions. When it comes to *internal* validity, it is certainly the case that randomized experiments tend to outperform other research designs. But it is also important to understand that experiments often achieve high internal validity at the expense of external validity. In this reading, we will discuss some of the most common issues that arise around external validity in randomized experiments. In particular, we will discuss two classes of challenges in achieving external validity that we often encounter when designing and implementing experiments: those that arise over time and those that arise with scaling.

## External Validity and Time Effects

A major challenge with experiments is that there is often a desire for them to generate quick answers, especially in industry. Most experiments have a short lifespan – even when a company is considering deploying an intervention for a long time, they usually evaluate it with a relatively short experiment. To a certain extent, this makes sense — the longer an experiment runs, the longer a potentially valuable change is being postponed. But the desire to use experiments to generate quick answers can backfire, leading to results that don't hold up in deployment.

### Novelty and Primacy Effects

Within our first class of challenges (temporal), there are two main types of effects to be aware of: novelty and primacy effects.

Novelty effects occur when people engage with a new product or feature due to its, well... novelty, but eventually lose interest. This may occur with a website feature or a physical product (like the Apple Vision Pro, the new exercise bike you bought, your gym membership, etc.). It is a very common reason that experiments may overstate the appeal of new products.

At the other end of the spectrum are primacy effects. Primacy effects occur when users take time to adjust to a new product.[^Priming] When these effects are present, experiments will tend to *underestimate* user interest in a new product. Consider, for example, every time you've visited a loved webpage and found it had a new design. You *probably* felt furious for a week, maybe posted about it online, then got used to it and decided it's ok after all.

Primacy effects can be particularly pernicious because when a product is rolled out at scale, people may talk about it, which may help users learn to use it effectively. But that's a phenomenon unlikely to occur in a small experiment (which brings us nicely to scaling effects).

[^Priming]: I think the etymology is that users can be said to have already been "primed" to use the old feature (e.g., Kohavi, Tang, and Xu (2020), p. 47) and need time to transition to the newer feature.

## External Validity and Scaling

Achieving high external validity when answering Causal Questions is difficult for precisely the same reason answering a Causal Question is difficult: a stakeholder is thinking about taking an action, but the action is too dangerous to "just try" at full scale. As a result, when you are asked to answer a Causal Question, you will likely be asked to answer it through a study that is very small in scale with respect to the eventual deployment your stakeholder is considering. For example, YouTube isn't going to let you test a change to how creators are paid for views by rolling it out to the whole website for a week, or even to its biggest channels. You will be limited to experimenting on a relatively small subset of users or creators. The ability to experiment will mean you will probably be able to successfully measure the effect of the change you want to study *among the people in the experiment*, but whether that measured effect is the same as what you would see if the change were applied globally will depend on how the experiment scales.

### Ecosystem Changes (aka General Equilibrium Effects)

One of the biggest challenges in scaling is that experiments may change individual users' behavior, but they are unlikely to cause changes in the broader ecosystem of users who might respond to a full-scale product change. For example, an experiment that changes how product listings appear for a few hundred customers on Amazon won't change what types of products sellers list on Amazon. Butif Amazon changed how product listings appear for *all* users, you can be certain sellers would respond by changing what they sell and how they sell it. Similarly, a change in the TikTok algorithm rolled out to 1\% of users won't affect the kinds of videos creators make, but global changes to the algorithm will *absolutely* change how creators design their content.

Economists refer to these kinds of second-order changes in behavior as "general equilibrium effects" (as distinct from "partial equilibrium effects," which refers to the immediate, *direct* impact of a change in a system). Once you start to look for them, you see them everywhere.

The magnitude of general equilibrium effects will usually vary with the size of the initial stimulus, which is why experiments tend to underestimate the general equilibrium effects that emerge during full-scale rollouts. But ecosystem changes also take time, meaning that experiments run for days or weeks will tend to underestimate general equilibrium effects — another example of how the distinction between "time effects" and "scale effects" can sometimes be a little blurry.

The problems of experiments, external validity, and general equilibrium effects are not unique to e-commerce or tech platforms. To illustrate, consider a public health experiment in Rajasthan, India.[^nurses] India's public health care system operates under a universal healthcare model – every household is close to a free (or nearly free) government facility, and on average, households are within two kilometers of the nearest clinic. However, absenteeism is a major problem in government medical facilities in Rajasthan, leading to reliance on expensive private practitioners. So, in cooperation with the health officials and a nongovernmental organization (NGO), a set of researchers designed an experiment in which the NGO setup timeclocks to monitor the attendance of midwife nurses at rural government clinics. The government then used the data to dock nurses' wages if they failed to show up at the clinic. During the first six months of the study, the experiment proved to be a huge success, with attendance nearly doubling.

But in a follow-up conducted 16 months later, the authors discovered that "general equilibrium effects" had come into play, and that nurses dissatisfied with fines had mobilized against the system. In the authors' words, "After the first 6 months, however, the local health administration deliberately undermined the incentive system. The result was that, 16 months after program inception, there was no difference between the absence rates in treatment and comparison centers; both were extremely high (over 60%)."[^nurses2]

In this case, of course, we know about the general equilibrium effect because the experiment was relatively large — it covered 72 clinics (33 "treated") serving 135 villages — and was left running for a year and a half. But the main point — that these effects are not at all unique to big tech and are likely to be overlooked by most experiments — still stands.

[^nurses]: The study is detailed in the evocatively named "[Putting a Band-Aid on a Corpse: Incentives for Nurses in the Indian Public Health Care System](https://doi.org/10.1162/JEEA.2008.6.2-3.487)" by Abhijit V. Banerjee, Esther Duflo, and Rachel Glennerster, published in the *Journal of the European Economic Association* in 2008. [A non-paywalled summary of the paper can be found here](https://pmc.ncbi.nlm.nih.gov/articles/PMC2826809/).

[^nurses2]: Page 2 of NIH published manuscript.

## Wrapping Up

Experiments are incredible. We have all benefited from lessons learned through medical experiments, and no other research design is as effective at convincing the general public of an intervention's effectiveness. But they are not the be-all and end-all of answering causal questions. Even when experiments achieve high internal validity through effective randomization and careful management of spillover effects, their results may not generalize. Learning to recognize both the power and the perils of experiments is an important part of being a thoughtful data scientist, and hopefully, the basic typology of common external validity concerns presented here will help you on that journey.
