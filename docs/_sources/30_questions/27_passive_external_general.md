# Passive Prediction Questions and External Validity

In this chapter, we will discuss the concept of External Validity as it pertains to answering Passive Prediction Questions. Where *internal validity* measures how well a model captures meaningful variation in the data we already have, *external validity* measures how well our model is likely to perform when faced with new data.

As we learned before, a model's external validity is specific to the new context to which it is applied. A model will generally have very *high* external validity when used to answer Passive Prediction Questions in a setting very similar to the setting from which the data used to train the model was collected, but *low* external validity when applied in geographically, temporally, or socially different settings.

Some of the factors that influence the External Validity of Passive Prediction Questions are the same as those that shape the External Validity of Exploratory Questions, such as the population represented in the data (patterns in data from one country will often differ from patterns in data from another country), the time period in question (consumer behavior may vary across seasons, and many patterns in data change over longer timespans). But there are other concerns that are a little more specific to Passive Prediction Questions. In this chapter, I will discuss several of these concerns. As with Exploratory Questions, I will focus on more holistic considerations since I suspect you've already been exposed to more traditional statistical methods of model evaluation.

## Extrapolation and Training Parameter Ranges

Tools for evaluating internal validity help ensure that statistical and machine learning models will tend to fit the data on which they are trained relatively well. However, while most statistical models are capable of generating predicted values over a very broad range of input values, their reliability outside the range of values on which they were trained is often very limited. Asking a model to make predictions for inputs on which the model wasn't trained is called *extrapolating*, and is a great way to get oneself into trouble.

To illustrate, consider the two models in the figure below ([source](https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/06LeastSquares/extrapolation/complete.html))—one a linear fit, and one a higher-order polynomial. Both model the data similarly *in the range for which data is available* — and so will perform similarly when one uses the metrics described above to evaluate the model's internal validity — but make very different predictions when asked to extrapolate values of `x` below 0 or above 2.

![example of two models that look similar over ranges with data but extrapolate very differently outside that range](images/extrapolation.jpg)

Strategies like regularization are designed to constrain the "wonkiness" of models with the goal of making them less likely to go crazy outside the parameter range on which they were trained. Almost by definition, however, absent data in those extended ranges, there's no way to know for certain whether the model will generalize.

### What Constitutes Extrapolation?

In the example above, "extrapolation" refers to predicting values below 0 and above 2. However, what constitutes an extrapolation depends in part on the complexity of the model. With a nice, interpretable linear model, it's not hard to have confidence that the model will make a reasonable prediction for $x=0.5$, even though that specific value wasn't in the training data.

But when working with highly non-linear models — neural networks, random forests, etc. — that aren't interpretable and aren't constrained to smooth functional forms — the only place one can feel sure of the behavior of the model is at the exact data points tested. The same flexibility that allows these models to accommodate unusual non-linear relationships can also lead to bizarre behavior either between points in the training data or where the model has over-accommodated a couple of idiosyncratic training examples (such as odd cases *or* observations with data entry errors).

For example, a credit risk model may make perfectly reasonable predictions for:

- a married 45-year-old woman of Hispanic descent who lives in Colorado, and
- a married 47-year-old woman of Hispanic descent who lives in Colorado

but make a crazy prediction for:

- a married 46-year-old woman of Hispanic descent who lives in Colorado, or
- a married 45-year-old woman of Hispanic descent who lives in Montana.

Indeed, it's precisely for this reason that for many high-stakes decisions, regulators are increasingly requiring the use of interpretable models that include guarantees (like monotonicity) — a topic we will return to in a couple of readings.

The more flexible the model, the more data points are required to constrain the model's behavior (the so-called "curse of dimensionality"), and the more cautious you should become. There's a reason that LLMs hallucinate despite being fed unfathomably large amounts of data.

## Train-Test-Splits and External Validity

A common misconception among young data scientists is that the train-test-split workflow used in machine learning inoculates against external validity concerns. After all, the idea of split-train-test is that models are trained on one set of observations and evaluated against an entirely different set of observations.

While train-test-split can *help* reduce external validity concerns by guarding against overfitting, a fundamental limitation of the workflow is that training and test observations both come from the *same context.* Indeed, because test and training datasets are created by randomly splitting the observations from a single dataset, they should always have the same properties (at least in expectation) — a guarantee one certainly won't get when moving from the data used to build a model to a real-world deployment.






