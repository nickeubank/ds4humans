# Class Schedule

Class: Tuesday / Thursday, 1:25-2:40pm

Office Hours: 

- Nick: Thursday, 9:30-10:30am, [https://duke.zoom.us/my/nickeubank](https://duke.zoom.us/my/nickeubank) or Gross Hall 231

## Texts Used

This course will make use of readings from a handful of different sources. The main four, in order of the amount they will be used, are:

- **DS4H**: [Data Science for Humans](https://ds4humans.com) (This website, free.)
- **Cunningham**: [Causal Inference Mixtape](https://www.amazon.com/Causal-Inference-Mixtape-Scott-Cunningham/dp/0300251688) ($30 new, $20 used. [Online Access through Duke Library](https://ebookcentral.proquest.com/lib/duke/detail.action?docID=6425560))
- **KTX**: [Trustworthy Online Controlled Experiments: A Practical Guide to A/B Testing](https://www.amazon.com/gp/product/1108724264/) ($40 new, $30 used.)
- **GHV**: [Regression and Other Stories](https://www.amazon.com/Regression-Stories-Analytical-Methods-Research/dp/1107676517) ($40. Too new to have used versions.)


```{csv-table} Class Schedule
:header-rows: 1

Date,Topic,Do Before Class,In Class
Th Jan 9,Course Overview, ,acme
Tu Jan 14,Solving Problems by Answering Questions,"- `Read, sign, submit syllabus on gradescope. <https://github.com/nickeubank/unifyingdatascience/raw/master/syllabus/Syllabus_UnifyingDataScience.pdf>`_
- `How to Read <how_to_read.ipynb>`_
- `Solving Problems <https://ds4humans.com/10_introduction/10_our_approach.html>`_",generating
Th Jan 16,Stakeholder Management,"- `Solving the Right Problem <https://ds4humans.com/10_introduction/30_solving_the_right_problem.html>`_
- `History of Data Science <https://ds4humans.com/10_introduction/40_data_science_in_historical_context.html>`_ 
- `Why It's Important To Get Your Question Right (30 min video) <https://www.youtube.com/watch?v=kYMfE9u-lMo>`_",stake
Tu Jan 21,Proscriptive v. Descriptive Questions,- `Descriptive versus Prescriptive Questions <https://ds4humans.com/30_questions/05_descriptive_v_prescriptive.html>`_,
Th Jan 23,"Exploratory Questions: Purpose, Internal and External Validity","- `EDA <https://ds4humans.com/30_questions/07_eda.html>`_
- `Using Exploratory Questions <https://ds4humans.com/30_questions/10_using_exploratory_questions.html>`_
- `Answering Exploratory Questions <https://ds4humans.com/30_questions/15_answering_exploratory_questions.html>`_
- `Internal v. External Validity <https://ds4humans.com/30_questions/17_exploratory_questions_internal_external.html>`_",exp
Tu Jan 28,Capstone With Training Wheels Assignment,,"- Explor Assign
- How to write to stakeholders"
Th Jan 30,Teams 1,"- `What Project Aristotle Learned <https://github.com/nickeubank/unifyingdatascience/raw/master/team_readings/project_aristotle_nytimes.pdf>`_
- Edmondson, The Fearless Organization, Chpt 1 (on Canvas)",
Tu Feb 4,Teams 2,"- `Review Team Charter Assignment <https://github.com/nickeubank/unifyingdatascience/raw/master/team_readings/MIDS%20Team%20Charter%20Assignment.docx>`_
- Edmondson, Teaming, Chpt 2 from ""Cognitive Barriers to Teaming"" (p. 82) to end of Chapter (on Canvas)
- Cross Cultural Intelligence
- When and How to Escalate
 
 Optional: `Fostering Psychological Safety Tips <https://docs.google.com/document/d/1PsnDMS2emcPLgMLFAQCXZjO7C4j2hJ7znOq_g2Zkjgk/export?format=pdf>`_",
Th Feb 6,Passive Prediction Questions: Purpose and Alignment,"- `Using Passive Prediction <20_using_passive_prediction_questions.html>`_
- `Answering Passive Prediction <30_questions/25_answering_passive_prediction.html>`_",- Pass
Tu Feb 11,Passive Prediction Questions: Internal and External Validity,- `Right Way To Be Wrong <30_questions/26_passive_prediction_errors.md>`_,
Th Feb 13,Giving Feedback,Feedback Exercise?,Feedback Exercise?
Tu Feb 18,Passive Prediction Questions: Loss Functions,,"- admissions
- interp"
Th Feb 20,Passive Prediction Questions: Interpretability,"- `Stop Using Black Boxes <https://arxiv.org/abs/1811.10154>`_
- `Black box models require trusting data too <https://www.nytimes.com/2017/06/13/opinion/how-computers-are-harming-criminal-justice.html>`_
 
 **Optional:**
 
 - `Combining explicit models and black boxes in Scientific ML <https://notamonadtutorial.com/scientific-machine-learning-with-julia-the-sciml-ecosystem-b22802951c8a>`_
",
Tu Feb 25,Causal Questions: Purpose,"- `Using Causal Questions <https://ds4humans.com/30_questions/30_using_causal_questions.html>`_
- `Answering Causal Questions <https://ds4humans.com/30_questions/40_answering_causal_questions.html>`_",
Th Feb 27,Causal Questions: Potential Outcomes,- `Potential Outcomes Framework <https://ds4humans.com/35_causal/10_potential_outcomes.html>`_,po
Tu Mar 4,Causal Questions: Potential Outcomes,"- Cunningham, Chpt 4, pp 135 (""Independence Assumption"") - 148 (Stop at ""Randomization Inference"")
- `Indicator Variables <https://ds4humans.com/35_causal/30_interpreting_indicator_vars.html>`_

(Note `SDO` (Simple Difference in Outcomes) in Cunningham same as ""`\widehat{ATE}` from class)

 Optional:
  - Read Chpt 4 in Cunningham from start (different presentation of potential outcomes)",resume
Th Mar 6,"Causal Questions: Experiments in Practice, Internal Validity","Experiments: Internal Validity (In Practice):

- KTX: Chpt 2 (End to End Example)
- KTX: Chpt 3, ""Threats to Internal Validity"" (p. 42-47) 
- KTX: Chpt 19 (A/A Testing)",
Tu Mar 11,"Causal Questions: Experiments in Practice, External Validity","Overall Evaluation Criteria: KTX Chpt 7.

Finishing Internal Validity: 

- Different Randomizations: KTX Chpt 22

Experiments: External Validity (In Practice):

- KTX, Chpt 3, ""Threats to External Validity"" to end (p. 47-54)
- Kohvai, Tang and Xu, Chpt 23 (Primacy Effects / Long Term Decay)",abtest
Th Mar 13,"Causal Questions: Experiments in Practice, Design","Designing Experiments

- Statistical Power and Sample Sizes: GHV Ch 16
- `Don't stop experiments early! <endogenous_stopping.ipynb>`_

 
","power
p-value preview"
Tu Mar 18,**NO CLASS**,,
Th Mar 20,**NO CLASS**,,
Tu Mar 25,"Causal Questions: Experiments, Bayesian Analysis",AB Testing Review,
Th Mar 27,"Causal Questions: Experiments, Bayesian Analysis & Decision Theory","- Statistical Decision Theory (on Canvas). 550-556

(This is same as IDS 705 Lecture 8 Reading)",
Tu Apr 16,**MIDTERM**,**MIDTERM**,
Th Apr 3,Causal Questions: Regression,- `Causal Beyond Experiments <https://ds4humans.com/35_causal/40_causal_inference_beyond_ab_testing.html>`_,incomeineq
Tu Apr 8,Causal Questions: Matching,"- `The Why of Matching <https://ds4humans.com/35_causal/80_matching_why.html>`_
- `The How of Matching Summary <https://ds4humans.com/35_causal/90_matching_how.html>`_
- `Methods for Matching <https://youtu.be/tvMyjDi4dyg?t=910>`_

*Watch the video above from about 15 minutes in (where link starts) till at least 45 minutes in, keep going if you want to learn about propensity score matching problems.*",matching
Th Apr 9,Causal Questions: Differences and Differences / Panels,"- Cunningham, Chpt 9 pp 406 (Difference in Differences) - pp 433 (Stop at ""Importance of Placebos in Diff-in-Diff"")
 -(Book page numbers at bottom of PDF on canvas. Full chapter is in PDF, more than you need to read.)
 
 Optional but encouraged:
 (dont need to follow everything, but here's a real diff-in-diff)
 
 - `Enfranchisement and Incarceration <https://www.cambridge.org/core/journals/american-political-science-review/article/enfranchisement-and-incarceration-after-the-1965-voting-rights-act/C68FA7BB8CA313BDD8D9A39BA666A21D>`_
 - `Diff-in-Diffs at Netflix <https://netflixtechblog.com/key-challenges-with-quasi-experiments-at-netflix-89b4f234b852>`_",
Tu Apr 15,Interpretation of Results,- **Revised Exploratory Due along with Causal Proposal**,ev
"Wed, April 23",,- **Optional Due Date for Causal Rough Draft (11pm)**,
"Wed, Apr 30",,- **Final Causal Report Due**,
```


