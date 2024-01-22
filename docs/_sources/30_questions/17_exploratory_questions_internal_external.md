# Internal versus External Validity

It is at this point I have to come clean about having employed a... small indirection. At the top of this reading, I introduced the idea that answering Exploratory Questions boiled down to creating (1) understandable summarizations (2) of meaningful patterns, and (3) ensuring those summaries faithful represent the data. But that three-part objective is actually only one-half of answering an Exploratory Question. More specifically, those are the three components of ensuring high *internal validity* when answering an Exploratory Question. But to generate a truly useful answer to an Exploratory Question, your analysis must also have high *external validity*.

Essentially, *internal validity* is a measure of how well you have analyzed *the data you have*, while *external validity* is how well you expect the answer you generated from that data to generalize to your stakeholder's context. Internal and external validity arise when answering *any* data science question, and so these two concepts are ones that we will return to time and again in this book.

While the idea of internal validity will feel familiar to anyone who has taken a statistics of machine learning course, external validity is often less discussed in the classroom. This is not because it is less *important* than internal validity. One reason for this is that it is harder to evaluate external validity using statistical methods, causing some instructors to think of it as "outside the scope" of a statistics course. But the second reason I suspect this occurs is more subtle: while a given analysis may be said to have good or bad internal validity, it cannot be said to have good or bad external validity. Rather, the external validity of a study must always be evaluated *with respect to a specific context to which one wishes to generalize the findings.*

This means that external validity is different from internal validity in an important way: when faced with the same facts about a study, everyone should *generally* agree on the internal validity of a study, but the external validity of a study really depends on how you want to use the results. A study of medical care provided to Duke undergraduates may have very *good* external validity with respect to undergraduate students at Emory, UNC, Vanderbilt, and other elite universities with associated research hospitals (that is, the conclusion of the study of Duke students is likely to also be valid for those other students). But that same study may have *poor* external validity with respect to lower income students attending community colleges that have less comprehensive student health insurance and no top-tier associated hospital system. And it would certainly have terrible external validity with respect to all Americans, never mind people living in other countries.

## Interval v. External Validity: An Example

To illustrate what is meant by these terms, suppose you've been hired by a car manufacturer. Through extensive market research, they have determined that if they can improve the safety of their cars, they could dramatically improve the image of their brand. They have turned to you, their in-house data scientist, to help them determine what safety enhancements they should focus on developing.

To help them prioritize their efforts, you decide it would be useful to begin by better understanding the predominant causes of major accidents. After all, if 95% of accidents were caused by mechanical failures, bad weather, and drunk drivers, then even a perfect system for preventing drowsy driving accidents could only reduce accidents by 5% at best![^safety_v_customer_perceptions]

[^safety_v_customer_perceptions]: It is worth noting that if the goal of the company is to improve brand image and sales — rather than improve safety as much as possible — then what matters is not what *actually* causes the most accidents, but rather what customer *perceive* causes the most accidents. But let us assume — for the sake of this exercise — that your employer's interest in reducing accidents is sincere. If there is a divergence between customer perceptions and the reality of accident causes, that could be addressed with additional information embedded in any advertisements of the feature being developed.

The best source of accident investigations of which you are aware is the [US National Highway Traffic Safety Administration's](https://www.nhtsa.gov/data) National Center for Statistics and Analysis (NCSA). Using their *Crash Reporting Sampling System*, the NCSA collects and publishes data from "nationally representative sample of police-reported traffic crashes, which estimates the number of police-reported injury crashes and property-damage-only crashes in the United States," as well as data on all fatal accidents collected through their *Fatality Analysis Reporting System*.

The NCSA provides you with data on police-reported accidents from the Crash Reporting Sampling System and all fatal accidents from the Fatality Analysis Reporting System from the past 5 years (2018-2023). As you turn to using this data to analyze the causes of severe accidents for your stakeholder, what internal and external validity concerns might you have in the back of your mind?

### Internal Validity Concerns

Internal validity concerns, in this context, relate to your ability to properly characterize the causes of severe accidents in this data. The first of these concerns are those discussed in our previous two readings — namely, whether the summarizations of accident causes you generate from this data are meaningful and faithful representations of the patterns in the data.

But internal validity concerns also extend to things like concerns over the accuracy with which things are measured. For example, it's reasonable to ask "How well do police accident reports capture the true causes of an accident?" Some factors — like whether a driver was intoxicated — are easy to verify after the fact in major accidents. Other factors, however, may have contributed to accidents — and be easier to address with driver assistance systems — but may have been too hard to verify for the police to put in their reports. For example, maybe weak headlights prevented the driver from seeing a change in the speed limit (causing the documented cause of the accident: speeding). Or perhaps one driver was unable to see an approaching vehicle on a cross street due to width of the A-piller (that piece of metal running vertically between the front windshield and front side window). Or "weather" may be invoked as a cause in an accident when what was really at play was that the driver had the wipers on too low of a setting (and automatic wipers would have adjusted more quickly, preventing the accident).

All of these are question about whether our summarization of the **data** provides a proper characterization of **the world** for the period and group we think are covered.

### External Validity Concerns

But worrying about whether we really understand the world covered by our data is only half the battle. After all, our stakeholders aren't planning to go back in time 5 years and add a new driver safety system to their cars starting in 2018; they're thinking of developing this safety system to use *in the future*. So what do we think is the *external validity* of findings from 2018-2023 to the next ten years?

To answer this question, we need to consider how the next ten years might differ from the last five *in ways that are relevant to the phenomenon we care about* (here, the causes of car accidents).

First, since time will have passed between when the crash data was collected and when the new feature rolls out, one might reasonably assume that trends in accident causes during the 2018-2023 period are likely to continue. In light of that, a thoughtful data scientist may wish to pay extra attention to whether there are clear *trends* in accident causes, and in what direction they are trending.

But one might also pause to ask whether there was anything exceptional about the "data generating process" during the 2018-2023 period that would not obtain in later years. Something like... a pandemic?

And indeed, one would be right to worry. The figure below shows Vehicle Miles Travelled (VMT) and Fatalities in 2019 (pre-pandemic) and 2020 (the pandemic began in force in March, if you've forgotten). As the figure shows, driving plummeted during this period, and so too did Fatalities.

![Vehicle Miles Travelled and Fatalities, 2019 v. 2020](images/2020_vmt_fatalities.png)

Source: Taken from the US Department of Transportation NHTSA's [*Overview of Motor Vehicle Crashes in 2020*](https://crashstats.nhtsa.dot.gov/Api/Public/ViewPublication/813266)

Given that, a thoughtful data scientist may wish to be sure that any patterns identified in this five-year period are robust to exclusion of 2020-2022 before making any predictions about the likelihood these patterns would persist in later years.

#### Other Contexts

The preceding discussion assumed an interest in US accidents, but of course most car companies that sell cars in the US also sell cars in Asia and Europe. The issues raised above are examples of what I would contend are relatively *small* threats to the external validity of findings based on data from 2018-2023 with respect to near-future US accidents (at least provided the patterns aren't driven by the pandemic period).

But external validity to Asian or European markets would be a much bigger concern. Because traffic laws, speed limits, alcohol laws, and how roads are constructed and laid out are all very different in different regions of the world, it seems quite unlikely that patterns identified in US accident data would have much external validity to Asian or European auto markets.

## Conclusion

Internal and External Validity are both key concepts for being an effective data scientist, and they are concepts to which we will return regularly in this book. Moreover, they are goals that are sometimes in tension — the more control one has over a study context, the more likely one is to have good Internal Validity; but that control can often create an artificiality to limits External Validity. Thus Internal and External Validity should not necessarily be thought of as things to try and simultaneously maximize at all costs; rather, they are best thought of as distinct features of any analysis that should always be considered. I would also add that, of the two, I would argue that External Validity — while not more important in and of itself — is the more often overlooked.

## Reading Reflection Questions

- Why is the External Validity of a study only defined with respect to a given context?

<!-- ## External Validity

External validity is fundamentally about the *generalizability* of a study: whether the causal estimate found in a study is likely to also be a good guess for the causal effect in a different context.

External validity is one of the most important things to think about as a *consumer* of other people's research, because when you read other people's research, you're usually doing so because you're looking for information you can use to address a specific problem you face. In these situations, it's critical that you always ask yourself: are the results from this study likely to also be valid in the context of my problem?

Of course, when asking about the external validity of a study, we have to specify the setting to which we want to generalize its results. A study that looks at how Duke undergraduates' consumer behavior changes when faced with different types of ads on google may have good external validity in terms of its generalizability to other elite Univerities like Emory, Vanderbilt, or UNC. But it might not generalize to the US population as a whole.

### External Validity Considerations

There are many reasons that the results of a study may not generalize to a new context. Here are a handful of the most common issues to bear in mind:

**The study population may be different from the population in the new context.**

Almost by definition, the entities in the new context will be different from the entities in the original study (even if we're working with the same people, we're looking at them at a different time). But the key question for external validity is whether the entities in the new context are different *in a way that would impact their response to a given treatment*.

It's not hard to think of reasons that different populations may respond differently to a given treatment. For example, suppose a company finds ads for luxury cars increase sales among rich people in New York. It's hard to imagine that the same ad run in a poor neighborhood in Detroit would have the same effect.

As you think about population differences, make sure you consider not only standard demographic attributes (age, gender, wealth, education), but also cultural or social differences. Many issues businesses deal with -- especially advertising and brand image -- may be culturally specific, and so may not generalize to all communities.

This may all seem obvious as you read it, but using unrepresentative samples in research and medicine, then making recommendations for the general public is a huge problem in the real world.

White men are massively over-represented in [medical trials](https://www.theatlantic.com/health/archive/2016/06/why-are-health-studies-so-white/487046/), for example. Unsurprisingly, this means that when the results of those trials are generalized to the population as a whole, we suddenly discover (SURPRISE) that the predicted results didn't always hold for women or people of color! (e.g. [drug doses set for men are often too high for women](https://www.theguardian.com/lifeandstyle/2015/apr/30/fda-clinical-trials-gender-gap-epa-nih-institute-of-medicine-cardiovascular-disease); some heart drugs work great for White men, [but often interact poorly with a gene common in Asians and Pacific Islanders; and Multiple sclerosis turns out to be drive by a different mutation in Black patients than European descendants](https://www.vice.com/en/article/mbjjnp/medical-studies-still-exclude-people-of-color)).

And for the longest time, psychology research was based almost entirely on studies conducted using student volunteers. But of course, students at elite universities are not a representative population -- they're disproportionately Western, Educated, from Industrialized, Rich, and Democratic countries (they're WEIRD). And as a result, our academic model of human behavior is really just a [model of a bunch of WEIRD kids](https://slate.com/technology/2013/05/weird-psychology-social-science-researchers-rely-too-much-on-western-college-students.html).

Unrepresentative training data is also one of the reasons that so many machine learning algorithms are just plain racist (this isn't causal inference, but it's the same idea) -- if you train a facial recognition algorithm using predominantly white faces, turns out that they will either [not see Black faces](http://www.cnn.com/2009/TECH/12/22/hp.webcams/index.html), or worse, mis-identify people of color (which is a [really bad thing when those algorithms are being used by the police](https://www.wired.com/story/best-algorithms-struggle-recognize-black-faces-equally/)).

So while internal validity issues may seem more sophisticated and thus interesting, don't overlook the importance of these kinds of external validity issues!

**The treatment might differ between study and new context**

A study may declare that it has measured the effect of billboard ads on sales, or an infinite scroll on engagement. But it's always important to remember that while we may interprete studies in these general terms, the reality is that that billboard study probably measured the effect *of a specific set of billboard ads* on sales, and the infinite scroll study looked at the effect of infinite scroll *in a specific app*.

So always be careful to think about what *exactly* the treatment in a study was, and whether its likely to generalize to the case you study about.

**There may be scaling effects**

Often times when we're thinking about external validity, we're not just thinking re-using a treatment or intervention; we're thinking about scaling them up.

But an intervention that works on a few people / is only in place for a short period may not be a perfect model for what happens when that same intervention is applied at scale or permanently. For example, the returns to showing people a TV ad about your company for the first time is probably not the same as the returns to airing that ad the 1,000,000th time. Or sales from selling a special product at one store for a limited time may not be a good indicator of the sales you would see if your "special product" were available everywhere all the time.

People may also respond differently to an intervention when it gets big or becomes permanent. To illustrate, I'd like to tell a story about a famous experiment in India ([paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2826809/)).  

Rural health clinics in India have a huge problem: nurse absenteeism. To try and address the problem, in the late 2000s an NGO (along with some MIT economists) decided to see if they could fix the problem. The NGO started keeping track of when nurses clocked in and out, and then shared the information with the government, who then applied fines or punishments to nurses who weren't showing up for work.

Initially, the intervention was successful, leading to very large increases in attendance (doubling it in fact!) after a few months. But as nurses came to realize this wasn't just a little study but actually something that was going to be around for a while, they mobilized politically, and soon administrators were allowing nurses to claim an increasing number of "exempt days", avoiding punishment. And so sure enough, nurses stopped coming to work, and absenteeism had returned to pre-intervention levels 16 months after the program began.

This is an example of what economists call a "general equilibrium" effect -- when we introduce a treatment to the world, the world responds. But often these responses don't happen in small trials the same way they do when policies go big, creating serious generalizability problems.

Relatedly: if you are a public policy person or an economic development person, I cannot recommend [this paper](https://www.nber.org/papers/w22595) by Angus Deaton and Nancy Cartwright enough for discussing the limitations of RCTs for learning about the effects of policy or nature of social processes. It's a long, very thoughtful paper, but it's really, *really* good. -->
