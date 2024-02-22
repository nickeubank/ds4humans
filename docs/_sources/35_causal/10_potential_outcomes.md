# The Potential Outcomes Framework

We've all heard the saying "correlation does not imply causation." And that's true, as far as it goes. But the saying would be more accurate (albeit less catchy) if it were "correlation does not *necessarily* imply causation." That's because while it is true that correlation does not always imply causation, it does under certain circumstances.

In this chapter, we will learn about the *Potential Outcomes Framework.* The Potential Outcomes Framework introduces mathematical notation to our discussion of parallel universes, and in doing so allows us to reason far more rigorously about causal effects.

Crucially, the Potential Outcomes Framework will also allow us to be very precise about what it is we are measuring when we measure a correlation, what we need to measure in order to answer a Causal Question, and what must be true for those two quantities to be the same.

## The Potential Outcomes Set Up

The potential outcomes framework is built around the idea that we all have well-defined *potential* outcomes that would be observed if we were to be exposed to a treatment, and also potential outcomes that would be observed if we were not (i.e., we were exposed to a "control" condition). These potential outcomes are fixed and defined values within each of us. But, of course, the challenge is that we can only ever *observe* ourselves in one state of exposure.

Let's suppose that we are interested in the effect of some treatment $T$ on an outcome $Y$ for a population of individuals $i \in {1, 2, 3... N}$.

For ease of exposition, we will begin by assuming that our treatment $T$ is a *binary treatment*, meaning it can only take on two values: $T \in \{0, 1\}$. There's nothing special about binary treatments, but they simplify notation, and so we often use them when discussing the potential outcomes framework, though everything we discuss here generalizes to continuous treatments.

```{warning}
Although we use the terminology *treatment* and *control* — terms you have most often encountered in the context of clinical trials — there is no, I repeat, **no** notion of randomization here. We can read $T=1$ as "with the causal factor of interest present" and $T=0$ as "without the causal factor of interest present," where the reason for the presence or absence of the causal factor of interest is unknown. 

This is often a source of confusion, so it bears repeating. We call this a *treatment*, but in doing so we do not imply that the receipt of treatment came from a randomized application. Instead, we are simply saying that $T=1$, for instance, indicates a state in which the causal factor of interest is present.
```

Corresponding to the two values of our treatment variable, we also have two values of our outcome variable — $Y_i$ — for each individual. In particular, an individual $i$ has both a potential outcome under the treatment condition ($i$'s value of $Y$ in a world where $i$ receives the treatment):

$$Y^{T=1}_i \equiv Y^{1}_i$$

and a potential outcome under the control condition ($i$'s value of $Y$ in a world where $i$ does not receive the treatment):

$$Y^{T=0}_i \equiv Y^{0}_i$$

We can think about these individual-level realizations of the random variable as the potential outcomes in different theoretical states of the world that we all carry within ourselves. We have a potential outcome for if the world is $T=1$, and we have a potential outcome for if the world is $T=0$. They both exist simultaneously in us, though we are only able to observe one.

### The Observed Outcomes Set Up

Now that we have defined the potential outcomes, let's discuss the set up for *observed* outcomes. Where $T$ was in effect the theoretical treatment condition that allowed us to define *potential* outcomes for a theoretically applied causal factor, we use $D$ to refer to the *observed* receipt of either treatment or control.

$$D \in \{0,1\}$$

As with T, whether $D$ is equal to zero or one is not (necessarily) a function of randomization. We should read $D_i = 1$ as "observed with the causal factor of interest" and read $D_i = 0$ as "observed without the causal factor of interest."

Because $D$ is observed, not just potential, it is not possible for an individual to *simultaneously* be observed in treatment and control. Therefore, for individual $i$

$$D_{i} = 0 \text{ or } D_{i} = 1$$

Either we have an individual observed with the causal factor of interest present, or without the causal of interest present, but not both.

It follows that, for a given value of $D$ — that is, for the given observed presence of the causal factor of interest or not — we will only ever be able to *observe*

$$Y^0_i  \text{ if } D_{i} = 0$$
or

$$Y^1_i  \text{ if } D_{i} = 1$$

But for any individual $i$, we cannot observe both.

```{note}
Why $D$? Honestly, I'm not sure, but I *think* it's related to the term "dummy variable," which is another term for an indicator variable. When analyzing actual, observed data, one often finds a dummy variable in the data that indicates whether a given observation was exposed to treatment or not. Since that dummy is indicating the actual, observed treatment status of an observation, it (kind of) makes sense to call this variable $D$.
```

```{warning}
There is a natural tempatation to think of $T$ and $D$ symmetrically, given that both take on two values and are related to treatment exposure. Avoid this temptation.

Where the potential outcome frameworks assumes all entities have outcomes defined under both conditions of $T$ ($Y^0_i$ and $Y^1_i$), any given entity has only **one** value of $D_i$. In the world we live, each entity either did or did not experience the treatment.

So while $T$ relates to a pretty abstract notion of parallel worlds, $D$ **just defines two different populations of entities in the data**.)
```

```{sidebar}
$D_i$ just defines two different populations of entities in the data.
```

## Defining The Causal Effect

Now that we have that notation out of the way, let's apply it to the definition of causation we introduced in our previous readings. We previously said that the *effect* of some treatment $T$ on $Y$ for an individual $i$ is the difference in $i$'s outcomes in a world where the individual receives the treatment and $i$'s outcomes in a world where they do not. In our new notation, we can call this quantity $\delta_i$, and write it as:

$$\delta_i = Y^1_i - Y^0_i$$

That is, for individual $i$, the causal effect, defined as $\delta_i$, is the difference between the individual *potential outcome* for the state of the world where the causal factor is present, minus the *potential outcome* for the state of the world where the causal factor is not present.

Of course, this is *clearly* a quantity we'll never be able to observe — no person is ever able to be *both* subject to the treatment and not be subject to the treatment. And so for reasons that will become obvious later, we'll need to move from estimating an *individual* quantity to estimating a quantity for a *population*.

When we move from the individual to the population, the causal effect needs to be defined as some sort of summary statistic that incorporates the information from the realization of the random variables $Y^{T}$ for *all* individuals.

The first quantity we will investigate is the Average Treatment Effect, abbreviated as the ATE. We can define this quantity as:

$$
ATE =& \frac{1}{N}\sum_{i \in {1, 2, 3 ... N}}\delta_i \\
=& \frac{1}{N}\sum_{i \in {1, 2, 3 ... N}}Y^1_i - Y^0_i
$$

To avoid the constant need for summation notation, however, let's assume our data is a random sample from the population we care about and move to working with expectations ($E()$):

$$
ATE & = E(\delta_i) \\
& = E(Y^1_i - Y^0_i) \\
& = E(Y^1_i) - E(Y^0_i)
$$

(We can bring the expectation inside the parentheses in this last step because the expectation is a linear operator.)

The equation above is similar in look and interpretation to $\delta_i$ at the individual level further above. And the logic is exactly the same. We have simply moved from assessing the causal effect for an individual to assessing an *average* causal effect for a population, and thus taken the expected value of the individual-level causal effects for our entire population.

Why do we care about the Average Treatment Effect? While not perfect, it is our best guess for the average change in our outcome of interest we would observe if *everyone* in the population we are studying were subject to treatment. Thinking about authorizing a new prescription drug? You want to know the average effect it will have across all patients who take it. Thinking about launching a big advertising campaign? You want to know the average effect it will have on all the consumers who see it. $ATE$, in other words, is the quantity your stakeholder — who wants you to answer a Causal Question because they want you to predict the effect of some action they're thinking of taking — wants to know.

## What Is a Correlation?

Having established the quantity we *want* to measure — the Average Treatment Effect for a population, $ATE = E(Y^1_i) - E(Y^0_i)$ — let's pause for a moment to come at things from the other side.

We have established that $ATE$ is what we *want* to measure. But the fact we will never be able to observe both $Y^0$ and $Y^1$ for our full populations — and thus we can never directly observe $E(Y^1_i) - E(Y^0_i)$ — remains true. So let's pause for a moment to ask: "What *can* we observe?"

The first thing we can observe is outcome $Y^0_i$ for all $i$ that weren't actually subject to treatment (i.e., for whom $D_i = 0$). Given that, we can estimate:

$$E(Y^0_i | D_i = 0)$$

And we can observe $Y^1_i$ for all $i$ that *were* actually subject to treatment (i.e., for whom $D_i = 1$). So we can also estimate:

$$E(Y^1_i | D_i = 1)$$

And if we estimate the difference between the outcomes for these two populations — those who were treated ($D_i =1$) and those who were not ($D_i = 0$) — we get the following quantity:

$$E(Y^1_i | D_i = 1) - E(Y^0_i | D_i = 0)$$

What is this? Well, it turns out that, for a binary treatment, this is the correlation between being treated and our outcome Y. It is, in fact, the exact quantity you get from a linear regression of $Y$ on $D$!

And this is where all this notational work gets interesting. Most statistics students throw up a slide at the end of any presentation that says "but of course correlation does not imply causation" and move on — invoking this saying like an incantation they hope will protect them from critical questions. But we don't have to be like most statistics students anymore.

Now that we've rigorously defined what we measure when we estimate an empirical correlation, and we know what need to measure in order to measure a causal effect, we can ask: when are these two equal? Because if we can detail the conditions under which these two quantities are the same, then we've identified the situations in which correlation *does* imply causation.

```{note}
If this type of conditioning notation (the $| D_i = 1$ inside expectation) feels foreign, just think of it as subsetting the population for which you are estimating average outcomes. Again, $D$ is just a variable for differenting between the two populations in our data — those that were exposed to the treatment and those that were not.
```

## Correlation and Causation

Let's begin by giving the empirical correlation between treatment and outcomes a name. As we're *trying* to estimate the Average Treatment Effect ($ATE$), we will use the convention of adding a "hat" to a variable to indicate it is an empirically estimated quantity (rather than the "true") quantity. Thus our correlation betweens:

$$\widehat{ATE} = E(Y^1_i | D_i = 1) - E(Y^0_i | D_i = 0)$$

So when does this equal $E(Y^1_i) - E(Y^0_i)$? Let's apply a few manipulations to see if we can get $\widehat{ATE}$ to look like $ATE$.

First,  we use that classic math trick of adding and subtracting a carefully chosen term to an equation. This addition and subtraction offsets, so this is the same as adding 0 (and is thus allowed), but ends up being very helpful. In particular, we will add and subtract $E(Y_i^0|D_i = 1)$:

$$
\widehat{ATE }=  E(Y_i^1|D_i = 1) - E(Y_i^0|D_i = 0) + \underbrace{E(Y_i^0|D_i = 1) - E(Y_i^0|D_i = 1)}_\text{(Add up to zero)}
$$

We can then shuffle these terms around to isolate two distinct quantities of interest: The Average Treatment Effect on the Treated (ATT), and Baseline Differences:

$$
\widehat{ATE }&=  E(Y_i^1|D_i = 1) - E(Y_i^0|D_i = 0) + E(Y_i^0|D_i = 1) - E(Y_i^0|D_i = 1) \\
&= \underbrace{E(Y^1_i|D_i = 1) - E(Y_i^0|D_i = 1)}_\text{$ATT$} + \underbrace{E(Y^0_i|D_i = 1) - E(Y_i^0|D_i = 0)}_\text{Baseline Difference}
$$

### Baseline Differences

Let's actually start with the second of these quantities, *Baseline Differences*.  In substantive terms, Baseline Differences is just the difference in our outcome $Y$ that would exist between our two groups (who *actually did* receive the treatment ($D_i = 1$) and the people who didn't ($D_i = 0$)) *in a world where no one was treated*. That's why we call these "baseline" differences — they are differences in outcomes that we would observe even in a world that the treatment we are interested didn't exist.

While I will use the term *Baseline Differences* for this quantity in this book, it also corresponds to the concept of "confounders" — factors that create a difference in outcomes between the treated group and the untreated group that are not caused by the treatment.

Unsurprisingly, therefore, the first condition that must be met for our correlation to imply causation (for $\widehat{ATE}$ to equal $ATE$) is for there to be no baseline differences:

```{note}
**No Baseline Differences:**

$$
0 = E(Y^0_i|D_i = 1) - E(Y_i^0|D_i = 0)
$$(eqn:condition_1)
```

When true, our equation for $\widehat{ATE}$ simplifies substantially from:

$$
\widehat{ATE} = \underbrace{E(Y^1_i|D_i = 1) - E(Y_i^0|D_i = 1)}_\text{$ATT$} + \underbrace{E(Y^0_i|D_i = 1) - E(Y_i^0|D_i = 0)}_\text{Baseline Difference}
$$

to

$$
\widehat{ATE} = \underbrace{E(Y^1_i|D_i = 1) - E(Y_i^0|D_i = 1)}_\text{$ATT$}
$$

So what, then, is ATT?

### Average Treatment Effect on the Treated (ATT)

Perhaps the easiest way to understand $ATT$ is to directly compare the formulas for $ATT$ with $ATE$:

$$
ATT =& E(Y^1_i|D_i = 1) - E(Y_i^0|D_i = 1) \\
ATE =& E(Y^1_i) - E(Y_i^0)
$$

As you can see, the only difference between the two terms is that $ATT$ is just the $ATE$ *for the population of entities that were actually subject to the treatment ($D_i = 1$).

So for our estimated correlation $\widehat{ATE}$ to be the same as the Average Treatment Effect $ATE$ we are most interested in, it must be the case that $ATT = ATE$. When does that happen?

Well, as you may recall, the Average Treatment Effect is just an average effect of the treatment for everyone being studied. That means that if $\lambda$ is the share of the population for which $D_i = 1$, then $ATE$ is:

$$
ATE =& E(Y^1_i) - E(Y_i^0) \\
 =& \lambda \left(\underbrace{E(Y^1_i | D_i = 1) - E(Y_i^0 | D_i = 1)}_\text{ATT}\right) + (1-\lambda) \left(\underbrace{E(Y^1_i | D_i = 0) - E(Y_i^0 | D_i = 0)}_\text{Avg Treatment Effect on Untreated}\right)
$$

So when does $ATT = ATE$? When $E(Y^1_i | D_i = 1) - E(Y_i^0 | D_i = 1) = E(Y^1_i | D_i = 0) - E(Y_i^0 | D_i = 0)$. Or, in substantive terms, when the average effect of our treatment is the same for the subpopulation we observe experiencing the treatment as it is for the subpopulation that we observe *not* experiencing the treatment:

```{note}
**No Differential Treatment Effects:**

$$
ATT &= E(Y^1_i|D_i = 0) - E(Y_i^0|D_i = 0) \\
E(Y^1_i|D_i = 1) - E(Y_i^0|D_i = 1) &= E(Y^1_i|D_i = 0) - E(Y_i^0|D_i = 0)
$$(eqn:condition_2)
```

```{note}
What would it look like for different populations to respond differently to treatment, and why might that happen in the real world? Well, it turns out it happens a lot when you aren't doing randomized experiments.

Suppose you polled your classmates after an exam, and they *all* had headaches. Half of your classmates then choose for themselves to use acetaminophen (Tylenol) ($D_i=1$), and immediately feel better. Should you infer, then, that the ATE of acetomenophen is 100%?

Well... probably not. While it sounds like the $ATT$ may be 100%, it's worth asking *why* the other half of students *didn't* take acetaminophen. What if they didn't take acetaminophen because they knew from past experience that acetaminophen doesn't alleviate their headache pain? In other words, the students who didn't take acetaminophen ($D_i = 0$) chose to not take acetaminophen precisely because they already *knew* that its effect on them is 0. Then we have a clear situation where $ATT \neq ATE$.
```

## Wrapping It Up

We started off this chapter by noting that correlation does not *necessarily* imply causation. But there are certain condition under which correlation *does* imply causation, and we now know what those conditions are.

First, for our observed correlation between treatment and our outcome of interest to imply a causal effect, it must be the fact that there are no Baseline Differences. If there are Baseline Differences between the treated and untreated, then we just don't have a way to know what portion of the difference between these groups is the effect of treatment and what differences were pre-existing.

(Some of you may be saying "But wait! Can't I use a regression to estimate what share of differences are down to observable differences?" Yes, and we'll discuss that soon, but the key word is "observable" — regression can help address Baseline Differences *if* we can measure the factors that give rise to those differences.)

If we don't have Baseline Differences, then our correlation is at least a good estimate of the Average Treatment Effect on the Treated ($ATT$) — that is, the causal effect of our treatment *on the subpopulation that we observed experiencing to treatment*. And there will be times that the best we can do is get a good estimate of $ATT$.

But if we really want to get a good estimate of the Average Treatment Effect for the *full* population we're studying — something we want if we want to be able to estimate the effect of our treatment if we roll it out to everyone — then we also need it to be the case that the people we observe receiving the treatment ($D_i = 1$) respond to the treatment in the same way as those that don't ($D_i = 0$).

### Testability of Assumptions

Any now the big catch: we need two conditions to be true to be sure we are getting a good estimate of a causal effect:

$$
0 & = E(Y^0_i|D_i = 1) - E(Y_i^0|D_i = 0)\\
E(Y^1_i|D_i = 1) - E(Y_i^0|D_i = 1) &= E(Y^1_i|D_i = 0) - E(Y_i^0|D_i = 0)
$$

But neither of these are directly observable. In the case of No Baseline Differences, we can never directly observe $E(Y^0_i|D_i = 1)$. And in the case of No Differential Treatment Effects, neither $E(Y_i^0|D_i = 1)$ nor $E(Y_i^0|D_i = 1)$ are observable.

As a result, it is only through critical thinking and domain knowledge that we can do our best to *reason* about whether we believe these conditions are met in any given situation. And *that* is why causal inference is hard.
