# Beyond The Experiment

**The Role of Causal Inference with Observational Data in Industry**

There are few (if any) people who would question the importance of A/B testing in the tech sector. It is used *constantly* to help companies refine their products, better target their ads, and achieve a cycle of incremental innovation.

While A/B testing is definitely a skill a good data scientist should have in their toolbox, it's important to understand that it is not the be-all and end-all of causal inference in industry. In this reading, we'll discuss *why* it's important to learn how to think critically about causality when working with observational data. 

```{note}
Remember, "observational data" is data that we gather by passively observing the world -- or that somebody else collected by passively observing the world -- rather than data that we get by directly manipulating subjects in an experiment.
```


## A/B Testing Isn't Always Feasible

There are many circumstances in which you cannot (or should not) use A/B testing. Here are just a handful of situations where you can't run an A/B test:

- **You Don't Control The Relevant User Behavior:** Suppose you want to know the effect of following a specific person on Instagram or Bluesky on an outcome like user satisfaction. The "ideal experiment" would be to randomly assign some users to follow the person in question and block others from doing so. But forcing people to follow specific accounts is a good way to alienate users. So, you have to find other ways to compare followers and non-followers of a given account for ways they may be different in terms of user satisfaction or behavior. The same problem arises with new features — you can randomly assign users to have *access* to a new feature, but in many situations, you can't force them to use it.
- **It's a One-Shot Deal:** Suppose you're trying to decide whether to open a second store. Since this event is singular, it doesn't lend itself to experimentation. There's no way a small business can experimentally open a bunch of "second stores" to see what happens to sales. When dealing with these kinds of big strategic decisions, sometimes the best you can do is look to your company's past experiences / the experiences of other companies that you think are comparable using the best available tools for observational causal inference.
- **Randomization is Bad Business:** It's one thing to randomize someone's landing page color scheme; it's another thing entirely to randomly show different people different prices for the same products. While that's an accepted practice in some industries (airline travel), it risks alienating customers in other markets (like grocery stores). Similarly, sometimes you want a big rollout -- like the launch of a new title on Netflix or the premier of a new movie -- and an A/B test would interfere with the excitement of a new launch. (Not an abstract example: here's [Netflix talking about this constraint](https://netflixtechblog.com/key-challenges-with-quasi-experiments-at-netflix-89b4f234b852)).
- **Time Horizons are Too Long:** A/B testing is popular in part because most tech companies can get data on users so quickly that it's easy to run experiments quickly. But not all decisions companies make have this same data velocity. A company thinking about opening more stores across the country can't put its plans on hold, pick a few locations, set up new shops, and wait for sales data. As we read in [Kohavi, Tang and Xu,](https://www.amazon.com/Trustworthy-Online-Controlled-Experiments-Practical/dp/1108724264) A/B tests work best when we have an Overall Evaluation Criterion (OEC) that is "measurable in the short term (the duration of an experiment) yet believed to causally drive long-term strategic objectives." When that is not available / the shortest experiment available that would allow you to measure a meaningful OEC would take too long, you need other options!

## A/B Testing Isn't Always Legal or Ethical

Those are all practical business constraints, but in many settings, A/B tests may be either unethical or illegal.

For example, suppose you are a social media company that wants to study the effects of harassment on customer retention. You obviously can't randomly target users with harassment or turn off harassment prevention tools for a subset of users.

Even if *you* think certain experiments are ok, you also have to be mindful of what the public will say. In 2012, Facebook ran an experiment in which they manipulated the emotional valence of posts they saw in their feeds, showing them either more happy or sad posts. The goal was to see how moods spilled over from one user to another on the network. 

The experiment was *legal*, but when people found out they were having the moods toyed with at random, they [were furious](https://www.theatlantic.com/technology/archive/2014/06/everything-we-know-about-facebooks-secret-mood-manipulation-experiment/373648/).  Now some tech people would say that "everything we do is to try and manipulate consumer happiness, how is this any different? Maybe you even believe that! But it doesn't really matter because it cost Facebook a lot more in goodwill and political capital than they learned from the experiment. 

Similar issues happened with OKCupid when they published research on how they [manipulated people's dating profiles](https://www.nytimes.com/2014/07/29/technology/okcupid-publishes-findings-of-user-experiments.html). That, honestly, was a pretty standard experiment, but when it comes to messing with people's hearts... you have to be careful. 

Finally, A/B randomizations aren't always *legal*. For example, suppose you're working in Human Resources for a company that wants to improve retention of younger tech workers, and you want to offer childcare subsidies to employees. If that workforce is unionized, you *can't* offer a benefit to only some people within a specific class of employees due to union contracts. 

## Going Beyond Testing for the Future

Another limitation of A/B tests is that we usually use them for small-scale trials to motivate larger future rollouts. Sometimes, however, we are interested in measuring the effect of a single, large intervention.

In many areas of business, it's increasingly common to hire outside companies to do very complicated projects, like administering government programs or providing a service to employees. In these situations, many companies are moving from paying vendors for inputs (hours worked, money spent) to paying them for results. 

This has given rise to the practice of "at-risk contracting." In at-risk contracting, vendors are paid based on how successfully they achieve results. For example, a hospital might hire a company to reduce in-hospital infections and pay them based on reductions in infections, or a company may hire a vendor to minimize the downtime of their internal network and pay them based on downtime. By tying compensation to the outcome that the hiring party actually cares about, the vendors are well incentivized to do precisely what the hiring company wants them to do.

But it's critical with at-risk contracting that both parties are confident that there's a reliable way to measure the effect *of the vendor's efforts*. Otherwise people may get under or overpaid.

In practice, it's unfortunately still the case that many companies just measure outcomes before the vendor starts and compare them to outcomes when the vendor finishes. But if the outcome in question is subject to natural variation -- such as seasonality -- or general trends that are outside the vendors control, then we would expect the outcome to vary whether the vendor does anything or not. Thus the need for better causal designs, like differences-in-differences.

## We Don't Want To Have A Limited Toolbox

Professionally, if you only know how to do A/B testing, you risk limiting your opportunities for upward advancement. Big companies are getting better and better at providing analysts with extremely user-friendly A/B testing tools, which means that A/B tests are becoming easier and easier. Twitter, for example, had an [internal tool called Duck, Duck, Goose](https://blog.twitter.com/engineering/en_us/a/2015/twitter-experimentation-technical-overview.html) that makes running an A/B test a relatively low-difficulty task (is this still true for X? No idea). 

And, while running a good A/B test is never easy (remember, the internal and external validity of our causal estimates will always be dependent on a wide range of assumptions), it is something that more and more people are learning to do well and which companies are learning to make easier. Thus, if all you know how to do are A/B tests, you may find it increasingly hard to differentiate yourself in the data science market.

Again, this isn't to say you shouldn't learn to do A/B testing, just don't *only* learn A/B testing. 

## Not enough to be able to do it; you must be able to *explain it*

One final reason it's important to understand how to apply the logic of causal inference to observational data is that even if *you* only work with A/B data, it is almost inevitable that you will interact with other people in your company who want to use observational data. In these situations, it's not enough that *you* understand the considerations that go into making causal inferences from observational data; you also need to be able to explain those to colleagues.

