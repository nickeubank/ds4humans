
# Solving The Wrong Problem: Examples

In the last section, we discussed *why* understanding your problem is so important, reasons data scientists often fail to do so, and a few suggestions for ways to improve your understanding of the problem you are trying to solve.

In this section, we will work a longer example to illustrate what "getting the problem wrong, then adapting and getting it right" looks like in practice.

## Pizza Ltd. Advertising

Pizza Ltd. is a (fictitious) pizza delivery chain interested in improving their online sales. Last year they increased their online advertising budget three-fold, but saw almost no change in their online sales, despite increasing in-store sales.

You have been hired to help improve the effectiveness of their advertising. Pizza Ltd. provides you with data on their previous advertising campaigns, including information on ad impressions and clicks broken down by user demographics, geography, and past interactions with Pizza Ltd.

"Well," you reason, "maybe the problem is that Pizza Ltd's ads aren't being shown to the right people. After all, it seems unlikely that any ad for pizza—no matter how appealing—is likely to draw a click if it's shown to a 75-year-old at 7 am." And sure enough, the data provided by Pizza Ltd shows that they are not doing a lot of ad targeting — their ads are being shown to an extremely diverse set of users, including many who probably aren't that interested in pizza!

Using the data provided, you train a model to answer the question, "given a user's demographics and online behavior, how likely are they to click on a Pizza Ltd. ad?" You try out a few different models, tune the model parameters, and eventually settle on a neural network model with extremely high precision *and* recall. Hooray!

As expected, the model shows that Pizza Ltd. was showing too many ads to people who were probably not even that interested in pizza, when they should have been targeting people who have ordered pizza from Pizza Ltd in the past, people searching for "Pizza Ltd," and people who live close to Pizza Ltd locations.

You hand over your model to Pizza Ltd, who immediately reallocate their ads based on their models. Within a week, Pizza Ltd. sees that the share of ad impressions that result in clicks and pizza purchases has increased five-fold. Everyone congratulates you, and you move on to the next project feeling very smug.

### The Other Shoe Drops

A few months later, you are called into a meeting with the Pizza ltd advertising team, online sales team, and the company's Chief Financial Officer (CFO). They've been looking over the numbers, and despite the huge rise in ad clicks, ad clicks per impression, ad clicks per dollar spent, *and* clicks that result in sales, when they crunch their quarterly sale numbers they find that, to their surprise, overall online sales haven't risen at all. Moreover, in-store sales are stable, searches for Pizza Ltd. haven't declined, and social media sentiment and posting rates all seem stable, suggesting the fact overall sales haven't risen isn't related to a decline in overall demand.

So, what went wrong?

> OK, this is the place in most books where the authors ask you that question, and you look up at the ceiling for a minute, shrug, and then read on.
>
> But I'm really, *really* serious about this: close your laptop, stand up, set a 5-minute timer on your phone, and go for a walk. Ponder this example. See if you can figure out what's going on. This is *precisely* the kind of problem you will soon face as a professional data scientist, so why not practice trying to think through the problem?

### Using Our Problem Refinement Skills

To help us work through this problem, let's begin by asking the questions we learned in our last reading.

First, **how will we know if we're successful?** Implicitly, we were assuming that we would know we were successful if the number of impressions that resulted in clicks rose. But as is clear from the concerns raised by Pizza Ltd's advertising team, online sales team, and CFO, the fact that clicks rose did *not* indicate success.

What would indicate success? As indicated by both the problem statement at the top of this example and by the description of the concerns raised by the Pizza Ltd. CFO, *we would know we were successful if we saw an increase in online sales.*

OK, but... we got people to click the ads, right? We show ads, we hope people click. And we did a great job of figuring out how to show the ads to people who would click the ads! How is this our fault?

Well, *was* our problem that not enough people were clicking the ads? What is the goal of an advertisement — online or in the real world? Is it to be clicked on?

No — often clicking on an ad is an indicator the ad has worked, but in focusing on that immediate (and easy to measure) outcome, we're missing the point of ads. So let's abstract our idea of what we're trying to accomplish. Are we trying to get people who see one of our ads online to click on that ad? No. Are we trying to get people who see one of our ads online to click that ad and buy a pizza? Closer, but still no.

No, let's get away from all the specifics of clicks, and clicks that convert into sales. Those are specifics that are distracting us. **Fully abstracted and generalized**, our problem is that we don't know how to deploy our ads to **increase** online sales.

And the way to *increase* sales is to show the ads to the people whose likelihood of buying a pizza will increase the most as a result of seeing the ad. In other words, we want to show our ads to the people on whom they will have the largest *effect* on the likelihood of buying a pizza.

How is this different from maximizing clicks or clicks that turn into sales? Simple — consider a person who *has already decided to buy a pizza from Pizza Ltd.* If they happen to see an ad on their way to buying their pizza, they may click on it to save a few dollars (if there's a coupon in the ad) or a few keystrokes (have you ever typed the name of a company into google and clicked the top link to get to their homepage — a link that was actually an ad the company paid for?[^racketeeringmodel]).

[^racketeeringmodel]: To be clear, I'm not saying that paying for ads at the top of Google for the name of one's own company are always a bad idea — they may prevent a competitor pizza chain from buying that spot and convincing the searcher to change their plans and order from the competitor instead. Basically, these ads sometimes amount to paying Google to not sell your business to someone else. But that's a nuance that's mostly a distraction at this point.

Even though that customer clicked the ad, and even though that user bought a pizza, the ad didn't *cause* them to buy a pizza. In fact, the ad had no effect on the likelihood they'd buy a pizza.[^alwaystaker] And if the ad included a coupon, then not only has the ad not increased online sales, but it's reduced profits from the sale because of the coupon *and* you had to pay for that ad impression and click!

Even though this is *not* someone you want to show an ad too, however, this is precisely the type of user that a naive model designed to target the people most likely to click an ad would suggest targeting. Not because the statistical model did the wrong thing, but because in answering the question you asked it to answer — "what kind of users are most likely to click on a Pizza Ltd. ad?" — wasn't a question whose answer helped solve your problem.

[^alwaystaker]: If you've taken any causal inference courses, you're reconize that while I'm describing is an "always-taker" — someone who is going to engage in a behavior regardless of whether they are subject to a treatment of interest (here, encountering an ad) or not.

## Counter-Factual Advertising

So how should Pizza Ltd. have approached solving their problem? The answer — as we'll explore in detail in later readings — is that they should have run an A/B experiment. Track a group of users, and show a random subset of those users a Pizza Ltd. ad. Then measure the effect of the ads by comparing online purchase rates between the group that saw ads and the group that didn't.

This data can then be used to improve targeting by looking at the difference in purchase rates between the group that saw the ad and the group that didn't for different demographic sub-populations (younger users, men versus women, users in different geographic areas, etc.). And of course this strategy can also be used to test different ads to figure out what ad is most effective.

This idea — that the goal of ads is to have an *effect* on consumer purchase behavior, not to be clicked on — is often referred to as "counter-factual advertising,"[^cite] and it's the basis for how nearly all major advertising platforms work today.

It's also why companies like Meta and Google are so eager to track user behavior across apps and websites. To demonstrate the effectiveness of ads, these companies need to be able to not only track users after they click an ad (to see whether they eventually make a purchase), but also track users who *haven't* seen an ad (so they can establish a behavioral baseline for the "control" group of users who haven't seen an ad). This allows these companies to estimate the true effect of ads on sales, data they use to improve ad targeting *and* justify higher prices to advertisers.

[^cite]: I'm not sure of the first citation for this idea in relation to online advertising, but [this is one well-cited early paper on the topic](https://dl.acm.org/doi/10.5555/2567709.2567766).

<!-- I could do something on outlier detection — is the goal to detect in training data, or create a tool that can quickly adapt/be tuned by users? -->