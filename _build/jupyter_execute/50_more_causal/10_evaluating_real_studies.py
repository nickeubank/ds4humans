#!/usr/bin/env python
# coding: utf-8

# # Evaluating Real Studies
# 
# In our past classes, we've discussed in detail -- and derived mathematically -- the conditions required for a correlation to constitute a valid causal estimate. In particular, we saw that if we see a correlation between a treatment (say, seeing an advertisement with a discount offer) and an outcome (the amount a consumer spends at a store), that correlation will only be a good causal estimate of the Average Treatment Effect (ATE) for the population in the study if:
# 
# 1. There are no baseline differences in outcome between the treated and untreated groups.
# 2. The treated and untreated groups would respond, on average, the same way to the treatment. (No differential treatment effects)
# 
# We've seen mathematically what these two conditions look like: 
# 
# 1. $E(Y_0 | D=1) = E(Y_0 | D=0)$
# 2. $E(Y_1 | D=1) - E(Y_0 | D=1) = E(Y_1 | D=0) - E(Y_0 | D=0)$
# 
# But when you see a study, how should you think about whether these conditions have been met? 
# 
# 
# ## The Sun Is Bright for Dogs Too
# 
# To make this concrete, let's begin with an example study. Suppose you're running a website that sells designer sunglass for dogs: Pawda. 
# 
# ![dog_in_glasses](images/dog_in_glasses.jpg)
# 
# [Source](https://www.unifyingdatascience.org/html/_images/dog_in_glasses.jpg)
# 
# To promote your business, you start running ads with a 10\% off coupon on the New York Times website, because you figure people who live in NY are the kind of people who would buy their dogs sunglasses. 
# 
# You then look at the amount that people coming to your website spend, and compare the behavior of people who came to your site through your ad (e.g. the people getting the discount) and those who came to your site after seeing your normal ads on other sites (no discount). And sure enough, you find that people who saw the ad spent 30% more on your website (i.e. 30% more dollars in revenue per 1,000 ad views) -- enough that you made more money on them than your average customer, even after the 10% discount. 
# 
# So now you're thinking, should I roll out this ad all over Facebook and Instagram?!
# 
# In effect, what you want to know is the *effect* rolling out that ad would have on the behavior of all your customers. So clearly, we're in the world of causal inference. 
# 
# But do we think this correlation between getting the 10% discount and spending 30% more is a good causal estimate? 

# ## Evaluating Baseline Differences
# 
# The first question to ask is whether we think there are baseline differences between the people who got the discount on the NYTimes website and the people who saw ads elsewhere in terms of spending. 
# 
# It is tempting when asked if we can think of a reason that the baseline difference condition might be violated to say "Well, the people who go to the NYTimes may be different that people who go to facebook, so those groups may be different." 
# 
# But that answer, while true, is actually *vacuously* true -- saying "people are different, so there may be differences in baseline outcomes" is something you can say about *any* study. You can even say that about a randomized experiment! Yes, randomization means that it's *unlikely* you'll get large differences in the people who receive the treatment and those that do not, but it doesn't guarantee it. 
# 
# So assuming we're willing to *ever* accept that a study may be telling us meaningful about a causal effect, we need to set a higher bar. 
# 
# In particular, a good reason for worrying about baseline differences should include three things: 
# 
# 1. A way in which people may be different, 
# 2. That we have an *affirmative* reason to think is correlated with who got treated, and 
# 3. Which is related to the outcome we care about ($Y$).
# 
# So in our New York Times example, we might think that people who go to the NYTimes website are likely to be wealthier than the average Instagram user because the NYTimes has lots of news about finance that only relativeley well-off people care about (1 and 2), and because they have more disposable income, are more likely to spend money on dog sunglasses (3).
# 
# ### Why we need all three
# 
# No two of these things is sufficient. For example, imagine we ran an experiment in which we split people into two groups, gave one group 100 dollars, then asked both groups how happy they were. We then want to know if this is a valid causal estimate of the effect of free money on short-term happiness.
# 
# Now suppose that the groups weren't randomly assigned, but rather we put people whose height (in cm) is even in one group, and people whose height (in cm) is odd in another. Here we have a difference (1) that's correlated with treatment (2). But unless you have a reason to think that people with even heights are happier than people with odd heights, we haven't violated condition 3, which means we have no reason to think that the expected value of our outcome (happiness) would be different across groups absent treatment. 
# 
# Similarly, if we had randomly assigned people to groups, and you then pointed out that some people are happier than other people, and so it could be that all the happy people ended up in the treated group... we'll, you're not wrong. It *could* happen. But provided we see balance on other attributes we can measure, and we have a reasonable sample size (so LLN has kicked in), then don't have an affirmative reason to think this has happened, so we kinda just have to accept this as the risk of doing research.
# 
# ## Evaulating Differential Treatment Effects
# 
# If we don't have a reason to think that we have baseline differences, then the good news is that we do have a valid causal estimate -- the Average Treatment on the Treated (ATT). Yay! 
# 
# But now we want to know how likely it is that the treatment effect we estimated when we gave NYTimes users discounts will be the same as the treatment effect we'd get if we rolled this discount out on Facebook and Instagram. In other words, we want to know if people on those other platforms would respond to our discount the same way the NYTimes users would. 
# 
# So how do we think about this?
# 
# Again, in evaluating if there are differential treatment effects exist, it's not really productive to just say "there may be differences in how people respond to treatment, and so there may be differential treatment effects." It's *true*, but again, vacuously true since it holds everywhere. 
# 
# So again, we need three things:
# 
# 1. A reason people may differ,
# 2. An *affirmative* reason to think these differences are correlated with who got treated, and 
# 3. A reason these differences might give rise to different responses to the treatment. 
# 
# What would that look like here? 
# 
# Let's start by supposing that we've already convinced ourselves that there are no baseline differences in our study -- we have data from before we started offering the discount, and that data shows that people coming from the NYTimes were spending the same amount as people coming from Instagram and Facebook before we offered the 10% discount. (We'll talk about formally doing this type of analysis soon). So we think that 30% increase in sales is a valid estimate of the ATT of the 10% discount on people coming from the NYTimes. But we still want to know if we'd expect the same effect if we ran the ad on Facebook and Instagram. 
# 
# Well, as before, we might think that people who go to the NYTimes website are likely to be wealthier than the average Instagram user because the NYTimes has lots of news about finance that only relativley well-off people care about (1 and 2). Given they're wealthier, we might think that discounts would actually matter *less* to them since they have more disposable income (3). 
# 
# Given that, we might actually think that our ATT is an *understimate* of the true ATE, and we might see *more* than a 30% rise in sales from Facebook and Instagram users. 
# 
# ## What Comes Next?
# 
# BUT... BUT... BUT... you say...
# 
# At this point, you're probably full of objections, saying "but what if NYTimes readers go to the NYTimes to read the financial reporting because they care more about money, and so even if they have more money, they're actually more obsessed with savings and so the discount has a LARGER effect for them than the average customer!"
# 
# Great question! That's an entirely plausible story! 
# 
# As we've discussed, oh, I dunno -- a dozen times so far? -- causal inference is the domain of critical thinking, not perfect absolute answers that drop out of regressions. And so when you end up in a situation like this where you have different potential stories, its up to you to think about ways to dig in further. 
# 
# The great thing about a concrete story about why you may have baseline differences or differential treatment effects is that a concrete concern can be investigated. Remember where I said above:
# 
# > Let's start by supposing that we've already convinced ourselves that there are no baseline differences in our study -- we have data from before we started offering the discount, and that data shows that people coming from the NYTimes were spending the same amount as people coming from Instagram and Facebook before we offered the 10% discount (we'll talk about formally doing this type of analysis soon).
# 
# Because we started with a concrete concern, we were able to imagine a way to test whether its likely to be true. We can't be certain that the evidence presented above means there aren't baseline differences -- the specific people who went to the NYTimes before you started running the 10% discount ads might be different from the people who were visiting when you were running them -- but it provides *additional evidence* we can use to reason through the situation. 
# 
# We could do something similar with the story you told about how people going to the NYTimes for financial advice may be more worried about money, so more responsive to discounts. If we've ever run ads with discounts before, we could see if NYTimes users responded more strongly; or we could call up our friend who runs a business that sells flip-flop sandals for cats (Meow-dals) and ask about their experience with NYTimes referrals when they put their sandals on sale. 
# 
# ![cat_in_sandals](images/cat_in_sandals.jpg)
# 
# [Source](https://dyingofcute.tumblr.com/post/42268265029/missil-launch-in-3-2-1)
# 
# None of these would tell us for certain what would happen if we rolled out *this* ad on Facebook and Instagram *now*, but these types of investigation and critical thinking are the best (and only!) way forward. 

# ## Well this has been unsatisfying
# 
# Yup! Welcome to causal inference, where there is *never* any certainty, and we're always just trying to do our best! 
# 
# But hopefully this provides you with a framework for evaluating studies you come across, thinking through the possible problems they may have, and even thinking about next steps you can take to try and evaluating if those concerns are valid. 