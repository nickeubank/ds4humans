# The Fine Print of ATE

In addition to these conceptual issues, there are also a handful of technical issues to be aware of when calculating treatment effects.

## SUTVA

Implicit in our discussion of the potential outcomes framework and definition of ATE is the idea that when we assign one unit to treatment or control, it has no impact on the outcomes of other units.

The reason we care about this is that we want our control group to have the same outcomes in a world without anyone being treated. But if the treatments we provide have indirect effects on our controls, this is violated, and we aren't really comparing our treatment group to true controls.

It is often the case that experiments easily satisfy SUTVA. For example, consider a medical trial where we give people in the treatment group a new cholesterol medicine, and give a control group the standard cholesterol medicine. The fact I'm giving people in the treatment group a new cholesterol medicine doesn't have any effect on the cholesterol of people in the control group. In other words, there are no "spillovers" to my treatment assignment -- the people in the control group really are living the same life they would if no trial were taking place.

By contrast, consider a medical trial of vaccines. If the vaccine works, then the assignment of some people to treatment increases immunity in a community, making it less likely the people in our control group get sick. In the extreme, if we randomly gave our vaccine to 99% of people, the odds the disease we're vaccinating against would ever reach our 1% control sample is almost zero.

When this happens, our experiment is said to violate the SUTVA assumption because we aren't really comparing treated individuals to control individuals, we're actually comparing treated individuals to kinda/indirectly treated individuals.

A few notes for those who like math:

- SUTVA is embodied by the use of additively separable outcomes in our potential outcomes derivations.
- SUTVA stands for "stable unit treatment value assumption", meaning that a unit assigned to control stays assigned to control. If we have spillovers from treatment into control, then our control units are kinda being treated, so their "treatment value" is no longer stable.

**Where does this actually come up?**

In industry, you have to think about SUTVA on any platform with lots of interactions between users. If you run an A/B test on the matches people see in a dating app, their change in behavior will also change the behavior of users in your control group. Similarly, changing a Facebook users' Newsfeed will change what they share, resulting in changes to the experience of other users (potentially including your "control" users).

There are ways around this -- for Facebook experiments, you can experiment only on individuals who are *very* far apart from one another socially in the hope that changes in users' behavior won't reach one another. But even this is problematic -- if you're testing a new feature, giving it to one person may not accurately reflect what would happen if you gave it to one person *and* all their friends. In those cases, you can "block randomize", randomly assigning big groups to control or treatment instead of individuals, while also trying to make sure treatment and control groups are far from one another.

So remember: ATE is best defined when you have a clear units of analysis that is relatively isolated from other units. If people are interacting, you want to think about more advanced randomization strategies.

**Units, Not People**

It's also important to remember that SUTVA is not explicitly about people; it's about units of analysis. That means if you can find *groups* that are fully isolated, you can treat each group as a unit of observation. For example, it is common in development economics to assign *rural villages as a whole* to either treatment or control, since we think that if we assigned some individuals within a village to treatment and some to control, those people would likely interact in ways that violate SUTVA. But since rural villages in developing countries are *relatively* isolated from one another, we think that the treatment assignment of each *village* should be independent of outcomes for other villages.
