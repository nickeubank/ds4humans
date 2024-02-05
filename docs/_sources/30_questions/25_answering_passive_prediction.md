# Answering Passive Prediction Questions

Because passive-prediction is fundamentally about making predictions about things that are not-yet-seen, making predictions is one of the more precarious things a data scientist can do. But that doesn't mean that we are helpless when it comes to determining how confident we should be in our predictions, and when and where we think our predictions will be reliable. In particular, as data scientists, we have a great many tools for evaluating how well our model fits the data we *already have* (a concept known as *internal validity*), and ways of thinking critically about the contexts in which using a given model to make predictions are appropriate (a concept known as *external validity*).

### Internal Validity

Of all the places where data science is fragmented, none is more evident than in how data scientists evaluate how effectively we think a model is representing our data.

The first data science perspective on evaluating the internal validity of a model comes from the field of statistics. Statisticians have approached evaluating model fit with, unsurprisingly, methods based on the idea of random sampling and the properties of statistical distributions. They make assumptions about the distributions underlying data and use those to derive theoretically-motivated metrics. That's the origin of statistics like Akaike Information Criterion (AIC), Bayesian Information Criterion (BIC), as well as the emphasis on the validity of the standard errors assigned to factors on the right-hand side of the regression.

When computer scientists were first developing their own machine learning techniques... I'm editorializing a little here, but I think it's safe to say that initially they either didn't *know about* a lot about these metrics, or they thought that they could do a better job investing their own. So they developed the "split-train-test" approach to model evaluation: they split their data into two parts, train their model on part of the data, then test how well the model is able to predict the (known) outcomes in the test dataset.

Of course, over time these two fields have largely converged in adopting one another's methods, and some—like cross-validation—live comfortably in the middle. But if you're ever wondering why, when you get to a machine learning class, it seems like everything you learned in stats has been abandoned (or end up in a stats class and have the opposite experience), it's largely an artifact of parallel development of methods of model evaluation in computer science and statistics departments.

### External Validity

Where *internal validity* is a measure of how well a model captures the meaningful variation in the data we already have, *external validity* is a measure of how well we think that our model is likely to perform when faced with new data.

The external validity of a model, it is important to emphasize, is specific to the context in which a model is being used. A model will generally have very *high* external validity when used to answer Passive-Prediction Questions in a setting that is very similar to the setting from which the data used to train the model was collected, but *low* external validity when applied in a very different setting.

There are a range of factors that can determine external validity, such as whether a model is being used to answer Passive-Prediction Questions about:

- the *same population* from which the training data was drawn. The patterns in data from one country will often differ from patterns in data from another country, for example.
- the *same time period* from which the training data was drawn. Consumer behavior may vary across seasons, and many patterns in data change over longer timespans.
- the *same parameter ranges* as those in the training data. Statistical and machine learning models are designed to fit the data they can see as well as possible. However, while nearly all models will generate predictions about outcomes when given inputs that weren't in the data used to fit a model because they weren't trained with access to data of this type, their guesses are unlikely to be particularly meaningful.

<!-- Need a figure we make ourselves -->

To illustrate, consider the two models in the figure below ([source](https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/06LeastSquares/extrapolation/complete.html))—one a linear fit, and one a higher-order polynomial. Both model the data similarly *in the range for which data is available* but make very different predictions at values of `x` below 0 or above 2.

![example of two models that look similar over ranges with data but extrapolate very differently outside that range](images/extrapolation.gif)

<!-- ## Manipulation and External Validity

Models may exhibit low external validity when applied in contexts that are obviously very different from the data on which it was trained: in a different country, in a different industry, in a different climate, or during a different time of year. But they can sometimes also fail to perform well in situations where everything *looks* similar, but the processes generating the data have changed.

Suppose, for example, we wanted to go back to our example of wanting to reduce complications from surgery. So we build a model that allows us to predict, for each patient going into surgery, the likelihood they will eventually experience complications. -->
