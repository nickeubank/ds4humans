
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

## What Makes Answering A Causal Question Different from a Passive Predictive Question?

## Acting on the World

Nearly all Causal Questions are motivated by a stakeholder's desire to know the consequences of a certain action. Again, this action could take almost any form, from changing the prices of a product to changing the design of a website or rolling out a new government health insurance system. *Usually*, this action will not have been pulled out of a hat — rather, one generally poses a Causal Question because one has some reason for thinking a given course of action may be a good one. For example, someone interested in reducing surgical complications may have discovered that patients with high blood pressure are more likely to experience complications from surgery (they observed a *correlation* between these two outcomes), so now they want to know if giving patients who experience high blood pressure medication to bring down their blood pressure before surgery would reduce complications. Or perhaps your online retailer stakeholder has noticed that one of your competitors has stopped showing customer reviews in the search results, so they suspect it must be improving sales for your competitor and want to know if it would work for your site too.
