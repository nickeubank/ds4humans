# Causal Questions, Experiments, and External Validity

Randomized experiments — be they the Randomized Control Trials (RCTs) of medical research or the A/B tests used by e-commerce companies — are often considered to be the gold standard for answering Causal Questions. And when it comes to *internal* validity, it is certainly the case that experiments tend to outperform other research designs. But it is important to understand that experiments often achieve their high internal validity at the expense of external validity. In this reading, we will discuss some of the most common external validity issues that arise around experiments. In particular, we will discuss two classes of external validity challenges that are often faced by experiments: challenges that arise over time, and challenges that arise with scaling. 

## External Validity and Time Effects

A major challenge with experiments is that there is often a desire for them to generate quick answers, especially in tech. Most experiments will be run for far less time than the intervention they are designed to test will be deployed. And to a certain extent, this makes sense — the longer an experiment runs, the longer a potentially valuable change is being postponed. But the desire to use experiments to generate quick answers can sometimes result in results that don't stand up in deployment.

### Novelty and Primacy Effects

There are two main classes of temporal effects to be aware of: novelty and primacy effects.

Novelty effects occur when people engage with a new product or feature due to its, well... novelty, but eventually lose interest. This may occur with a feature on a website, or with a physical product (like the Apple Vision Pro, that new exercise bike you bought, your gym membership, etc.). But it is a very common reason that experiments may overstate the appeal of new products.

At the other end of the spectrum are primacy effects. Primacy effects occur when users take time to adjust to a new product.[^Priming] Where present, primacy effects mean that experiments will tend to underestimate user interest in a new product. Consider, for example, every time you've visited a loved webpage and found they had a new design and felt furious for a week before deciding it's ok after all.

Primacy effects can be particularly pernicious because when a product is rolled out at scale, people may talk about the product, which may help users learn to use it effectively. But that's a phenomenon that is unlikely to happen during a small experiment, a point which brings us nicely to scaling effects.

[^Priming]: I think the etymology is that users can be said to have already been "primed" to use the old feature (e.g., Kohavi, Tang and Xu (2020), p. 47) and need time to transition to the newer feature. 

## External Validity and Scaling

Achieving high external validity when answering Causal Questions is difficult for precisely for the same reason you are likely to be asked to answer a Causal Question: a stakeholder is thinking about taking an action, but that the action is too dangerous to "just try" at full scale. As a result, when you are asked to answer a Causal Question, it is likely you will be asked to answer it through a study that is very small in scale with respect to the eventual deployment your stakeholder is considering. YouTube, for example, isn't going to let you test a change to how creators are paid for views by rolling it out to the whole website for a week, or even by letting you roll it out to its biggest channels; you will be limited to experimenting on a relatively small subset of users or creators. The ability to experiment will mean you will probably be able to measure the effect of the change you want to study really well *among the people in the experiment*, but whether that measured effect is the same as what you would see if the change were applied globally will depending on how the experiment scales.

### Ecosystem Changes (aka General Equilibrium Effects)

One of the biggest challenges around scaling is that experiments may induce changes in the behavior of the individual users in an experiment, but they are unlikely to cause changes in the broader ecosystem of actors who might respond to a full-scale change in a product. An experiment that changes how product listings appear for a few hundred customers on Amazon, for example, won't change what types of products sellers list on Amazon; but if Amazon changed how product listings appear for *all* users on Amazon, you can be certain sellers would respond by changing what they sell and how they sell it. Similarly, a change in the TikTok algorithm rolled out to 1\% of users won't impact the kind of videos creators make, but global changes in the algorithm will *absolutely* change how creators design their content. 

Economists refer to these kinds of second-order changes in behavior as "general equilibrium effects" (as distinct from "partial equilibrium effects," which is what they call the direct effect of a change in a system). And once you start to look for them you see them everywhere. But the magnitude of general equilibrium effects will usually vary with the size of the initial stimulus, which is why experiments tend to underestimate the general equilibrium effects that emerge during full scale rollouts. Moreover, ecosystem changes take time, meaning that experiments run for days or weeks will tend to underestimate 

The problem of experiments, external validity, and general equilibrium effects is not unique to e-commerce or tech platforms. To illustrate, consider the case of a public health experiment in Rajastan, India.[^nurses] Absenteeism is a major problem in government medical facilities in Rajasthan, and so in cooperation with the health officials and a nongovernmental organization (NGO), a set of researchers designed an experiment in which the NGO would use timeclocks to monitor attendance of midwife nurses at rural clinics and pass this information to the government in a random subset of government clinics. The government then used the data to apply fines and punishments to nurses' wages if they failed to show up at the clinic. During the first six months of the study, the experiment proved to be a huge success, with attendance nearly doubling. 

But in a followup conducted 16 months later, the authors discovered that "general equilibrium effects" had come into play, and nurses dissatisfied with fines had managed to mobilize against the system. In the words of the authors, "After the first 6 months, however, the local health administration deliberately undermined the
incentive system. The result was that, 16 months after program inception, there was no difference between the absence rates in treatment and comparison centers; both were extremely high (over 60%)."[^nurses2]

In this case, of course, we know about the general equilibrium effect because the experiment was relatively large — it covered 72 clinics (33 "treated") serving 135 villages — and was left running for a year and a half. But the main point — that these effects are not at all unique to big tech and are likely to be overlooked by most experiments — still stands.

[^nurses]: The study is detailed in the evocatively named "[Putting a Band-Aid on a Corpse: Incentives for Nurses in the Indian Public Health Care System](https://doi.org/10.1162/JEEA.2008.6.2-3.487)" by Abhijit V. Banerjee, Esther Duflo, and Rachel Glennerster, published in the *Journal of the European Economic Association* in 2008. [A non-paywalled summary of the paper can be found here](https://pmc.ncbi.nlm.nih.gov/articles/PMC2826809/).

[^nurses2]: Page 2 of NIH published manuscript.
