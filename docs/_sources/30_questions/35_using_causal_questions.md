# Using Causal Questions

In our past readings, we've learned about the value of both Exploratory and Passive Prediction Questions for solving problems. 

Exploratory Questions help us better understand the contours of our problem — where our problem is most acute, whether there are groups who have figured out how to get around the problem on their own, etc. This, in turn, helps us identify where to prioritize our subsequent efforts.

Passive Prediction Questions have two main purposes. First, they help us to identify individual entities — patients, customers, products, etc. — to whom we may wish to pay extra attention or recommend certain products. Second, models built to address Passive Prediction Questions can also be used to automate tasks by predicting how a person *would* have classified an entity or behaved in a given setting.

In both cases, however, there is a drawback - answering these questions only helps us understand the world around us, not how our actions on the world will have an impact. But as data scientists, we will often want to act to address the problems that motivate us. Wouldn't it be great if there was also a set of tools designed to help us predict the consequences of our own actions?

Enter *Causal Questions*. Causal Questions ask what effect we can expect from our actions. For example, "What effect will changing the interface of our website have on online sales?" or "What effect will prescribing a drug have on a patient?" 

Because they help us understand the consequences of actions we might take, it should come as no surprise that the ability to answer Causal Questions is of *profound* interest to everyone from companies to doctors and policymakers. At the same time, however, it will also come as no surprise that answering Causal Questions is an inherently challenging undertaking.

In this reading, we will discuss both where Causal Questions arise in practice and a workflow for answering them, but we will gloss over the nuances of *how* exactly we answer Causal Questions. In our next reading, we will turn from workflows to theory and discuss in detail what it actually means to measure the effect of an action $X$ (e.g., administering a new drug to a patient or showing an ad to a user) on an outcome $Y$ (patient survival, customer spending, etc.). This section may feel a little abstract and woo-woo at times, but please hang in there. Answering Causal Questions is as much about critical thinking as it is about statistics, and understanding the concepts introduced here will be critical to your success in this domain.

## When Do Causal Questions Come Up?

Causal Questions arise when stakeholders want to *do* something — buy a Superbowl ad, change how the recommendation engine in their app works, authorize a new prescription drug — but they fear the action they are considering may be costly and not actually work. In these situations, stakeholders will often turn to a data scientist in the hope that the scientist can provide greater certainty about the likely consequences of different courses of action before the stakeholder is forced to act at scale. This, in turn, helps to reduce the risk the stakeholder has to bear when making their decision — something all stakeholders appreciate.
*Usually*, the action the stakeholder is considering will not have been chosen at random. Rather, a stakeholder will generally pose a Causal Question because they have some reason to suspect a given course of action may be beneficial. Indeed, Causal Questions often arise in response to patterns discovered when answering Exploratory or Passive Prediction Questions.

### Where Causal Questions Come From — An Example

Suppose the Chief of Surgery at a major hospital is interested in reducing surgical complications. The hospital begins by asking, "What factors predict surgical complications?" (a Passive Prediction Question) and developing a model that allows it to identify patients who are likely to experience complications during recovery.

While developing this model, the hospital discovered that blood pressure was one of the strongest predictors of surgical complications—patients with high blood pressure are substantially more likely to experience complications than those with normal blood pressure.

This leads the Chief to wonder whether they could reduce surgical complications if they treated patients who have high blood pressure with pressure-reducing medications before surgery. In other words, the Chief Surgeon wants to know, "What effect would treating patients with high blood pressure have on surgical complication rates?"

Rather than just giving all patients with high blood pressure new drugs (and delaying their surgeries while the drugs take effect), the Chief wants *you* to provide a rigorous answer to her question. After all, high blood pressure *may* cause surgical complications, in which case the blood pressure medication *may* reduce complications. But it might also be that high blood pressure is a *symptom* of a third factor that causes both high blood pressure *and* surgical complications. For example, some lower-income patients may be experiencing stressful lives and could have more difficulty taking time off after surgery to recover, both of which are factors that could contribute to higher blood pressure. In this case, high blood pressure is useful for identifying patients likely to experience surgical complications. However, treating high blood pressure wouldn’t reduce complications since those patients would still be unable to take time off after surgery.

And so, a Causal Question is born!


<!-- 
## The Two-Fold Challenge of Causal Questions

For reasons we will detail in the next reading, answering Causal Questions is an inherently difficult task for deep epistemological reasons. In short, getting high *internal validity* when trying to answer Causal Questions is really hard, but answering Causal Questions almost always comes with significant external validity challenges as well. 

Why? Risk aversion!

The situations in which stakeholders ask data scientists to answer Causal Questions are precisely those in which stakeholders are afraid to "just try it" at full scale. Causal Questions usually arise when it’s too risky to try something at scale and a stakeholder wants you to "de-risk" their choice.

As a result, data scientists almost always have to generate an answer to a risky question, and where they aren’t allowed to try things at scale. Instead, they have to generate answers with small studies while ensuring external validity to the context the stakeholder cares about.

### The External Validity Challenge: An Example

Suppose you work for a medical device company in Boston that wants the US Food and Drug Administration (FDA) to authorize a new cochlear implant your company has developed. For reference, a cochlear implant is a partially surgically implanted device for helping those with certain types of hearing loss regain hearing. Before authorizing the device, the FDA wants to be sure that it's safe and effective — in other words, it wants to know what the *effect* of authorizing the device for patients throughout the United States would be on patient health.

Your job, therefore, is to conduct a study that (a) convincingly measures the effect of the device on patients (has high internal validity), *and* (b) does so in a way that convinces the FDA that the findings from your study are likely to be the same as what would be seen if the device were being used across the United States (has external validity to the context the FDAs cares about).

In medical trials, internal validity is usually ensured by conducting a randomized experiment — referred to as a Randomized Control Trial (RCT) in medical circles — according to a set of FDA requirements. We'll discuss what features must be present for us to have confidence in the results of a randomized experiment soon, but they include making sure that there are similar people in both the control group and the treatment group in terms of things we can measure (age, gender, etc.). This ensures we avoid an unlikely (and statistically unfortunate) situation, like only men ending up in the control group and only women ending up in the treatment group. This additionally helps us feel confident that people were truly randomly assigned to control and treatment groups.

External validity, by contrast, comes from things like *who* is enrolled in the trial. The average age of children getting cochlear implants is between 2 and 3, so if your study only included children between 12 and 18 months of age, the FDA may worry that the results of the study would not *generalize* to the US population as a whole.

In the context of a clinical trial, this issue of external validity may seem easy to address — just get a sample of people who "look like" the US population (when applying for US FDA approval)! Historically, however, [women](https://www.theguardian.com/lifeandstyle/2015/apr/30/fda-clinical-trials-gender-gap-epa-nih-institute-of-medicine-cardiovascular-disease)[^women_enrollment] and [minorities](https://www.thelancet.com/journals/lanam/article/PIIS2667-193X(22)00069-2/fulltext) have been underrepresented in clinical trial participants.[^minority_enrollment] Moreover, the people designing clinical trials often limit enrollment to participants who (aside from the specific condition being treated) are healthy to avoid complications. This reduction in complications may increase the *internal* validity, but as many patients face more than one health challenge, it may reduce external validity.

[^women_enrollment]: In 1977, the FDA banned enrollment of women of "childbearing potential" from Phase 1 and Phase 2 clinical trials in the [interest of avoiding birth defects](https://www.womenshealth.gov/30-achievements/04#:~:text=In%201977%2C%20the%20FDA%20issued,thalidomide\)%20causing%20serious%20birth%20defects.).

[^minority_enrollment]: This seems likely to be due, in part, to hesitancy to enroll in clinical trials by individuals aware of past abuses of minority patients, as in the [Tuskegee Syphilis Study](https://www.cdc.gov/tuskegee/index.html).

Outside of drug or medical device trials, however, external validity can be much harder to establish. For example, the functionality of many internet services and apps depends on network effects — testing out a new social feature on Instagram by making it available to only a handful of users in a randomized trial (an A/B test, in the language of tech companies) may not give you a meaningful sense of how the feature would be used if it was visible to all users. The way that bank customers use a new budgeting app in the context of a two-week study may not be indicative of how they would use it over the long run when the feature is no longer new. -->

## The Causal Question Work Flow

Before we dive into the technical details of answering Causal Questions, it's worth providing a high-level overview of how data scientists approach answering them.

### Identify Relevant Previous Studies

Once a Causal Question has been posed, the next step is **to identify any research that has already been done** that may help answer your causal question. It's hard to overstate how often data scientists overlook this step, but it's *such* a no-brainer once you think of it! There's no reason to spend days or weeks designing a study to answer a question if someone else has already put the time and money into doing it for you!

If your stakeholder works in public policy or medicine, then the first place to look for previous studies is in academic medical or policy journals. But don't assume that if you aren't working on a medical or public policy question, you won't be able to find an answer to your question in academic or pseudo-academic publications — lots of data scientists present research done at private companies in "industry" conferences like the [MIT Conference on Digital Experimentation (CODE@MIT)](https://ide.mit.edu/events/2022-conference-on-digital-experimentation-mit-codemit/) or the [NetMob Cellphone MetaData Analysis Conference](https://netmob.org/)!

And if you are at a company, ask around! Someone at your own company may have investigated a similar question before, and talking to them could save you a lot of effort.

### Evaluate Previous Studies

If you do find studies, then for each study, you will have to ask yourself two questions:

- **Did the study authors do a good job of answering the Causal Question? *in the context they were studying***?
- **Do I believe that the *context* in which the study was conducted is similar enough to my context that their conclusions are relevant to me?**

This first question is about the *internal validity* of the study, and we'll talk at length about how to evaluate that in the context of causal inference in the coming weeks. The second question is about the *external validity* (i.e., the generalizability) of the study to your context. There are lots of extremely well-conducted studies in the world that may be seeking to answer the same question as you. Still, if they investigated the effect of a new drug in *young* patients and your hospital only treats very old patients, you may not be comfortable assuming their results are good predictors for what might happen in your hospital.

### Plan A New Study

If you were unable to find any studies that answer your Causal Question satisfactorily (either on their own or in combination), then it may be time to do a study of your own!

When most people think about answering Causal Questions, their minds immediately jump to randomized experiments. Randomized experiments are *often* the best strategy for trying to answer Causal Questions, but they are not always the best choice.

Studies designed to answer Causal Questions can be divided into roughly two types: experimental studies and observational studies.

In an experimental study, a researcher has control over everything that happens, including who enrolls in the study and who gets assigned to the treatment group and who gets assigned to the control group. Examples of experimental studies include nearly all clinical trials, A/B tests where the version of a website or app users see is randomly determined, and field experiments where, say, voters are randomly assigned to receive different types of mailers from political campaigns to measure their effect on voter turnout.

In an observational study, by contrast, researchers use data from a context where the researchers did not control who was treated and who was not. This includes data from public opinion surveys, data on user behavior and demographics, or census data.

(We say studies can be divided into roughly two types because some studies fall into a category sometimes called "quasi-experimental." In these studies, researchers were not in control over who was treated and who was not, but they have some reason for thinking that *something in the world* — like a chance storm or a draft lottery — caused who was treated and who was not to be determined randomly. But these types of studies tend to be more relevant for academics than applied data scientists, and evaluating them is incredibly difficult, so we will largely ignore them in this text.)


While it is sometimes believed that only experimental studies can generate valid answers to Causal Questions, this is *unequivocally untrue*, as is the slightly more generous version of this claim — that experimental studies always constitute the best evidence for answering Causal Questions. As we will explore in *great* detail in the coming readings, the validity of conclusions drawn from *both* experimental and observational studies rests on whether a number of fundamentally untestable assumptions hold. As a result, both types of studies are capable of providing meaningful answers to causal questions *and* of being deeply misleading.

Moreover, while experimental studies often (but not always) have greater *internal validity* (they are often better able to ensure that they have measured the true causal effect in the lab), this often comes at the expense of lower *external validity* because ensuring the researchers can control who is treated and who is not requires operating the study take place in a highly monitored, often artificial and unrealistic setting. Observational studies, by contrast, are often based on data collected in the real world and, as a result, may yield answers that tell us more about what is likely to happen in our own real-world application, even if they have somewhat lower internal validity.

## Wrapping Up and Next Steps

Hopefully, this reading has given you a better sense of *how* Causal Questions are used to solve stakeholder problems and when and where they come up in the life of a practicing data scientist. In the readings that follow, we will turn first to the details of the *Potential Outcomes Model*, a rigorous, formal statistical framework for understanding the Counterfactual Model of Causality. This framework will not only provide a presentation of the Counterfactual Model of Causality that may be appealing to those who draw intuition from mathematical formalism but also machinery that we can use to evaluate how much confidence we can have in answers generated using different methods of answering Causal Questions — including both experimental and observational studies.
