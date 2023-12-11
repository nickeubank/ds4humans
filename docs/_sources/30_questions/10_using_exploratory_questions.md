# Using Exploratory Questions

The hardest part of a data science project is often properly articulating the problem we wish to solve. That's because properly specifying a problem requires *understanding* the problem well enough to state it, and often we call issues "problems" precisely because we don't really understand them!

Enter *Exploratory Questions*. Exploratory Questions are questions designed to elicit information about our problem space and aid us in prioritizing our efforts and refining our goals. Exploratory Questions are questions about broader patterns in the world. In their simplest form, they can be answered by simple summary statistics or plots. When more complicated or related to more subtle and contingent patterns, they are likely to be answered through unsupervised machine learning algorithms or the tools of *statistical inference*, such as regressions and generalized linear models. When used for answering Exploratory Questions, the emphasis of regression or generalized linear models is on what the model coefficients can tell us about how different factors may co-vary in the world. This is distinct from how these same tools may be used to answer Passive-Prediction Questions, however, where the emphasis is on the predicted values these models can generate.

Of the three classes of questions we detail in this book, answering Exploratory Questions often (though not always) requires the least technical sophistication, and as a result, Exploratory Questions often get the least respect. But because of their critical role in improving our understanding of our objectives, learning to ask and answer Exploratory Questions will have a huge influence on your effectiveness as a data scientist.

In this reading, we will discuss how to *use* Exploratory Questions to guide your work. Then, in the next reading, we will discuss the challenges inherent to *answering* Exploratory Questions.

## Using Exploratory Questions to Prioritize Efforts

Exploratory Questions are questions about the underlying patterns that characterize our world. Given that, answers to Exploratory Questions should make you feel like you understand the contours of the problem you seek to solve better. More than anything else, then, Exploratory Questions help data scientists prioritize their subsequent efforts and investigations.

### Code Optimization

If this feels too abstract, let's use a small example of a problem you've probably already come across (and if not, probably should have!) in the classroom to make it more concrete: learning to write performant (i.e., fast) code.

Data science is full of computationally intensive tasks that, if approached incorrectly, can leave a data scientist staring at their computer for hours, days, or even weeks (if they allow it). As a result, most data scientists will go through a phase in their development when they start constantly worrying about how to make every line of code they write as fast as possible. They bend over backward to write unnatural, unreadable code to ensure that they aren't wasting a single CPU clock cycle.

The problem with this is that humans have *incredibly* bad intuition about what tasks take a computer a long time. It turns out that even in programs that take huge amounts of time to run, it is often the case that *most* of the program's runtime is taken up by a single function or loop. As a result, programmers who fixate on ensuring every line of code they write is optimized for speed end up not only wasting their *own* time, but also writing code that is less natural, harder to maintain, and more likely to contain errors for effectively no benefit.

Indeed, no less a figure than [Donald Knuth](https://en.wikipedia.org/wiki/Donald_Knuth), one of the greatest programmers in history and author of the famous [*The Art of Computer Programming*](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming), famously said of this trying to optimize each line of code at the time it is being written ("premature optimization"):

> The real problem is that programmers have spent far too much time worrying about efficiency in the wrong places and at the wrong times; **premature optimization is the root of all evil (or at least most of it) in programming.** [emphasis added]

So what is a programmer interested in performance to do? First, write code in as natural a way as possible. Then, *if* the result is code that is slower than they would like, ask the exploratory question: "What lines of code are contributing most to this program taking so long to run?" And only then, once the programmer has identified the problematic parts of their code, optimize it for performance.

How is this question answered accomplished? Programmers use tools called *profilers* that dip into a running program every few milliseconds to see what functions are currently running. Then after the program has finished running, it reports how often each part of the program code was found to be running, giving the user a sense of the overall distribution of time spent running different parts of the code.

### Picking the Right Target

If the preceding example feels too niche — you want to be a data scientist, after all, not a software engineer! — let's consider a different example. Suppose you've been hired by a new non-profit interested in helping reduce energy use in buildings in the United States. They know that fixed structures (factors, stores, houses, etc.) are responsible for a huge share of US energy consumption, and are interested in figuring out how to drive down that energy use by helping building owners improve the energy efficiency of their buildings (by providing information on things like government subsidies for efficiency improvements and the potential value of energy efficient windows, better heating and cooling, etc.).

You *could* start out by trying to build a fancy supervised machine learning model that tried to predict the energy use of every building in the US based on infrared satellite data and weather information. Indeed, that may even be what you were asked to do! (See our discussion of how [stakeholders will often have somewhat wild ideas of what is feasible and what would help most.](../10_introduction/30_solving_the_right_problem)).

But given this is a new non-profit, it sounds like their real need is probably to figure out how to target their efforts to be most effective. So maybe we should step back and start by trying to answer a few Exploratory Questions that would help the organization decide where to focus its attention:

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

### Collecting, Merging, and Creating New Data

Once you start articulating these questions, you can start to see that there is some important data science to do; that's because the answers to these questions may not all point in the same direction, and so the non-profit likely needs someone to be able to evaluate how these different factors co-vary, and the relative magnitude of different trade-offs (e.g., if fewer buildings use a lot of power in the US South than California, but the US South is using coal power instead of renewable energy, where should the non-profit focus?).

And that, fundamentally, is what Exploratory Questions are about: understanding the patterns and distribution of features you care about in the world, and using that information to better understand the problem you want to solve.

This also demonstrates one of the key ways that one answers Exploratory Questions: by collecting and merging datasets that had not previously been pulled together. Sometimes this data collection requires no more than finding people who already have the data you need, getting it, and finding a way to merge different data sources (e.g., data on power plant CO2 emissions and data on building energy use), while in other situations this will entail building new datasets yourself by doing things like using Natural Language Processing to make collections of documents (contracts, patient files, public records) analyzable systematically.
