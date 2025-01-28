# Using Causal Questions

In our last reading, we learned a little about what it means to measure a causal effect, and why it is inherently difficult. That is a topic we will return to shortly, as understanding why measuring causal effects is hard is key to being able to measure them effectively. But first, take a moment to discuss how Causal Questions come up and are addressed in practice to help contextualize the more technical readings that will follow.

In our previous readings, we learned how answering different types of questions can help us better understand the world around us. By answering Exploratory Questions, we can better understand the contours of our problem — where our problem is most acute, whether there are groups who have figured out how to get around the problem on their own, etc. This, in turn, can help us prioritize our subsequent efforts. By answering Passive Predictive Questions, we can help identify individual entities — patients, customers, products, etc. — to whom we may wish to pay extra attention or recommend certain products. By answering Passive Predictive Questions, we can also automate tasks by predicting how a person (or more complicated process) *would* have classified an entity.

In both cases, however, answering these questions only helps us better understand the world *around* us. But to the extent to which, as data scientists, we want to intervene to directly address problems, we are rarely interested in just knowing about the world around us — we want to *act* on the world, and wouldn't be great if data science could provide us with a set of tools designed to help us predict the *consequences* of our actions?

Enter *Causal Questions*. Causal Questions ask what *effect* we can expect from *acting* — that is, actively *manipulating* or *intervening* — in the world around us in some way. For example, if we pay to show an ad to a specific customer, what will the *effect* of that choice be the likelihood they buy something on our website? Or if we choose to give a new drug to a patient, what will the *effect* of that choice be on their disease?

Because of their potential to help us understand the future consequences of our actions, it should come as no surprise that the ability to answer Causal Questions is of *profound* interest to everyone from companies to doctors and policymakers. At the same time, however, it may also come as no surprise that answering Causal Questions is an inherently challenging undertaking.

In this reading, we will discuss where Causal Questions arise in practice, and the workflow one goes about answering them, glossing over the nuances of *how* exactly we answer Causal Questions. Then in our next reading, we will turn from workflows to theory and discuss in detail what it actually means to measure the effect of an action $X$ (e.g., administering a new drug to a patient, or showing an ad to a user) on an outcome $Y$ (patient survival, customer spending, etc.). This section will, at times, feel a little abstract and woo-woo, but please hang in there. Answering Causal Questions is as much about critical thinking as it is about statistics, and the concepts introduced here will prove crucial to your ability to be effective in this space.

<!-- We call these two objectives of a study *internal validity* (how well the study answers the Causal Question *in the setting the study is conducted*) and *external validity* (how well the results of the study generalize to the context the stakeholder cares about). And to provide value to a stakeholder, a data scientist's analysis must have both.

Instead, to answer Causal Questions we have to find situations that *approximate* one of these two states of the world. For example, if we were running a website we could change how the website looks for some users, then compare those users' behavior to the behavior of a different group of users who still see the old version of the site. In doing so, we're using the second group of users as a stand-in for what we think the first users would be doing if they still encountered the old site.

Similarly, we could measure a patient's cholesterol prior to giving the patient an experimental cholesterol drug, then measure it again after they've been on the medication for a few weeks as a way of estimating the effect of the drug. Essentially, we're using the patient before receiving the medication as a stand-in for what we think the patient's cholesterol would have been a few weeks later if they hadn't received the new drug.

But as we will see, none of these strategies are perfect. In the example of changing the website design for only some users, it's always possible that differences in user behavior between the two groups wasn't the result of the different website, but other differences in the users (like age or gender). And while we can compare our patient's cholesterol before and after taking the experimental drug, it's always possible that the patient's cholesterol was going to change over time anyway, regardless of the medication!

As these simple examples illustrate while answering Causal Questions is one of the most exciting things we get to do in data science, it is also one of the hardest. And perhaps more than in any other domain of data science, answering Causal Questions—a practice referred to as *causal inference*—will require a *lot* of critical thinking on the part of the data scientist, and a lot of humility. -->

## When Do Causal Questions Come Up?

Causal Questions arise when stakeholders want to *do* something — buy a Superbowl ad, change how the recommendation engine in their app works, authorize a new prescription drug — but they fear the action they are considering may be costly and not actually work. In these situations, stakeholders will often turn to a data scientist in the hope that the scientist can "de-risk" the stakeholder's decision by providing guidance on the likely effect of the action *before* the action is undertaken at full scale.

*Usually*, the action the stakeholder is considering will not have been pulled out of a hat. Rather, a stakeholder will generally pose a Causal Question because they have some reason to suspect a given course of action may be beneficial. Indeed, Causal Questions often emanate from patterns discovered when answering Exploratory or Passive Predictive Questions.

### Where Causal Questions Come From — An Example

For example, suppose the Chief of Surgery at a major hospital is interested in reducing surgical complications. They begin by asking "What factors predict surgical complications?" (a Passive Predictive Question) and develop a predictive model that allows the hospital to identify patients who are likely to have issues so that caretakers can provide additional support to these patients during recovery.

In the course of developing this model, the Chief discovers that one of the strongest predictors of surgical complications is patient blood pressure — patients with high blood pressure are substantially more likely to experience complications than those with normal blood pressure.

This leads the Chief to wonder about whether they could reduce surgical complications if they treated patients with high blood pressure with pressure-reducing medications prior to surgery. In other words, the Chief Surgeon wants to know "What effect treating patients with high blood pressure would have on surgical complication rates?"

But rather than just starting to give all patients with high blood pressure new drugs (and delay their surgeries while the drugs take effect), the Chief wants *you* to provide a more rigorous answer to their question. After all, high blood pressure may be *causing* the complications (and thus the medicine may help), but it could also be that high blood pressure isn't the *cause* of the complications, but rather the *symptom* of a third factor that causes both high blood pressure *and* complications that makes people with high blood pressure different from those with low blood pressure — like leading an overly stressful life. The Chief doesn't need to know whether high blood pressure is the *cause* of complications or just a "warning light" that identifies people at risk to use that information for directing additional support to those patients during recovery; but it *does* matter for determining whether it makes sense to delay surgeries to teach patient high blood pressure!

This is, of course, just one example, and it's not hard to imagine others. Perhaps your online retailer stakeholder has noticed that one of your competitors has stopped showing customer reviews in the search results, for example, so they suspect it must be improving sales for your competitor and want to know if it would work for your site too! But the point is that Causal Questions generally don't appear out of the blue, but rather because someone has noticed a pattern in the world and wants to act on it. Thus, many Causal Questions may actually take the form of hypotheses or hunches that your stakeholder wants to be investigated.

## The Two-Fold Challenge of Causal Questions

In our last reading, we discussed how answering Causal Questions is difficult in part because measuring the effect of any action on any outcome is a definitionally difficult endeavor. But answering Causal Questions is also difficult for a more practical — less epistemological — reason: risk aversion!

As we noted above, stakeholders generally turn to data scientists because they want to know the likely consequences of an action *before they actually undertake the action at full scale.* This may seem obvious, but it bears repeating — not only is answering Causal Questions hard because we never get to measure outcomes in both a universe where our treatment occurs and also a universe where it does not (the Fundamental Problem of Causal Inference), but *also* because stakeholders want to know about the likely consequences of an action they aren't ready to actually undertake!

As a result, the job of a data scientist who wants to answer a Causal Question is to design a study that not only measures the effect of a treatment, but also does so in a setting that is enough like the context in which the stakeholder wants to act that any measured effect will generalize to the stakeholder's context.

We call these two objectives of a study *internal validity* (how well the study answers the Causal Question *in the setting the study is conducted*) and *external validity* (how well the results of the study generalize to the context the stakeholder cares about). And to provide value to a stakeholder, a data scientist's analysis must have both.

### Internal and External Validity: An Example

To illustrate, suppose you work for a medical device company in Boston that wants the US Food and Drug Administration (FDA) to authorize a new cochlear implant your company has developed (a partially surgically implanted device for helping those with certain types of hearing loss regain hearing). Before authorizing the device, the FDA wants to be sure that it's safe and effective — in other words, it wants to know what the *effect* of authorizing the device for patients throughout the United States would be on patient health.

Your job, therefore, is to conduct a study that (a) convincingly measures the effect of the device on patients (has high internal validity), *and* (b) does so in a way that convinces the FDA that the findings from *your study* are likely to be the same as what would be seen if the device were being used across the United States (has external validity to the context the FDAs cares about).

In medical trials, internal validity is usually ensured by conducting a randomized experiment — referred to as a Randomized Control Trial (RCT) in medical circles — according to a set of FDA requirements. We'll discuss what features must be present for us to have confidence in the results of a randomized experiment soon, but they are things like making sure that the people in the control group look like the people in the treatment group in terms of things we can measure (age, gender, etc.) to help us feel confident that when people were randomly assigned to control and treatment groups, we didn't end up in a really unlikely situation where, purely by chance, only men ended up in control group and only women ended up in treatment group.

External validity, by contrast, comes from things like *who* is enrolled in the trial. The average age of children getting cochlear implants is between 2 and 3, so if your study only included children between 12 and 18 months of age, the FDA may worry that the results of the study would not *generalize* to the US population as a whole.

In the context of a clinical trial, this issue of external validity may seem easy to address — just get a sample of people who "look like" the US population (when applying for US FDA approval)! Historically, however, [women](https://www.theguardian.com/lifeandstyle/2015/apr/30/fda-clinical-trials-gender-gap-epa-nih-institute-of-medicine-cardiovascular-disease)[^women_enrollment] and [minorities](https://www.thelancet.com/journals/lanam/article/PIIS2667-193X(22)00069-2/fulltext) have been underrepresented in clinical trial participants.[^minority_enrollment] Moreover, the people designing clinical trials often limit enrollment to participants who, aside from the specific condition being treated, are healthy to avoid complications. This reduction in complications may increase the *internal* validity, but as many patients face more than one health challenge, it may reduce external validity.

[^women_enrollment]: In 1977, the FDA actually banned enrollment of women of "childbearing potential" from Phase 1 and Phase 2 clinical trials in the [interest of avoiding birth defects](https://www.womenshealth.gov/30-achievements/04#:~:text=In%201977%2C%20the%20FDA%20issued,thalidomide\)%20causing%20serious%20birth%20defects.).

[^minority_enrollment]: This seems likely to be due, in part, to hesitancy to enroll in clinical trials by individuals aware of past abuses of minority patients, as in the [Tuskegee Syphilis Study](https://www.cdc.gov/tuskegee/index.html).

Outside of drug or medical device trials, however, external validity can much harder to establish. For example, the functionality of many internet services and apps depends on network effects — testing out a new social feature on Instagram by making it available to only a handful of users in a randomized trial (an A/B test, in the language of tech companies) may not give you a meaningful sense of how the feature would be used if it was visible to all users. And the way that bank customers use a new budgeting app in the context of a two-week study may not be indicative of how they would use it over the long run when the feature is no longer new.

### External Validity To *What*

Throughout this text, we will refer to whatever course of action the stakeholder is actually considering pursuing as the "stakeholder's context." As a result, when discussing the external validity of a study, we will implicitly be referring to its external validity *to the stakeholder's context.* But it is worth emphasizing that while the internal validity of a study is a single things — you have some level of confidence that the study measured the effect they set out to measure — external validity is *relative*. A study conducted in a hospital in Denver, Colorado may have good external validity from the perspective of a doctor in a Pheonix, Arizona hospital, but that same study may not have very good external validity from the perspective of a doctor at a hospital in Pune, India. So always remember that external validity is not an absolute property of an analysis, but a property that is *relative* to the context to which one wishes to generalize the results.

## The Causal Question Work Flow

Before we dive into the technical details of answering Causal Questions, it's worth starting with a high-level overview of how data scientists approach answering Causal Questions.

### Identify Relevant Previous Studies

Once a Causal Question has been posed, the next step is **to identify any research that has already been done** that may help answer your causal question. It's hard to overstate how often this step is overlooked by data scientists, but it's *such* a no-brainer once you think of it! There's no reason to spend days or weeks trying to design a study to answer a question if someone else has already put the time and money into doing it for you!

If your stakeholder is somebody who works in public policy or medicine, then the first place to look for previous studies is in academic medical or policy journals. But don't assume that if you aren't working on a medical or public policy question you won't be able to find an answer to your question in academic or pseudo-academic publications — lots of data scientists present research done at private companies at ``industry'' conferences like the [MIT Conference on Digital Experimentation (CODE@MIT)](https://ide.mit.edu/events/2022-conference-on-digital-experimentation-mit-codemit/) or the [NetMob Cellphone MetaData Analysis Conference](https://netmob.org/)!

And if you are at a company, ask around! Someone at your own company may have looked into a similar question before, and talking to them could save you a lot of effort.

### Evaluate Previous Studies

If you do find studies, then for each study you will have to ask yourself two questions:

- **Did the study authors do a good job of answering the Causal Question? *in the context they were studying***?
- **Do I believe that the *context* in which the study was conducted is similar enough to my own context that their conclusions are relevant to me?**

This first question is about the *internal validity* of the study, and we'll talk at length about how to evaluate that in the context of causal inference in the coming weeks. The second question is about the *external validity* (i.e., the generalizability) of the study to your context. There are lots of extremely well-conducted studies in the world that may be seeking to answer the same question as you, but if, for example, they investigated the effect of a new drug in *young* patients, and your hospital only treats very old patients, you may not be comfortable assuming their results are good predictors for what might happen in your hospital.

### Plan A New Study

If you were unable to find any studies that answer your Causal Question satisfactorily (either on their own or in combination), then it may be time to do a study of your own!

When most people think about answering Causal Questions, their minds immediately jump to randomized experiments. Randomized experiments are *often* the best strategy for trying to answer Causal Questions, but they are not always the best choice.

Studies designed to answer Causal Questions can be divided into roughly two types: experimental studies and observational studies.

In an experimental study, a researcher has control over everything that happens in the study, including who enrolls in the study and also who in the study gets assigned to the treatment group and who gets assigned to the control group. Nearly all clinical trials, A/B tests where the version of a website or app users see is randomly determined, and field experiments where, say, voters are randomly assigned to receive different types of mailers from political campaigns to measure their effect on voter turnout are all examples of "experimental studies."

In an observational study, by contrast, researchers use data from a context where the researchers did not control who was treated and who was not. This includes data from public opinion surveys, data on user behavior and demographics, or census data.

(We say studies can be divided into roughly two types because some studies fall into a category sometimes called "quasi-experimental." In these studies, researchers were not in control over who was treated and who was not, but they have some reason for thinking that *something in the world* — like a chance storm, or a draft lottery — caused who was treated and who was not to be determined randomly. But these types of studies tend to be more relevant for academics than applied data scientists, and evaluating them is incredibly difficult, so we will largely ignore them in this text.)

While it is sometimes believed that only experimental studies can generate valid answers to Causal Questions, this is *unequivocally untrue*, as is the slightly more generous version of this claim, that experimental studies always constitute the best form of evidence for answering Causal Questions. As we will explore in *great* detail in the coming days, the validity of conclusions drawn from *both* experimental and observational studies rests on whether a number of fundamentally untestable assumptions hold. As a result, both types of studies are capable of providing meaningful answers to causal questions *and* of being deeply misleading.

Moreover, while experimental studies often (but not always) have greater *internal validity* (they are often better able to ensure that they have measured the true causal effect in the lab), this often comes at the expense of lower *external validity*, because ensuring the researchers can control who is treated and who is not requires operating the study take place in a highly monitored, often artificial and unrealistic setting. Observational studies, by contrast, are often based on data collected in the real world, and as a result may yield answers that tell us more about what is likely to happen in our own real-world application, even if they have somewhat lower internal validity.

## Wrapping Up and Next Steps

Hopefully, this reading has given you a better sense of *how* Causal Questions are used to solve stakeholder problems, and when and where they come up in the life of a practicing data scientist. In the readings that follow, we will turn first to the details of the *Potential Outcomes Model*, a rigorous, formal statistical framework for understanding the Counterfactual Model of Causality. This framework will not only provide a presentation of the Counterfactual Model of Causality that may be appealing to those who draw intuition from mathematical formalism, but also machinery that we can use to evaluate how much confidence we can have in answers generated using different methods of answering Causal Questions — including both experimental and observational studies.
