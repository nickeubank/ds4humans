# The Purpose of Causal Questions

In our last reading, we learned about why answering Causal Questions is so difficult. That is a topic we will return to shortly, as understanding precisely *why* answering Causal Questions is hard is part and parcel to being able to *answer* Causal Questions effectively. But before we dive into that topic, it is worth pausing to reflect on why answering Causal Questions is such a valuable skill.

Causal Questions arise most often when stakeholders want to *do* something — buy a Superbowl ad, change how the recommendation engine in their app works, authorize a new prescription drug — but are unsure about whether the action will actually be beneficial. In these situations, stakeholders will often turn to data scientists in the hopes that they can "de-risk" the stakeholder's decision by providing guidance on the likely effect of their actions.

## The Two-Fold Challenge of Causal Questions

The challenge in answering this type of Causal Question is that stakeholders want to know the likely consequences of an action *before they actually undertake the action.* This may seem obvious, but it bears reflection — not only is answering Causal Questions hard because we never get to measure outcomes in a world where our treatment occurs and the parallel world where it does not (the Fundamental Problem of Causal Inference), but *also* because stakeholders want to know about the likely consequences of an action they aren't ready to undertake!

As a result, the job of a data scientist who wants to answer a Causal Question is *not only* to measure the effect of a treatment (a hard job to begin with!), *but also* to do so in a setting that is enough like the context in which the stakeholder wants to act that any measured effect will *generalize* to the stakeholder's context. We call these two objectives of a study *internal validity* (how well the analysis answers the Causal Question *in the setting the study is conducted*) and *external validity* (how well we think the results of a study will generalize to the context the stakeholder cares about).

To illustrate, suppose you work for a medical device company in Boston that wants the US Food and Drug Administration (FDA) to authorize a new cochlear implant your company has developed (a partially surgically implanted device for helping those with certain types of hearing loss regain hearing). Before authorizing the device, the FDA wants to be sure that it's safe and effective — in other words, it wants to know what the *effect* of authorizing the device for patients throughout the United States would be on patient health.

Your job, therefore, is to conduct a study that (a) convincingly measures the effect of the device on patients (has high internal validity), *and* (b) does so in a way that convinces the FDA that the findings from *your study* are likely to be the same as what would be seen if the device were being used across the United States (has external validity to the context the FDAs cares about).

In medical trials, internal validity is usually ensured by conducted a randomized experiment — referred to as a Randomized Control Trial (RCT) in medical circles — according to a set of FDA requirements. We'll discuss what features must be present for us to have confidence in the results of a randomized experiment soon, but they are things like making sure that the people in the control group look like the people in the treatment group in terms of things we can measure (age, gender, etc.) to help us feel confident that when people were randomly assigned to control and treatment groups, we didn't end up in a really unlikely situation where, purely by chance, only men ended up in control group and only women ended up in treatment group.

External validity, by contrast, comes from things like *who* is enrolled in the trial. The average age of children getting cochlear implants is between 2 and 3, so if your study only included children between 12 and 18 months of age, the FDA may worry that the results of the study would not *generalize* to the US population as a whole.

In the context of a clinical trial, this issue of external validity may seem easy to address — just get a sample of people who "look like" the US population (when applying for US FDA approval)! Historically, however, [women](https://www.theguardian.com/lifeandstyle/2015/apr/30/fda-clinical-trials-gender-gap-epa-nih-institute-of-medicine-cardiovascular-disease)[^women_enrollment] and [minorities](https://www.thelancet.com/journals/lanam/article/PIIS2667-193X(22)00069-2/fulltext) have been underrepresented in clinical trial participants.[^minority_enrollment] Moreover, the people designing clinical trials often limit enrollment to participants who, aside from the specific condition being treated, are healthy to avoid complications. This reduction in complications may increase the *internal* validity, but as many patients face more than one health challenge, it may reduce external validity.

[^women_enrollment]: In 1977, the FDA actually banned enrollment of women of "childbearing potential" from Phase 1 and Phase 2 clinical trials in the [interest of avoiding birth defects](https://www.womenshealth.gov/30-achievements/04#:~:text=In%201977%2C%20the%20FDA%20issued,thalidomide\)%20causing%20serious%20birth%20defects.).

[^minority_enrollment]: This seems likely to be due, in part, to hesitancy to enroll in clinical trials by individuals aware of past abuses of minority patients, as in the [Tuskegee Syphilis Study](https://www.cdc.gov/tuskegee/index.html).

Outside of drug or medical device trials, however, external validity can much harder to establish. For example, the functionality of many internet services and apps depends on network effects — testing out a new social feature on Instagram by making it available to only a handful of users in a randomized trial (an A/B test, in the language of tech companies) may not give you a meaningful sense of how the feature would be used if it was visible to all users. And the way that bank customers use a new budgeting app in the context of a two-week study may not be indicative of how they would use it over the long run when the feature is no longer new.

## The Causal Question Work Flow

Before we dive into the technical details of answering Causal Questions, it's worth starting with a high-level overview of how data scientists approach answering Causal Questions.

### Identify Relevant Previous Studies

Once a Causal Question has been posed, the next step is **to identify any research that has already been done** that may help answer your causal question. It's hard to overstate how often this step is overlooked by data scientists, but it's *such* a no-brainer once you think of it! There's no reason to spend days or weeks trying to design a study to answer a question if someone else has already put the time and money into doing it for you!

If your stakeholder is somebody who works in public policy or medicine, then the first place to look for previous studies is in academic medical or policy journals. But don't assume that if you aren't working on a medical or public policy question that you won't be able to find an answer to your question in academic or pseudo-academic publications — lots of data scientists present research done at private companies at ``industry'' conferences like the [MIT Conference on Digital Experimentation (CODE@MIT)](https://ide.mit.edu/events/2022-conference-on-digital-experimentation-mit-codemit/) or the [NetMob Cellphone MetaData Analysis Conference](https://netmob.org/)!

And if you are at a company, ask around! Someone at your own company may have looked into a similar question before, and talking to them could save you a lot of effort.

### Evaluate Previous Studies

If you do find studies, then for each study you will have to ask yourself two questions:

- **Did the study authors do a good job of answering the Causal Question? *in the context they were studying***?
- **Do I believe that the *context* in which the study was conducted is similar enough to my own context that their conclusions are relevant to me?**

This first question is about the *internal validity* of the study, and we'll talk at length about how to evaluate that in the context of causal inference in the coming weeks. The second question is about the *external validity* (i.e., the generalizability) of the study to your context. There are lots of extremely well-conducted studies in the world that may be seeking to answer the same question as you, but if, for example, they investigated the effect of a new drug in *young* patients, and your hospital only treats very old patients, you may not be comfortable assuming their results are good predictors for what might happen in your hospital.

### Plan A New Study

If you were unable to find any studies that answer your Causal Question satisfactorily (either on their own or in combination), then it may be time to do a study of your own!

The goal when designing a study to answer a Causal Question is usually to (a) try the intervention whose effect you want to understand *on small scale and in a controlled manner* in a randomized experiment, or (b) find data from a time/place where entities were subjected to the intervention you want to understand and others were not. The second of these is called an "observational study" because you aren't in control of the situation that gave rise to the data, you're just an observer trying to learn from something that's already happened.

**Both of these kinds of studies can generate valid answers to Causal Questions!** It is sometimes said that only experiments can give you "true" answers, but as we'll discuss at length, that is not the case. This is especially true because the type of controls and supervision required to run an effective randomized experiment often result in an artificiality that can undermine the external validity of studies, and as we've discussed before, to be useful a study must have *both* good internal *and* external validity.
