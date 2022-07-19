# Ethics in Data Science

- Motivation: piles of case studies. See list under “Prediction: ML Bias” (March 29 at the moment) here
Two types of “unethical algorithms: biased performance and biased predictions. 
- Biased Performance:
    - Super ethically straightforward—works for one group (e.g., White people) but not another (e.g., Black people). “Works” can be defined in terms of whatever performance metrics we care about (accuracy, recall, etc.), but the point is that the error rate is different across groups (e.g., the zoom background blurring algorithm that can’t see Black faces, so just blurs their screens). 
- Biased Predictions:
    - Now the much more complicated one: suppose that your model gives different predictions for people from different group (Black/White), but that’s because that’s what is in the data. Is that ok?
    - If the data is biased: probably not! E.g. Amazon (I think this is what happened) tried to make algorithm that would look at a resume and predict how good an employee that person would be if hired. So it used resumes to train a dataset using managerial employee ratings as labels. But… managers were biased. That was the problem. So algorithm just learned to recapitulate the misogynistic rating of managers. Gotta make sure you know what question is being answered by your algorithm…
    - If the data is NOT biased: depends! Suppose that a model to predict success of a kidney transplant designed to maximize the efficiency of kidney transplant allocations systematically scores black recipients as being less likely to still have their transplanted kidneys and be healthy after ten years… but it’s not an anomaly of the model, it’s a real fact in the world. Is it OK to down-rank Black recipients? (not a contrived example). In that context, providing black recipients with less access to kidneys seems deeply problematic, even if rating them higher will result in less “years of healthy kidneys” after transplant. Here it seems like racially disparate outcomes are unethical. But what if we want to allocate HIV preventative interventions? Black Americans have a much higher incidence of HIV than any other ethnic group in the US—a model that suggests targeting their communities with more interventions would seem appropriate, on a model that doesn’t recognize that HIV rates in the Black community are more than 2x the next closest group seems like it wouldn’t be very helpful.
    - Chicago crime example: https://www.theverge.com/c/22444020/chicago-pd-predictive-policing-heat-list
    - https://filtermag.org/chicago-crime-prediction/
    - https://medium.com/analytics-vidhya/predicting-arrests-looking-into-chicagos-crime-through-machine-learning-78697cc930b9

But… it’s data? How do our values come into play!
Like… checking performance of algorithms for different racial/ethnic groups. 
Or looking for racial/gender heterogeneity during descriptive analyses.
