# Limitations of Average Treatment Effects

We've now discussed at length all the magical things we get from randomized experiments. But let's take a moment to also discuss some of the limitations -- both practical and conceptual -- of experiments and the "average treatment effect" (ATE) framework.

## Who's Average?

Of all the potential problems with ATE, perhaps the biggest is that *it's just an average*.

If everyone in our data has the same response to treatment (in the lingo, if we have "homogeneous treatment effects"), then this isn't a problem -- estimating the average treatment amounts to estimating every individual's individual treatment effect.

In the real world, however, there are almost always heterogeneous (varying) treatment effects across groups and individuals.

Consider the following example: In 2018, the FDA approved a new drug for treating chronic migraines (Aimovig) that is being hailed by some as a "game changer" in migraine treatment. As is required for drug approval in the US, the pharmaceutical companies developing Aimovig had to conduct clinical trials in which a random sample of people with chronic migraines received Aimovig (treatment), and a random sample did not (control). They then calculated an "Average Treatment Effect," which the FDA then used to determine whether to release the drug. If you see an ad for Aimovig, you'll probably see this ATE reported as follows:

![migraine_average_effect](images/migraine_average_effect.png)

Cool! Setting aside the fact the companies selling Aimovig are pushing the reduction in migraines count from before the trial to after (and hiding the actual difference between control and treatment in the fine print -- *any* medical intervention tends to reduces symptoms, so you really do have to compare outcomes between treatment and control groups), the ATE of the drug appears to be about 2-3 fewer days of migraine a month (reduction of 6-7 in treatment minus 4 in control) for people who have 15+ headaches and >8 migraines a month.

That's good -- chronic migraines can be a crippling disability, and any improvements are exciting -- but you'd be excused for asking why people are so excited about what seems like a relatively small reduction.

The answer is that the treatment effect of Aimovig is *extremely* heterogeneous. *Most* people who take Aimovig see little to no benefit, but *some* (depending on your criteria, something like 40%) see their migraine frequency fall by 50% or more.

And herein lies the problem of ATE: it doesn't tell us about the *distribution* of effects.

To help understand heterogeneous effects, it is common in experimental analyses to look for differences in outcomes across subpopulations. For example, we might split our sample into men and women and see whether the treatment effect differs between the two groups.

This can be especially important in interventions that may have disproportionate impacts on certain sub-populations. A sales tax, for example, may have a low average effect on the amount of money households have to spend on their children's education, but among low-income households, that effect may be very large.

Here again, we see the role of researcher discretion and values in data science — if you *just* present someone with an average treatment effect, they will generally interpret it as "the" treatment effect, so it's up to you to ensure that decision makers are aware of not just the *average* effect of an action, but also the distribution of consequences.

(On a technical note: splitting your sample also reduces the sample size in each bucket, so it reduces your statistical power. That means it isn't always feasible -- usually you can only do it for proportionately large groups in your data (men and women), but not small groups (say, Latino households with two children making less than \$30,000 a year.)

## Heterogeneous Treatment Effects & No Differential Treatment Effects

We've now introduced two distinct but related concepts: heterogeneous treatment effects and the "No Differential Treatment Effects" assumption It can be easy to get them confused, however, so its worth discussing how they relate.

**Heterogeneous treatment effects** is the idea that not everyone responds to treatment the same way. Heterogeneous treatment effects are probably always present to some degree. Sometimes this matters — as in the discussion of Aimovig above — while in other cases the differences are small relative to the overall treatment effect, or one may only care about the average effect.

The **No Differential Treatment Effects** assumption is that idea that for our estimate of ATT to be a valid estimate of ATE, it must be the case that there are no *systematically differences* in how our control and treatment groups respond to treatment. That is to say, the "No Differential Treatment Effects" assumption is not that there are no heterogeneous treatment effects, but rather that the way people respond to treatment is not strongly correlated with whether we observe them being treated ($D=1$) or not ($D=0$). "No Differential Treatment Effects" is violated, in other words, when there are (a) heterogeneous treatment effects, *and* (b) how people respond is strongly correlated with $D$.
