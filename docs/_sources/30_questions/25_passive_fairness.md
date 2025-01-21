# Fairness and Passive Prediction

How our models make mistakes is often not just a financial decision; when statistical models are used to make high stakes decisions — like who is sent to prison and who is let out on bail pending trial — how errors are distributed can often be deeply, *deeply* ethically fraught issue.

To illustrate, let's consider the example of Risk Assessment models. Risk Assessment models are models used in the US criminal justice system that are designed to help judges and parole boards determine the risk that a criminal defendant or incarcerated person may re-offend if released from jail. These are increasingly commonly used for purposes like determining whether arrested individuals should be released while they await trial and whether incarcerated individuals should be paroled (released before the end of their prison sentence to a half-way house or monitored release).

The way Risk Assessment models are being used in the US has many, many problems. But a recent debate about an aspect of one of the most commonly used models — the COMPAS Risk Model — is illuminating about the moral issues that arise when handling misclassifications. If you would like to learn more about this debate and difference concepts of algorithmic fairness, I strongly recommend [Bias In, Bias Out](https://www.yalelawjournal.org/article/bias-in-bias-out) (2019), a Yale Law Journal article by [Sandra G. Mayson](https://www.law.upenn.edu/faculty/sgmayson).

In 2016, the investigative news outlet ProPublica published a piece about COMPAS called [Machine Bias](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing). In it, journalists Julia Angwin, Jeff Larson, Surya Mattu and Lauren Kirchner used data from Florida to evaluate how well the COMPAS risk assessment model predicted criminal recidivism (the term for when a criminal defendant commits another crime in the future).

The [ProPublica analysis determined](https://www.propublica.org/article/how-we-analyzed-the-compas-recidivism-algorithm), in part, that:

> Black defendants were often predicted to be at a higher risk of recidivism than they actually were. Our analysis found that black defendants who did not recidivate over a two-year period were nearly twice as likely to be misclassified as higher risk compared to their white counterparts (45 percent vs. 23 percent).

In other words, the false positive rate for Black defendants was higher than it was for White defendants.

While apparently rather damning of the model, COMPAS' response was that this was actually a consequence of the fact that their model generated equal True Positive Rates across Black and White defendants. And while I am generally loath to defend COMPAS, as I think it has *many* problems and should not be in use, in this particular case they have a point.

As Sandra Mayson points out in her paper, the issue is that the likelihood someone will be arrested for a future crime (be arrested for recitivism) is imbalanced by race. As a consequence, a model that has the same True Positive Rate for Black and White defendants (i.e., the share of people predicted to re-offend who do re-offend is the same for both groups) will *necessarily* have different False Positive Rates for the two groups.

To illustrate, consider the following figure from Mayson's paper with two groups, drawn as grey and black. Solid outlines are individuals who do not recitivate, while hollow figures are those who are re-arrested. In the grey group, 2/10 individuals are re-arrested, while only 1/10 are re-arrested in the black group. The vertical line represents the classification threshold used by the model.

Note that this implies the grey outlines are in the situation akin to that of Black Americans (more likely to be arrested for recitivism) and the black outlines are in the position of White Americans (less likely to be rearrested), which is a little confusing.

![groups with different false positive rates](images/mayson_fig1.png)

With the line in the location shown in the figure, we can see that the model has the same True Positive Rate for both populations — grey and black (50%). But as a result, the *False* Positive Rate is higher for the grey individuals (2/8). Thus while the ProPublica finding is true — the False Positive Rate of COMPAS is higher for Black defendants — the only way to even this out would be to shift the classification threshold for the black outlines over, as illustrated in Figure 2 from her paper:

![groups with different true positive rates](images/mayson_fig2.png)

This balances the False Positive Rates for the two groups, but in doing so results in the True Positive Rate being lower for the black outlines.

Can we do better? Well, we could get equal True Positive Rates and False Positive Rates, but only by accepting differential False *Negative* rates, as illustrated in Mayson's Figure 3:

![groups with different false negative rates](images/mayson_fig3.png)

As Mayson writes:

> As this example illustrates, if the base rate of the predicted outcome differs across racial groups, it is impossible to achieve (1) predictive parity; (2) parity in false-positive rates; and (3) parity in false-negative rates at the same time (unless prediction is perfect, which it never is). Computer scientists have provided mathematical proofs of this fact.[^impossibility] When base rates differ, we must prioritize one of these metrics at the expense of another. Race neutrality is not attainable.

[^impossibility]: See Alexandra Chouldechova, *Fair Prediction with Disparate Impact: A Study of Bias in Recidivism Prediction Instruments*, 5 BIG DATA 153 (2017) and Jon Kleinberg et al., *Inherent Trade-offs in the Fair Determination of Risk Scores*, LEIBNIZ INT'L PROC. INFORMATICS, Jan. 2017, at 43:1, 43:4.

```{note}
Please note that in the discussion of imbalanced recitivism arrest rates, I said *arrested for* recitivism — a huge problem with all of these risk assessment models is that we know from many studies that even in situations where Black and White Americans *commit* crimes at similar rates (like drug use), Black Americans are substantially more likely to be *arrested* for those crimes. Thus, an imbalance in arrests for recitivism do not necessarily imply differences in *actual* recitivism.

Indeed, this form of inequity is also a problem on the input side — Risk Assessment models take into account whether a defendant has prior convictions, but given Black Americans are more likely to be arrested even in situations where were know criminal behavior occurs at similar rates for Black and White Americans, and Black Americans are likely to have lower-incomes and thus less likely to have lawyers who can get charges dismissed, these models tend to treat them as higher risk.
```

So what is the right answer? Well, there isn't one — each of these different schemes is defensible under different ethical frameworks. And that's the problem — there's no algorithm or machine learning metric that can tell you the "right" answer in a situation like this — it requires critical thought, engagement with [prescriptive Questions](05_descriptive_v_prescriptive.md), and careful discussion with your stakeholder.
