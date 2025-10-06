# Using Descriptive Questions

In Chapters 3 and 4, we covered a number of strategies for better understanding your problem. We discussed how trying to abstract or generalize the problem can often help one realize the problem one faces isn't as unique as you might have thought, and how focusing on what would constitute success can help you think about a problem free from implementation details you may not have realized you were assuming were inescapable. We also talked about how to extract information from your stakeholder about the problem context. But what *then*? Those are all great strategies for thinking about the problem differently, but you can only get so far just thinking about the problem. What can you *do*?

Enter *Descriptive Questions*. Descriptive Questions are questions designed to elicit information about our problem space and aid us in prioritizing our efforts and refining our goals. Descriptive Questions are questions about patterns in the world. "What types of customers spend the most in our stores?," "which hospitals have the highest and lowest complication rates?," "what share of greenhouse emissions come from short, exceptional periods of peak energy demand and what share come from baseload generation?" are all examples of Descriptive Questions.

Of the three classes of questions we detail in this book, answering Descriptive Questions often (though not always) requires the least technical sophistication. As a result, Descriptive Questions also often get the least respect. But because of their critical role in improving our understanding of our objectives, learning to ask and answer Descriptive Questions will have a huge influence on your effectiveness as a data scientist.

## Code Optimization: An Example

One of my favorite examples of the value of Descriptive Questions to give data scientists relates to the practice of *code optimization* — the process of adjusting code to reduce the amount of time it takes to run. Code optimization may feel a long way from figuring out how to minimize surgical complications or target advertisements, but it is very familiar to young data scientists, and illustrates some important aspects of how to solve underdefined problems effectively.

Data science is full of computationally intensive tasks that, if approached incorrectly, can leave a data scientist staring at their computer for hours, days, or even weeks (if they allow it). As a result, most data scientists will go through a phase in their development when they start constantly worrying about how to make every line of code they write as fast as possible. They bend over backward to write unnatural, unreadable code to ensure that they aren't wasting a single CPU clock cycle.

The problem with this is that humans have *incredibly* bad intuition about what tasks take a computer a long time. It turns out that even in programs that take huge amounts of time to run, it is often the case that *most* of the program's runtime is taken up by a single function or loop. As a result, programmers who fixate on ensuring every line of code they write is optimized for speed end up not only wasting their *own* time, but also writing code that is less natural, harder to maintain, and more likely to contain errors for effectively no benefit.

Indeed, no less a figure than [Donald Knuth](https://en.wikipedia.org/wiki/Donald_Knuth), one of the greatest programmers in history and author of the famous [*The Art of Computer Programming*](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming), famously said of this trying to optimize each line of code at the time it is being written ("premature optimization"):

> The real problem is that programmers have spent far too much time worrying about efficiency in the wrong places and at the wrong times; **premature optimization is the root of all evil (or at least most of it) in programming.** [emphasis added]

So what is a programmer interested in performance to do? 

Ask Descriptive Questions of their code, of course! 

First, programmers write code in as natural a way as possible. Then, *if* the result is code that is slower than they would like, ask the Exploratory Question: "What lines of code are contributing most to this program taking so long to run?" Then, once the programmer has identified the problematic parts of their code, they seek to optimize it for performance.

This is accomplished using a tool called a *profiler*, which dips into a running program every few milliseconds to see what functions are currently running. Then after the program has finished running, it reports how often each part of the program code was found to be running, giving the user a sense of the overall distribution of time spent running different parts of the code.

But the details of *how* profilers answer the question of "what part of my code is contributing most to my program's run time?" is not the important thing here: it's the way in which this Exploratory Question — which helps the programmer understand how much time different lines of code take to run *in relation to one another* — helps guide everything the programmer does next. 

A programmer who fails to ask and answer this question may instead find themselves spending hours re-writing functions that are complicated in terms of the structure of their code, but which actually contribute only trivially to the overall runtime of the program. And that is also the same fate that awaits the data scientists who dives into "solving" a problem too quickly without first ensuring they understand the lay of the land.

<!-- ## Student Debt: Another Example

Another example near and dear to many students' hearts (and wallets) is student debt. Student debt in the United States has been rising for years, and is taking on an ever-increasing share of overall household debt. Moreover, students who struggle to make their payments or default are forced to live with the financial consequences of those outcomes for years. 

Given that, one might jump straight to the question of how debt can be reduced. But is the overall level of debt the main problem in the United States? Well, while I think most people would say that the cost of education in the US is far too high, it's not clear that the first thing one would want to do is reduce debt overall, or even focus on the most endebted students. Why? Because if one's concern is *unsustainable* student debt, then one should focus on the borrowers most likely to default. And it turns out the students who borrow the *least* tend to be the students most likely to eventually default. As noted in a recent [Brookings Institution report:](https://www.brookings.edu/articles/the-trouble-with-student-loans-low-earnings-not-high-debt/)

> But the fact is that default is highest among those with the smallest student debts. Of those borrowing under $5,000 for college, 34 percent end up in default. This default rate actually drops as borrowing increases. For those borrowing more than $100,000, the default rate is 18 percent. Among graduate borrowers—who tend to have the largest debts—just seven percent default on their loans.

Student debt defaults occur when students borrow but don't end up with the earnings to support that debt, either because they drop out before graduating or borrowed to pay for a low-quality program. -->


## Using Descriptive Questions to Prioritize Efforts

If the preceding example feels too niche — you want to be a data scientist, after all, not a software engineer! — let's consider a different example. Suppose you've been hired by a new non-profit interested in helping reduce energy use in buildings in the United States. They know that fixed structures (factors, stores, houses, etc.) are responsible for a huge share of US energy consumption, and are interested in figuring out how to drive down that energy use by helping building owners improve the energy efficiency of their buildings (by providing information on things like government subsidies for efficiency improvements and the potential value of energy efficient windows, better heating and cooling, etc.).

You *could* start out by trying to build a fancy supervised machine learning model that tried to predict the energy use of every building in the US based on infrared satellite data and weather information. Indeed, that may even be what you were asked to do! (See our discussion of how [stakeholders will often have somewhat wild ideas of what is feasible and what would help most.](../20_problems_to_questions/30_solving_the_right_problem)).

But given this is a new non-profit, it sounds like their real need is probably to figure out how to target their efforts to be most effective. So maybe we should step back and start by trying to answer a few Descriptive Questions that would help the organization decide where to focus its attention:

- What *type* of buildings (industrial, residential, commercial) consume the most power in the US?
  - The answer to this question can help you prioritize the *types* of buildings on which to focus your efforts. For example, if industrial or commercial buildings only represent a few percent of all energy consumed by buildings, you don't need to worry about addressing their needs!
- In what *region* of the US are buildings consuming the most power?
  - If most energy is being consumed in a specific area, perhaps the non-profit should start by focusing its efforts regionally.
- Is there a *region* of the US where buildings are generating the most CO2?
  - Not all power is created equal when it comes to climate change! Maybe buildings in California consume a lot of energy, but because they have cleaner power plants, those buildings are indirectly generating less CO2 than those in states in the US South?
- Does the *average energy use per building* vary by region or building type?
  - If the non-profit plans to approach building owners, it may be easier to have an impact working with a few owners of large buildings than lots of residential homeowners. But of course, that also depends on the answer to our previous question about what types of buildings are using the most power/generating the most CO2!
- In what season is most building energy consumed? Is more energy consumed by heating or AC needs, or do the two use similar amounts of power?
  - Again, this may impact both the regions the non-profit may wish to focus on, and also the types of efficiency retrofits they may wish to prioritize.
- Where is power most expensive?
  - Building owners are most likely to be interested in efficiency retrofits when power is expensive.

While answering these questions is likely to require some significant detective work, and may require some thoughtful data wrangling, none require deeply sophisticated statistical machinery. But that doesn't mean answering these questions wouldn't provide **huge** value to the stakeholder.

## Goals, Not Methods

What makes a question an Exploratory Question? Is it the fact that you can answer it with a simple summary statistic, or a scatter plot?

No — what makes something an Exploratory Question is its *purpose*, not the tools we use to serve that purpose. Some Descriptive Questions will be answered through simple cross-tabulations. But if the patterns one seeks to understand are more subtle or contingent, they may only be answerable with regressions or unsupervised machine learning algorithms.

### Collecting, Merging, and Creating New Data

The work of answering Descriptive Questions is also often not in the modelling, but rather in the data collection and merging. Because Descriptive Questions are about understanding how different features relate to one another, collecting and merging datasets that have not previously been pulled together is often key to generating answers. Sometimes this data collection requires no more than finding people who already have the data you need, getting it, and finding a way to merge different data sources (e.g., data on power plant CO2 emissions and data on building energy use), while in other situations this will entail building new datasets yourself by doing things like using Natural Language Processing to make collections of documents (contracts, patient files, public records) analyzable systematically.

### But Where Do I Get Data?

It's hard to overstate how much data is public these days, but to give you a sense, [here's a quick summary of a few terrific sources.](https://www.unifyingdatascience.org/html/public_data.html)
