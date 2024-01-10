# Welcome

*This is the beginning of a textbook by [Nick Eubank](https://www.nickeubank.com).*

Few fields have shown as much promise to address the world's problems as data science. At the same time, however, recent years have also made clear that today's global challenges will not be met by simply "throwing data science at the problem" and hoping things will work out. Even in business, where many assume that Artificial Intelligence is a sure ticket to profits, [a major recent study found only > 11%](https://www.wired.com/story/companies-rushing-use-ai-few-see-payoff/) of businesses that had piloted or employed Artificial Intelligence had reaped a sizeable return on their AI investments.

How, then, should a burgeoning data scientist approach this field full of such promise but also so many pitfalls? And why have so many data science endeavors failed to deliver on their promise?

The answer lies — at least in significant part — in a failure to provide students with a systematic approach to bringing the techniques learned in statistical modeling and machine learning courses to bear on real-world problems. Data science curricula usually begin with coding, statistics, and model evaluation techniques. All too often, however, that's where they stop. But while the hardest part of data science *classes* is often fitting a model well or getting a good AUC score, the hardest part of being an effective *professional* data scientist is ensuring that the models being fit and the results being interpreted actually solve the problem that motivated you (or your stakeholder) in the first place.

This book is designed to fill this gap between neatly curated classroom exercises and the messiness of the real world.  It will provide a unified perspective on how the perspectives and statistical tools learned in other courses complement one another, and *when* different approaches to data science are most appropriate to use. More importantly, though, it provides a framework for understanding your goals as a data scientist, and how to achieve them.

```{note} Is this book for me?

You'd be forgiven, serious data scientist, for flipping through this book and finding yourself thinking "Hmmm... I don't see many equations in this book. Is this really for me, the serious data scientist?" But worry not.

This book may not be the *most* helpful resource when it comes to preparing for technical interviews (though the detailed discussion of Causal Questions in later chapters likely would be). And your impression is correct — this book contains more case studies than proofs. But don't be fooled — this is not a "light and fuffy" book that waves vaguely in the direction of statistical concepts so you can discuss them at cocktail parties. 

This book *takes as given* that you've already been introduced to statistical inference and machine learning, and you feel comfortable with the core concepts of implementing and evaluating stats and ML models (evaluating a model's AUC, cross-validation, hypothesis testing, train-test sample splits, etc.). Those concepts will be treated as "assumed knowledge."

This book is about what comes *before* and *after* you faithfully fit a model to a dataset in a robust manner. By *before*, I mean that it covers how you decide what questions to answer, what data to collect, and what models to consider using. And by *after*, I mean we will discuss how one evaluates whether a result is likely to generalize, whether a model is safe to deploy, and where to go from there.

It is, in other words, about everything you need to know *beyond* the purely technical. And while that may be the part of data science that doesn't feel as exciting, the ability to reason about problems and think critically about the appropriate use of data science tools is what will get you promoted after you ace that technical interview. And that same ability to think critically is also what will prevent you from being replaced by the next generation of auto-ML tools or Large Language Models.
```
