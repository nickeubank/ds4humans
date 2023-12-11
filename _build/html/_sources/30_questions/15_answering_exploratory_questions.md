# Answering Exploratory Questions

In the last reading, we discussed how Exploratory Questions are used by data scientists to help stakeholders better understand their problems and to prioritize subsequent investigations. In this reading, we turn to the questions of what *answering* Exploratory Questions effectively entails.

## The Three-Part Goal

Whether one uses simple summary statistics (means and medians), plots, or more sophisticated algorithms from the domains of statistical inference and unsupervised machine learning, answering Exploratory Questions always boils down to the same challenge:

**Creating (1) understandable summarizations (2) of meaningful patterns in the data, (3) and ensuring they are faithful representations of the data.**

What is meant by these three components exactly? Let's take each in turn.

### Understandable Summarizations

> Creating **(1) understandable summarizations** (2) of meaningful patterns in the data, (3) and ensuring they are faithful representations of the data.

Answering Exploratory Questions effectively is all about taking large datasets that, in their raw form, are effectively incomprehensible to humans and summarizing the patterns in that data in a way that can be understood. These summaries of patterns in the data may take many forms — summary statistics, regression coefficients, plots, etc. — but all, when done well, have a similar goal: to represent the salient aspects of data in a way that is accessible to the human mind.

Professionals from different disciplines often use different terminology to describe this process of summarization. Some like to refer to it as "separating the signal (the thing that's important) from the noise (all the other variation that doesn't matter)," others talk about "dimensionality reduction" (basically linear algebra speak for summarization), while still others may talk about "modeling the underlying data generating process that gave rise to the observed data." Regardless of the terminology one uses, however, these all boil down to the same thing: filtering and discarding the variation the data scientist deems to be irrelevant to make it easier to see and understand the variation deemed important.

The importance of researcher discretion in deciding what variation to discard as noise and what variation to foreground as "important" is one of the defining challenges of answering Exploratory Questions. Other types of questions — like Passive Prediction Questions — often involve using more mathematically sophisticated modeling tools, and consequently are viewed as more challenging. In my experience, however, learning to understand the stakeholder's problem context *and* the variation in a data set well enough to exercise this discretion effectively is actually one of the things young data scientists struggle with most. It requires both good domain knowledge to understand what is *meaningful* (as we will discuss below), and also for the data scientist to spend a lot of time exploring the data thoughtfully and from different perspectives. This is a hard skill to learn,[^eda] but with intentionality, patience, and practice, it is a talent that once learned will helps set you apart from the average pytorch-jockey.

[^eda]: Although I am far from convinced that the discipline has tried particularly hard to teach it ([see my screed against "EDA"](07_eda.ipynb)).

Summarizations created to answer Exploratory Questions can differ radically in their ambition. At one end of the spectrum are simple summary statistics, like means, median, and standard deviations. These seek to provide a simple characterization of a single feature of a single variable. Slightly more ambitious are various forms of plots — like histograms (which are substantially richer than the aforementioned summary statistics) or scatter plots and heatmaps (which provide substantial granularity and communicate information about the relationship between different variables). The most ambitious efforts make use of multivariate regressions and unsupervised machine learning algorithms to model what they call the *Data Generating Process* (DGP) — the actual physical or social processes that gave rise to the data you observe, and which (hopefully) can be represented in a relatively parsimonious manner, much as the relatively simple laws of physics give rise to the orbits of the planets and the complexity of life.

To illustrate what I mean by trying to deduce something about the data generating process, suppose you are a medical researcher interested in a poorly understood disease like Chronic Fatigue Syndrome (CFS). It is generally agreed that CFS is more of a label for a constellation of symptoms than an understood physical ailment, and you have a hypothesis that the symptoms of CFS aren't actually caused by a single biological dysfunction, but rather that there are multiple distinct biological dysfunctions that give rise to similar symptoms that we have mistakenly grouped under this same umbrella term. In other words, you think that the data generating process that gives rise to patients diagnosed with Chronic Fatigue Syndrome actually consists of two distinct diseases.

You're fortunate enough to have detailed patient data on people diagnosed with the condition, but it's impossible for you to just look at these gigabytes of thousands of patient records and "see" any meaningful patterns. You need a way to filter out irrelevant data to identify the "signal" of these two conditions. To aid you in this question, you decide to ask "if you were to group patients into two groups so that the patients in each cluster looked as similar as possible, but patients in different clusters looked as *dissimilar* as possible, how would you group these patients?"

This, you may recognize, is precisely the question clustering algorithms (a kind of unsupervised machine learning algorithm) are designed to answer! So you apply your clustering algorithm to the patient data, and get back a partition of the patients into two distinct groups. This, in and of itself, it doesn't constitute a particularly *understandable* summarization of your data, but it provides a starting point for trying to investigate *diagnostically and biologically relevant* differences exist between these populations. If one cluster included more patients reporting fatigue when doing any exercise, while another cluster reported they felt better when they exercised, but felt a high level of baseline fatigue that didn't respond to sleep, that might suggest that the *data generating process* for these patients was actually driven by two different biological processes. *And* it gives you a great starting point to prioritize your subsequent investigations into what might explain these differences!

### Meaningful Patterns

> Creating (1) understandable summarizations **(2) of meaningful patterns in the data,** (3) and ensuring they are faithful representations of the data.

Inherent in creating any summarization is exercising discretion over what variation is relevant (signal) and what variation is not (noise). But just as one person's trash may be another person's treasure, so too may one person's signal be another person's noise, depending on their goals! Crucially, then, the data scientists' guiding star when deciding what is important is whether certain variation in the data is *meaningful to the stakeholder's problem*.

As data scientists, we are blessed with an abundance of tools for characterizing different facets of our data. These range from the simple — means, standard deviations, and scatter plots — to the profoundly sophisticated, like clustering algorithms, principal component analyses, and semi-parametric generalized additive models.

Regardless of the specific methods being employed, however, none of these tools can really tell us whether the patterns they identify are meaningful, and that's because what constitutes a meaningful pattern depends on the problem the stakeholder is seeking to address and the context in which they're operating.

To illustrate the importance of context, suppose you are hired by a hospital to learn what can be done to reduce antibiotic resistant infections. So you grab data on the various bacteria that had been infecting patients and write a web scraper and Natural Language Processing pipeline to systematically summarize all available research on the cause of these antibiotic resistant bacteria. Your work is *amazing*, seriously top of the line, and after two months you conclude that in most cases, the cause of antibiotic resistance in the bacteria infecting patients is... the use of antibiotics in livestock.

Now, that analysis may not be *wrong* — you have properly characterized a pattern in the data — but it isn't a pattern that's meaningful to your stakeholder, who has no ability to regulate the livestock industry. That pattern might be meaningful to someone else — like a government regulator — but in this context, with this stakeholder, it just isn't helpful. The features of the data that are important, in other words, depending on what we may be able to do in response to what we learn. And there's no summary statistic, information criterion, or divergence metric that can evaluation whether a pattern of this type is *meaningful*.

### Faithful Representations

> Creating (1) understandable summarizations (2) of meaningful patterns in the data, **(3) and ensuring they are faithful representations of the data.**

What do you means, medians, standard deviations, linear regressions, logistic regressions, generalized additive models (GAMs), singular value decomposition (SVD), principal component analyses (PCAs), clustering algorithms, and anomaly detection algorithms all have in common?

Answer: unless your dataset is extremely degenerate, you can point *any* at these tools at your data and they will return a relatively easy to understand characterization of the structure of your data.

At first, that may seem extremely exciting. But if you think about it a little longer you will realize the problem: all of these are designed to give you a relatively understandable summary of radically different properties of your data, and even though they will all provide you with a result, these results can't all possibly be faithful representations of the dominant patterns in your data.

To illustrate the point, suppose I told you that in one university math course, the average grade was a B-. You might infer that students were doing pretty well! But now suppose I told you that in a different university math course, 20\% of the students had gotten a 0 on the midterm and on the final—you would probably infer something was going seriously wrong in that class. And yet those two statistics could both be true of the same class—the only difference is what patterns in the data *I*, the data scientist, have decided are meaningful to communicate to you, the reader.

The example of the math class in which the average grade was a B- and 20\% of the students were failing also illustrates one of the great dangers of tools for data summarization: they are so eager to please, they will *always* provide you with an answer, whether that answer is meaningful or not. I think most readers would agree that learning that the average grade in the class was a B- actually misleads more than it informs (since for the class to have an average grade of 80\% and a 20\% fail rate, the grade distribution would need to be something like 20\% 0's and 80\% 100's). Indeed, it's worth emphasizing that while hearing "the average grade is a B-" makes the reader think that most kids are doing ok-ish, the reality is that *no one* in the class is doing ok-ish! They're either doing horribly or terrifically!

Less that feel like a contrived example, consider the case of Aimovig, a drug authorized by the FDA in 2018 for treating chronic migraines that was heralded as a "game changer" for the treatment of migraines.

To get Aimovig authorized, the pharmaceutical companies developing (Amgen and Novartis) had to run a clinical trial in which a random sample of people with chronic migraines were given Aimovig (the treatment group) and a random sample was a placebo (the control group). Patients in the clinical trial self-reported how their migraine frequency changed when in the trial, and the effectiveness of the Aimovig was then evaluated by comparing the decrease in self-reported migraines for those taking Aimovig (on average, a decrease of 6-7 migraines a month) to the decrease in self-reported migraines for those taking a placebo (on average, a decrease of 4 migraines a month).[^placebo] This difference of 2-3 migraines a month — called the "Average Treatment Effect" of the trial — was found to be positive and statistically significant, and so the drug was authorized. And indeed, if you see an ad for Aimovig, you'll probably see the average effect of the drug reported in the same way:

[^placebo]: A placebo is a "fake" treatment given to patients in clinical trials. Despite not being biologically active — placebos are often simple saline or sugar pills — most patients on placebos see their condition improve when dealing with subjective conditions, like pain.

![migraine_average_effect](images/migraine_average_effect.png)

That's great! Chronic migraines can be a crippling disability, so any improvement in treatment is exciting. But you would be excused for asking why people were getting *so* excited about what seems like a relatively small reduction in migraines.

The answer, as it turns out, is that almost nobody experiences this "average effect." Instead, *most* people who take Aimovig see little to no benefit, but *some* (depending on your criteria, something like 40%) see their migraine frequency fall by 50% or more. Amgen and Novartis don't yet know how to identify who will benefit and who will not before they try the drug, and we don't allow drug companies to "move the goal posts" after a clinical trial has already started by changing the way they plan to measure the effectiveness of a drug (for fear they will hunt through the data till they find a spurious correlation that makes it look like the drug works when it really doesn't), so this average effect remains the only statistic that Amgen and Novartis are allowed to report in their advertising.

But if you're a *doctor* or a *patient*, it seems clear that this simple average effect — a reduction of 2-3 migraines a month — really does not provide a *faithful* summary of the underlying variation.

### But... I Thought Unsupervised Machine Learning Always Found The "Best"

"Fine," I hear you say, "that makes sense for simple summary statistics. Those are computed by simple formulas. But what about unsupervised machine learning algorithms or generalized additive models? Those use numerical optimization to find the *best* answer!"

Well... yes and no. As you may recall, in the first chapter of the book I posited that all data science algorithms are just fancy tools for answering questions, and even the most sophisticated unsupervised machine learning algorithms are no exception. While it is true that the machinery that underlies these algorithms is much more sophisticated than the formula we use for calculating a variable's average, it is important to not attribute too much intelligence to these tools.

Underlying any unsupervised machine learning algorithm is a simple formula the takes as input whatever parameters the algorithm gets to choose (be those factor loads in a PCA model, or the assignment of observations to clusters in a clustering algorithm) and returns as output a single number. Often this number is called "loss," and the function is called a "loss function," but occasionally different terminology will be used.

One way to think of the job of an unsupervised machine learning algorithm is to pick the parameter values that minimize this loss function. A clustering algorithm for example, may try and assign observations to clusters to maximize the similarity of observations within a cluster (say, by minimizing the sum of squared differences between the values of certain variables for all observations within a cluster) while also maximizing the differences between observations in different clusters (say, by maximizing the sum of squared differences between the values of certain variables for all observations *not* in the same cluster).

But another way to say that is that the job of an unsupervised machine learning algorithm (or any algorithm, really) is to find the parameter values (coefficients in a regression, observation assignments for a clustering algorithm) that answer the question "If my goal is to minimize [whatever the loss function your specific algorithm seeks to minimize], how should I do it?" Data science tools are incredibly powerful in finding answers to these kinds of questions — answers you may have never figured out in millions of years! — but their power lies in figuring out the best way to accomplish an articulated goal, *not* in figuring out what goal to pursue.

This is true at both the macro level (doesn't make sense to look for clusters in my data?) and also at the micro level (when assigning observations to clusters, how do I measure success?). Hidden inside nearly all algorithms you use are a handful of baked-in choices you may not even realize are being made for you. Take clustering, for example. In general, when clustering observations, one has two objectives: maximize the similarity of observations within each cluster, and maximize the *dis*similarity of observations in different clusters. But which you might not have thought about very much is that there's an inherent tension between these two objectives — after all, the best way to maximize the similarity of observations within each cluster is to only assign observations to the same cluster if they are identical (a choice that creates lots and lots of very small clusters). And the best way to maximize *dis*similarity between clusters is to only put *really really* different observations in different clusters (resulting in a few really big clusters). So how is your clustering algorithm balancing these two considerations? Is the algorithms choice of how to balance them in any way a reflection of the balance that makes most sense in the context of your stakeholder's problem? (I'll give you a hint — the algorithm sure can't answer that question, so you'd better be able to!)

Researcher discretion: it's everywhere.

## Netflix Movie Clusters

<!-- This issue isn't limited to simple summary statistics, though. Unsupervised machine learning algorithms have the same problem—ask a clustering algorithm to divide a dataset into three clusters, and it will, even if the differences between the groups is *very* small. And ask a Principal Component Analysis algorithm to find a vector that minimizes the sum of squared distances between all points and the vector and it will, even if that vector isn't really measuring any kind of central tendency in the data.

Answering Exploratory Questions will not always entail gathering and merging new sources of data; in some cases, answering Exploratory Questions is about making sense of existing data sets by identifying hidden (latent) patterns. This can be accomplished by a range of tools, but this practice is most commonly associated with *unsupervised machine learning* and statistical inference.

Answering Exploratory Questions always boils down to the same challenge: taking datasets that aren't comprehensible in their raw form, and identify **meaningful** patterns in the data that can be summarized in a manner that humans can actually wrap their heads around. And why is this hard? Because by definition, answering exploratory questions requires trying to find ways to make the incomprehensible comprehensible by identifying *meaningful* patterns. And while we have many tools for calculating specific types of data summaries—means, medians, clustering algorithms, principal component analyses, etc.—none of these can evaluate whether the summaries they generate are *faithful and meaningful* to the question you are seeking to answer. And it is therefore up to you, the data scientist, to decide what summaries of the data provide a faithful and meaningful representation of the underlying data. -->
<!-- 
## The Danger of the Helpful Computer

What do we mean by "faithful" summaries? To illustrate, suppose that you have been hired by the US state of Florida to help with a financial problem they're having. They buy a lot of electricity that's generated with natural gas, but as a result, their electricity costs keep bouncing up and down with natural gas prices. As this makes it hard for them to do financial planning, they've asked you to find a financial asset the city can buy that will smooth out these fluctuations. More specifically, they want an asset that will pay out more when natural gas prices are high (so they can use the money to offset their increased electricity costs), and less when natural gas is low.

They've given you data on four potential assets, and so you run a linear regression looking at the relationship between the value of these assets and natural gas prices. You analyse the data by looking at the correlation between the asset's payout and natural gas prices, and by fitting a linear regression with natural gas prices and asset payouts. You find that all four assets have essentially identical relationships with natural gas prices—a correlation of about 0.8, and a regression coefficient of about 0.5, suggesting that when natural gas prices rise by a dollar, asset payouts will increase by 0.50 dollars. Perfect, right? All four assets would work equally well, and all four could help limit budget fluctuations for Florida!

Well... no. If we dig a little deeper, we see that these summary statistics are not telling us all the meaningful information in the data; our summary statistics are technically *correct*, but they aren't faithfully representing everything that matters given the problem we want to solve.

We can see this by plotting the data[^anscombesquartet]:

[^anscombesquartet]: Anscombe's quartet. (2022, October 21). [Image from Wikipedia Commons.](https://en.wikipedia.org/wiki/Anscombe%27s_quartet).

![plot of all four regression fits with scatter points](images/anscombes_quartet_naturalgas.png)

Clearly, the relationship between these different assets and natural gas prices are *not* all the same! Buying the asset in the top left would likely do a good job of smoothing out the state's budget, but in nearly all years, the asset in the bottom right would be useless for smoothing the state's budget since in most years the asset's payoff doesn't change at all!

This is obviously a simple example and one where a simple plot is sufficient to allow us to see the problem. But this problem is inherent to answering *any* exploratory question—whether we're calculating simple statistics or using sophisticated unsupervised machine learning techniques; when we summarize data, it is our job as data scientists to ensure that our summaries are representing the *relevant* patterns in the data in a faithful and meaningful manner. And because what is relevant depends on the problem we are trying to solve, it's something we as data scientists have to evaluate, not something an algorithm can do for us. -->
<!-- 
--------

## Unsupervised Machine Learning

If you are familiar with machine learning techniques already, you are likely most familiar with *supervised machine learning*, in which we tell our algorithms what we want to do by providing lots of examples of the behavior we want them to emulate in a training dataset. For example, if we want a supervised machine learning algorithm to identify pictures that contain dogs, we might give them lots of pictures with and without dogs that include labels for whether there's a dog in each picture. From these examples, the algorithm then learns to emulate the demonstrated behavior.

The choice of three here is arbitrary, and in practice, one would generally run their clustering algorithm for clusters of 2, 3, 4, etc., and compare the results for patterns that seemed meaningful based on the researchers' medical knowledge.

### Choosing What To Ask and Present

OK... by now you've probably noticed that I've been saying you want to make sure you faithfully represent the "important" and "critical" properties of your data, but I haven't defined those terms. And here's why: there are no objective definitions of these terms. What is *important* depends both (a) on the context, and (b) on the value system of you (the data scientist) and your stakeholder.

#### Context

#### Values

In our previous reading, we talked about how some questions *explicitly* invoke our value systems—proscriptive questions, like "should murders be eligible for parole?," or "is it fair that Americans with more money can donate unlimited amounts of money to Political Action Committees in the United States?"—while others are ostensibly just questions about objective reality. But now we have to blur that line ever so slightly, because even when dealing with questions about objective reality (descriptive questions), our values come into play. How?

Suppose you are a policymaker choosing between two possible policies for reducing $CO_2$ emissions in the United States. You are told:

- Policy A would reduce $CO_2$ emissions by 95%, have only a minimal impact on unemployment and business profits, and would require a 100 million dollar tax.
- Policy B would reduce $CO_2$ emissions by only 90%, would have a moderate impact on unemployment and business profits, and would require a 200 million dollar tax.

Which would you choose?

Now suppose I also told you that the 100 million dollars in taxes from Policy A would come entirely from taxing people who live below the poverty line, while the 200 million dollar tax for Policy B would be collected from all Americans in proportion to their income. Does that change how you see the issue?

**People tend to make decisions based on the information that is available to them,** and so what questions get asked (and what data is thus presented) can have a *huge* impact on how decisions are made. And as a data scientist, you will often be in control of what questions are being asked, and so it is incumbent upon you to ensure that your stakeholders are presented with all the data that *you* feel is important for them to know.

This is actually one of the big reasons that the lack of diversity in data science is such a problem—it's not that White men are intrinsically misogynistic or racist, but because our life experiences influence what we think is important, and thus what we ask our data (both authors of this book are White men).

Consider this infamous (though thankfully low stakes) illustrative example of a major tech failure (seriously, [go watch the video](https://www.youtube.com/watch?v=t4DT3tQqgRM)): the camera that only sees White people. We can't know exactly what went wrong, but I think it's safe to say that if there were more Black developers working at HP, surely *one of them* would have stopped to ask the question "does this work as well for Black faces as White faces?" But no one did, and so this product shipped. But OK, HP isn't a very *good* tech company. A better tech company like Google would never make that mistake. Oh wait... [Google's Photos product tagged photos of dark-skinned people as "Gorillas". And how do we know? Yup, because they released that product too.](https://www.theverge.com/2018/1/12/16882408/google-racist-gorillas-photo-recognition-algorithm-ai)

OK, fine, you say—but those are just low-stakes settings. Surely that wouldn't happen when it *counts*. [Cue: facial recognition's differential error rate for men and women, and for people with light versus dark skin tones.](https://sitn.hms.harvard.edu/flash/2020/racial-discrimination-in-face-recognition-technology/) And that technology is being used by police, border agents, and so much more.

To be clear, the problem is not *just* that these companies created discriminatory algorithms—as we'll discuss later in this book, almost any machine learning tool trained on public data will end up reflecting all the racist and misogynistic biases of our society. The problem is that *they shipped the racist products!* No one in these companies thought to stop and ask the question: "hey, before we roll this out, should we check to see how this behaves with people who don't look like our predominantly light-skinned workforce?"

(Yes, these are machine learning examples, not Exploratory Questions per se. Machine learning examples get a lot more press, so it's easier to demonstrate to these kinds of news stories. But while the principle that the questions we ask reflect our values is especially important in Exploratory analyses, it also has broad salience, as illustrated here.)

So remember: when deciding what to look at and report in your analyses, remember that people will make decisions based on the patterns *you* have decided are important, so if you don't stop to ask a question about, say, gender or racial bias, odds are it won't be something considered by your stakeholders.

This example is awful and the plot doesn't have labels. Need better! -->

<!-- 
simpler representations that we can wrap our heads around to help us understand the world around us. Dropping a giant dataset with the CO2 emissions and latitude and longitude of every power plant in the US alongside a business survey of energy consumption by different companies broken down by building on the desk of the CEO of the environmental non-profit in the example above would clearly not aid them in the slightest to understand the world any better, just as a thumb drive with hundreds of gigs of patient data isn't helpful to a medical researcher in its raw form. The sheer *amount* of data embodied by those datasets is just too great.

A map showing CO2 emissions by region, or a summary of the features that are most common within each patient cluster, by contrast, *is* something humans can wrap their heads around. And the *reason* it is understandable is due in large part to the fact that these are simple representations of the patterns in the data that matter for the question we seek to answer with all the noise that isn't critical removed. In information theoretic terms, we've taken a huge amount of noisy information and reduced it to just the signal we care about, which can be communicated with far less information.

But there's a challenge that's inherent to this type of process of simplification which you may already be noticing: answering Exploratory Questions requires identifying what is important *and throwing everything else away*. And it is for this reason that answering Exploratory Questions well is dependent on the judgment of the data scientist. -->

<!-- clustering algorithms / naming the clusters / Netflix-->

<!-- infections by, say, removing fabric chairs that are hard to disinfect, the location of infections is likely important. If, by contrast, you were brought in by someone studying how the ways antibiotics were prescribed impacted infections, you would instead want to focus on the treatment histories of patients. And if you were hired by the hospital itself which just wanted to reduce infections by any means possible, you'd want to study both to know where future efforts might be best targeted. -->
