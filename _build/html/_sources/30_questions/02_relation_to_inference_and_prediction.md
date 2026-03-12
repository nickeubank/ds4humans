# Relationship to Inference and Prediction

Data scientists often draw a distinction between *inference* and *prediction*. Given how commonly these terms are used, it is worth discussing their meanings and how the inference/prediction distinction relates to the question taxonomy presented here.

## Inference v. Prediction

Prediction and inference are two different goals that a data scientist may have in mind when they sit down to analyze their data.

*Prediction* is the practice of using data to build models that can be used to predict the value of an unobserved variable for a given observation. A data scientist interested in predicting the total amount a customer may spend on a website over their lifetime based on their activity on the site during the first visit is engaged in prediction. Similarly, a data scientist engaged in prediction might use a database of mammograms that have already been reviewed by human radiologists to train a model that can *predict* whether a new mammogram (one not reviewed by a human) would have been flagged as abnormal if it were reviewed by a human is also doing prediction.

*Inference*, by contrast, is the practice of using statistics and machine learning to learn about processes that are not directly observable but which give rise to the data we see around us. In more technical language, inference is the practice of *inferring latent processes or structure* from observed data. For example, we may wish to understand how getting a college degree influences labor market earnings, or how the frequency of medical errors is related to patient race.

The distinction between prediction and inference is subtle because it concerns the *goals* of a data scientist, not the tools they use. Linear and logistic regression, for example, are commonly used for *both* prediction and inference.

But the *way* these tools are used — especially how a data scientist would interpret and evaluate the performance of a linear regression — will differ radically depending on whether they are interested in prediction or inference.

Consider the humble linear regression. A data scientist interested in *infering* how a job training program affects earnings might run an experiment in which some people take the training program while others don't. Then, ten years later, they might regress wages on an indicator variable for whether an individual was in the job training program, and interpret the coefficient on that indicator as the effect of job training on wages. This type of randomized experiment is generally considered one of the best ways to answer causal questions, and assuming the experiment had enough participants to generate estimates with small standard errors, we would look to that coefficient to answer our question about the world.

But that same regression is almost useless for *predicting* individual wages. After all, with only a single indicator variable in the model, the R-squared will be nearly 0. In other words, a data scientist interested in predicting individual wages would say that this model — which successfully *inferred* the effect of job training really well — is not a good model for their purposes.

Someone interested in prediction would throw everything they could into the model — their industry, education, where they live, years of experience, etc. And crucially, they would evaluate the success of their model not by looking at the coefficients on the variables, but by the differences between predicted and actual wages in the training data. Indeed, this is why many people engaged in prediction aren't concerned that many supervised machine learning algorithms are "black boxes", meaning that we can't really develop any intuition about how they come to the answers they generate.

To be clear, like all dichotomies, this distinction is clearer in principle than in practice. Even in prediction, we often want to know how the model is working, so we can estimate when it can be trusted and when it may break down; prediction is often a partial goal. But it does give you a sense of why social scientists (who are often most interested in making inferences about the social processes that shape our world but aren't directly observable) have not been quick to take up many uninterpretable machine learning techniques, and why businesses and engineers — who often only care about accuracy — have.

## The Three Question Types

So how does the three-question taxonomy presented here relate to the inference/prediction dichotomy?

Like the inference/prediction dichotomy, my question taxonomy is motivated by differences in a data scientist's objectives, rather than by the tools one uses to answer them. Just as a linear regression can be used for either inference or prediction, so too can it be used to answer any of the three questions in my taxonomy.

Moreover, what most people who use the inference/prediction distinction would call "prediction" corresponds relatively closely to what I call "passive prediction questions" — both involve trying to generate accurate guesses about individual-level outcomes.

But my taxonomy distinguishes between inference for characterizing latent structure in data (Descriptive Questions) and inference for characterizing causal relationships (Causal Questions). In my view, when it comes to solving real-world problems, treating these as fundamentally distinct activities adds enough clarity to one's thinking to justify adding one complication to the taxonomy.

In using the term "passive prediction," I also hope to better differentiate between the meaning of prediction in the prediction/inference dichotomy and the term prediction in common parlance (which sometimes refers to predicting what is likely to happen in the future, and predicting what would happen if you or your stakeholder took an action).
