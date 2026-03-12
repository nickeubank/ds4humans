# Causal Report

The final portion of your team project in IDS 701 will entail writing a Causal Report in which you answer one Causal Question. The Causal Question you answer should be related to the problem you articulated at the beginning of the semester and should be motivated by the lessons learned while completing your Exploratory Report. 

You are not restricted to the precise problem articulation you used at the beginning of the semester; data science projects can — and should — evolve over time as you learn more about your case. In answering your Descriptive Questions, you (hopefully!) improved your understanding of your problem. The lessons learned during that process should inform what you choose to focus on now. 

## Picking A Causal Question

Begin your Causal Report by choosing a Causal Question that, if answered, would help solve your problem. This question probably be motivated by an intervention you could imagine your imagined stakeholder taking. That doesn't mean you have to have data on someone doing the exact thing you think your stakeholder may want to do, but you will need data where there is some *variation* in the causal factor of interest (the thing the intervention would change).

Because this is a class project, it is very unlikely you will be able to do an experiment (though students have found ways to do them in the past, and I certainly welcome experimental proposals!). Instead, you will probably work with *observational data* — data on something that happened in the world that was not a deliberate experiment or subject to another source of random variation. 

As we will discuss in class very soon, there are *lots* of methods for answering Causal Questions without randomized experiments, and many of the most important things we know about the world were learned without experiments. Much of what we know about public health, for example, was established without randomized experiments. The fact that [contaminated water causes the spread of cholera](https://en.wikipedia.org/wiki/John_Snow#Cholera) was famously established by John Snow before the germ theory of disease had even been discovered. We established that smoking causes cancer without randomly assigning people to smoke cigarettes for years. And the negative effects of lead exposure in children did not come from randomly exposing some children to lead and watching them for the next two decades. 

## Practical Requirements

In the weeks that come, we will discuss empirical methods for answering Causal Questions with observational data. I apologize for this material coming so late — I changed the sequencing of the class this year to make it more coherent, but it is less than ideal with respect to the timing of some of this material and the final project timeline. 

With that said, you already know enough to do a lot of the work necessary for answering a Causal Question. First, you've done the work in your Exploratory Report of learning about your problem. Those lessons should inform the question you seek to answer, and much of the content of that report you can put in your Causal Report to help motivate that analysis. 

Second, you understand what makes something a Causal Question — it is a question about how changes in a causal factor of interest ($T$ in the Potential Outcomes Framework) will affect an outcome of interest ($Y$ in the Potential Outcomes Framework). With that in mind, the first thing you will need is data that includes your outcome of interest ($Y$) and has variation in treatment exposure. In other words, your dataset must have both observations that were exposed to your causal factor of interest ($T=1$) observations that were not ($T=0$).

Why? Recall that the counterfactual definition of causality is that "X causes Y" is equivalent to saying "if X is present, then Y will have a certain value **and** if X is not present, then Y will have another value." Given that, we can only establish the effect of X on Y if we have data on situations where X is present and where X is not present. 

(If your causal factor of interest is continuous rather than discrete, then obviously you won't be looking for observations with and without the treatment per se. Rather, you will need data where your causal factor of interest varies enough to potentially induce meaningful variation in your outcome.)

## Empirical Strategies

Once you have data with variation in your causal factor of interest, the next step will be choosing an empirical strategy. Between now and the end of the semester, we will discuss a number of empirical strategies, such as regression, matching, fixed effects, event studies, and differences-in-differences. 

The goal of all of these strategies is similar. We can never observe both $y^{T=1}_i$ and $y^{T=0}_i$ for the same entity $i$ at the same moment in time, so instead we need to find and compare observations that are *as similar to one another as possible* in terms of their potential outcomes. That way, any differences we observe between our treated units and untreated units we will feel confident are the result of the treatment and not other confounders. 

Matching accomplishes this by looking for observations that are as similar as possible to one another in terms of all available measurable properties except treatment exposure. We then estimate the effect of our treatment by comparing outcomes between these similar observations.

Regression accomplishes this by using statistics to model (and thus account for) the way observable differences other than treatment may be causing differences in $Y$.

Fixed effects is a form of regression that tries to limit comparisons to differences within individuals over time. 

Event studies look for changes in outcomes within individuals over time associated with discrete events, like natural disasters or changes in government policy.

And finally, differences-in-differences attempts to combine some of these strategies in a manner that's a little hard to summarize, but which many of you saw in Practical Data Science (IDS 720).

We will cover these all in detail in class soon, and you may not be ready to employ one of these research designs until we do. Nevertheless, you should be able to get things in place — and ask me any questions you may have — in advance, reducing the work required towards the end of the semster.
