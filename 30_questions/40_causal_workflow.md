
## How We Answer Causal Questions

Before we dive into the technical details of answering Causal Questions, it's worth starting with a high-level overview of how data scientists approach answering Causal Questions.

Nearly all Causal Questions are motivated by a stakeholder's desire to know the consequences of a certain action. Again, this action could take almost any form, from changing the prices of a product to changing the design of a website or rolling out a new government health insurance system. *Usually*, this action will not have been pulled out of a hat — rather, one generally poses a Causal Question because one has some reason for thinking a given course of action may be a good one. For example, someone interested in reducing surgical complications may have discovered that patients with high blood pressure are more likely to experience complications from surgery (they observed a *correlation* between these two outcomes), so now they want to know if giving patients who experience high blood pressure medication to bring down their blood pressure before surgery would reduce complications. Or perhaps your online retailer stakeholder has noticed that one of your competitors has stopped showing customer reviews in the search results, so they suspect it must be improving sales for your competitor and want to know if it would work for your site too.

### Identify Relevant Previous Studies

Once a Causal Question has been posed, the next step is **to identify any research that has already been done** that may help answer your causal question. It's hard to overstate how often this step is overlooked by data scientists, but it's *such* a no-brainer once you think of it! There's no reason to spend days or weeks trying to design a study to answer a question if someone else has already put the time and money into doing it for you!

If your stakeholder is somebody who works in public policy or medicine, then the first place to look for previous studies is in academic medical or policy journals. But don't assume that if you aren't working on a medical or public policy question that you won't be able to find an answer to your question in academic or pseudo-academic publications — lots of data scientists present research done at private companies at ``industry'' conferences like the [MIT Conference on Digital Experimentation (CODE@MIT)](https://ide.mit.edu/events/2022-conference-on-digital-experimentation-mit-codemit/) or the [NetMob Cellphone MetaData Analysis Conference](https://netmob.org/)!

And if you are at a company, ask around! Someone at your own company may have looked into a similar question before, and talking to them could save you a lot of effort.

### Evaluate Previous Studies

If you do find studies, then for each study you will have to ask yourself two questions:

- **Did the study authors do a good job of answering the Causal Question? *in the context they were studying***?
- **Do I believe that the *context* in which the study was conducted is similar enough to my own context that their conclusions are relevant to me?**

This first question is about the *internal validity* of the study, and we'll talk at length about how to evaluate that in the context of causal inference in the coming weeks. The second question is about the *external validity* (i.e., the generalizability) of the study to your context. There are lots of extremely well-conducted studies in the world that may be seeking to answer the same question as you, but if, for example, they investigated the effect of a new drug in *young* patients, and your hospital only treats very old patients, you may not be comfortable assuming their results are good predictors for what might happen in your hospital. Again, we'll talk more about how to make these kinds of evaluations, but for the moment, I just want to ensure you have a good high-level overview of the *workflow* of someone trying to answer Causal Questions.

### Plan A New Study

If you were unable to find any studies that answer your Causal Question satisfactorily (either on their own or in combination), then it may be time to do a study of your own!

The goal when designing a study to answer a Causal Question is usually to (a) try the intervention whose effect you want to understand *on small scale and in a controlled manner* in a randomized experiment, or (b) find data from a time/place where some entities were subjected to the intervention you want to understand and others were not.

The first of these is called a randomized experiment — or an A/B test, a Randomized Control Trial (RCT), or a clinical trial, depending on whether you're hanging out with data scientists, social scientists, or doctors. The second of these is called an "observational study," because you aren't in control of the situation that gave rise to the data, you're just an observer trying to learn from something that's already happened.

**Both of these kinds of studies can generate valid answers to Causal Questions!** It is sometimes said that only experiments can give you "true" answers, but as we'll discuss at length, that is not the case.

## Why Passive-Prediction Is Not Enough

The saying "correlation does not imply causation" is bandied about around so regularly that for many of us, it begins to lose any meaning. Indeed, it is almost a cliché for data science students to end any presentation of statistical analyses with "but of course, correlation does not imply causation, so we don't really know," as though invocation of the phrase absolves them of responsibility for preceding interpretation of correlations as suggesting a causal relationship.

But for all its popularity, the saying "correlation does not imply causation" is frustrating because it's not *useful*, and that's because what people mean when they say "correlation does not imply causation" is actually "correlation does not *necessarily* imply causation," and that more accurate presentation makes clear a useful corollary: "correlation does not *necessarily* imply causation, but in certain situations, correlation *does* imply causation!".

So let's pause for a moment to try and understand *why* correlation does not necessarily imply causation so that we can better understand what must be true for a correlation to actually imply causation!

Let's return to our example of a hospital trying to identify what patients are most likely to experience complications after surgery. They have lots of historical data on patients before and after surgery, and they can feed this into a simple logistic regression to find out pre-surgery patient characteristics predict complications. They do so, and find that the model performs extremely well — it identifies nearly all the patients who end up having complications, and the false positive rate is still relatively low. They deploy the model throughout the hospital, and nurses begin to followup more aggressively with patients flagged as being likely to have complications. For the purpose of *identifying individual patients for additional attention*, this effort to answer the Passive-Predictive Question "which patients are most likely to experience post-surgical complications" has been a huge success.

BUT: now suppose a doctor looks this logistical regression and finds that one of the strongest predictors of complications is whether the patient has high blood pressure prior to surgery. This association is clearly helping to identify patients who are likely to have complications, but does it imply that high blood pressure is *causing* patients to experience complications?

### Back to Blood Pressure

OK, so now we know what is meant when we asked whether "high blood pressure causes surgical complications" — it means that if the patients who have high blood pressure didn't have high blood pressure, then they would be less likely to have surgical complications!

So we give all the patients with high blood pressure medication to reduce their blood pressure and wait.

- Check engine light / warning light analogy — good for identifying cars with problems, but you won't get anywhere by just turning off those lights.
