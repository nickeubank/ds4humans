# Passive-Prediction Questions

When most people hear the term "machine learning," what they think of is the ability of computers to answer Passive-Prediction Questions: "which patients are likely to experience complications from surgery if we don't do anything?", "which people applying for life insurance are healthy enough we should issue them a policy?", or "which job applicants would make good employees (and thus, which job applicants should we interview)?" And indeed, the ability of data scientists to answer Passive-Prediction Questions is one of our most useful skills.

However, answering this type of question is also one of the easiest ways to get in trouble as a data scientist. Why? Just as you can always calculate a summary statistic or get a result from an unsupervised machine learning model when trying to answer an Exploratory Question, you can also always get predicted values from a statistical model. But with Passive-Prediction Questions—*unlike* with Exploratory Questions—you can't fully check the validity of your answer to a Passive-Prediction Question with data you currently have. That's because, *by definition*, the reason you are trying to answer a Passive-Prediction Question is that you want to predict something that you don't currently know!

## Flavors of Passive-Prediction Questions

There are two flavors of Passive-Prediction Questions:

- predicting something that has yet to occur ("which patients going in for surgery are likely, in the future, to experience complications?"), and
- predicting something that *could* occur but actually won't ("if a radiologist had looked at this mammogram, would they conclude the patient had cancer?").

The first category of passive prediction—predicting something that has yet to occur—is the most intuitive, and is the type of passive prediction that accords best with the normal meaning of the term "predict." But the second favor of passive prediction—in which we try and predict what someone *would* do—is also very important, as it underlies efforts at automation. Spam detection, image classification, autocomplete, and self-driving cars are all examples of situations where we train a model by showing it examples of how a person *would* do something, so the model can predict what a person would do when faced with new data and emulate that behavior itself.

And just as there are two flavors of passive-prediction, so too are there two corresponding use cases for answering Passive-Prediction Questions:

- Identifying individual entities for follow-up, and
- Automating data classification to make hard-to-work-with data (images, medical scans, text) simpler

## Differentiating Between Exploratory and Passive-Prediction Questions

If you have not felt a little confused about the distinction between Exploratory and Passive-Prediction Questions previously, there's a good chance you find yourself struggling with that issue here, and for understandable reasons.

In many cases, one can easily imagine how the same analysis might constitute an answer to *either* an Exploratory or Passive-Prediction Question. For example, predicting which patients are likely to experience complications from surgery using a logistic regression could constitute the answer a Passive-Prediction Question, but it could also answer Exploratory Questions like "what hospitals have the highest surgery complication rates?" or "what type of surgeries have the highest complication rates?"

The confusion lies in the fact that the distinction between these types of questions isn't related to the statistical machinery you might use to answer the question, but rather what we are trying to accomplish, and thus how we might evaluate the success of a given statistical or machine learning model.

With Passive-Prediction Questions, our interest is in the values that get spit out of a model for each entity in the data. When answering a Passive-Prediction Question, the *only* thing we care about is the quality of those predictions, and so we evaluate the success of a model that aims to answer a Passive-Prediction Question by the quality of those predictions (using metrics like AIC, AUC, R-Squared, Accuracy, Precision, Recall, etc.). Thus, when using a logistic regression to answer a Passive-Prediction Question, we don't actually care about what factors are being used to make our predictions, just that they improve the predictions. Our interest is only the quality of our predicted values, and a good model is one that explains a substantial portion of the variation in our outcome.

With Exploratory Questions, our interest is in improving our understanding of the problem space, not in making precise predictions for each entity in our data. Thus, in the example of a logistic regression, our interest is in the factors on the "right-hand side" of our logistic regression and how they help us understand what shapes outcomes, not the exact accuracy of our predictions. A good model, in other words, doesn't actually have to explain a large share of variation at the level of individual entities, but it does have to help us understand our problem space.

For example, a model that looked at the relationship between individuals' salaries and their age, education, and where they live might tell us a *lot* about the importance of a college degree to earnings (which we could see by the large and statistically significant coefficient on having a college degree), even if it only explains a small amount of overall variation in salaries (e.g., the R-Squared might only be 0.2).

This distinction also has important implications when working with more opaque supervised machine learning techniques, like deep learning, random forests, or SVMs. These techniques are often referred to as "black boxes" because exactly how different impute factors relate to the predictions that the model makes is impossible to understand (in other words, it's like the input data is going into a dark box we can't see into, and then predictions are magically popping out the other side). These models can be very useful for answering Passive-Prediction Questions, as they can accommodate very unusual, non-linear relationships between input factors and predicted values, but because these relationships are opaque to us, the data scientist, they don't really help us understand the problem space.

## When Are Our Predictions Valid?

Because passive-prediction is fundamentally about making predictions about things that are not-yet-seen, making predictions is one of the more precarious things a data scientist can do. But that doesn't mean that we are helpless when it comes to determining how confident we should be in our predictions, and when and where we think our predictions will be reliable. In particular, as data scientists we have a great many tools for evaluating how well our model fits the data we *already have* (a concept known as *internal validity*), and ways of thinking critically about the contexts in which using a given model to make predictions is appropriate.

### Internal Validity

Of all the places where data science is fragmented, none is more evident than in how data scientists evaluate how effectively we think a model is faithfully representing the variation in the dataset.

The first data science perspective on evaluating the internal validity of a model comes from the field of statistics. Statisticians have approached evaluating model fit with, unsurprisingly, methods based on making assumptions about the statistical distributions underlying their data and deriving principled metrics from statistical principles and the concept of random sampling. That's the origin of metrics like Akaike Information Criterion (AIC), Bayesian Information Criterion (BIC), bootstrapping, etc., as well as the emphasis on the validity of the standard errors assigned to factors on the right-hand side of the regression.

When designing machine learning methods, computer scientists... I'm editorializing a little here, but I think it's safe to say that initially they either didn't *know about* a lot of statistics, or they thought that they could do it better than statisticians. So the way they approached dealing with evaluation of how well their model was fitting their data was to split their data into two parts: a training dataset (usually about 80\% of the data) and a test dataset (the other 20\%). They then fit their model with the training data and evaluate the model based on how well the model is able to predict the (known) outcomes in the test dataset.

Of course, over time these two fields have largely converged in adopting one another's methods, and some—like cross-validation—live comfortably in the middle. But if you're ever wondering why, when you get to a machine learning class, it seems like everything you learned in stats has been abandoned (or end up in a stats class and have the opposite experience), it's largely an artifact of parallel development of methods of model evaluation in computer science and statistics departments.

### External Validity

## Manipulation and External Validity

External validity can refer to "outside the range of parameters in the training data", but it can also refer to situations where the processes shaping outcomes in the world may have changed!
