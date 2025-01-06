# Descriptive v. Prescriptive Questions


In the following chapters, we will be diving into the intricacies of Exploratory, Passive-Prediction, and Causal Questions in detail. First, though, we discuss another important concept: the distinction between "descriptive" and "prescriptive" questions (also referred to as "positive" and "normative" questions in some circles).

## Descriptive Questions

Up until this point, all the questions we've discussed have been examples of Descriptive Questions. Descriptive Questions are questions about the empirical state of the world, and answering Descriptive Questions is the bread and butter of data science. "Do high-income and low-income countries emit similar amounts of carbon dioxide?," "What is the likelihood a 78-year-old male patient undergoing kidney surgery will experience a post-surgical infection?," and "What kinds of users are clicking our ads?" are all examples of Descriptive Questions. 

Because Descriptive Questions are about the empirical state of the world around us, they have right and wrong answers. Actually generating answers to these questions may be difficult, of course, and due to differences in things like empirical strategies or study populations, different data scientists may generate different answers to the same Descriptive Question. At least in principle, however, if you are willing to agree there exists a single shared empirical reality around us,[^objectivereality] then Descriptive Questions can be thought of as having right and wrong (or at least more or less "accurate") answers.

[^objectivereality]: If you know enough epistemology to object to my asserting the existence of an "objective state of the world," then I assume you can also understand the point I'm trying to get across in this chapter and will forgive me for this philosophical slight.

But Descriptive Questions are not the only type of question you will encounter as a data scientist. Stakeholders, corporate strategists, executives, and doctors may often ask you for a recommendation — in other words, they are asking you what they should do. And when they ask you that question, they are no longer asking you a *Descriptive Question*, they are now asking you a *Prescriptive Question*.

## Prescriptive Questions

A *Prescriptive Question* is a question about what someone should do or what someone ought to do. Unlike Descriptive questions, Prescriptive Questions are not purely empirical in nature — rather, they require the person answering the question to make a value judgment about the desirability of different potential outcomes. And because there is no single "correct" value system in the world everyone agrees on, there are also no universally right and wrong answers to Prescriptive Questions.

To illustrate the role of values in answering Prescriptive Questions, suppose you have been asked whether the US Food and Drug Administration should authorize a new drug. This drug is 95% effective in reducing the incidence of a chronic respiratory condition that prevents sufferers from engaging in strenuous sports. But this drug also causes permanent paralysis in 1% of patients who take the drug. Should (there's that magic "should" word?) this drug be authorized?

In answering this question, note that we've started with a description of some empirical facts — the drug is 95% effective, and the drug also causes permanent paralysis in 1% of people who take the drug. You can think of this component as the answer to the Descriptive Question "What effects — positive and negative — does this drug have on the people who take it?" There is, most of us would agree, a right answer to this question. And assuming the clinical trial that generated those results was well run, we would expect another clinical trial — one conducted on similar patients, with the same dosing regime, similar quality, etc. — to generate similar results, because most of us believe there exists an *empirical truth* about the effect of the drug.[^objectivereality2]

[^objectivereality2]: I recognize that in asserting the existence of "empirical truth" I may be offending some readers. As will the discussion above, I suspect that if you are familiar with the philosophical issues raised by me invoking an empirical truth, you will are also probably comfortable with the distinction between prescriptive and descriptive questions and will forgive me this simplification.

But is there a "correct" answer to the question "should the FDA authorize this drug?" I would argue not — I don't think I would have too much difficulty finding people who would be quite willing to take both sides of that question. Why? Because different people likely hold different views on the relative value of patients being able to engage in sports and exercise versus the value of 1% of patients being permanently paralyzed. Different people likely also hold different views on the relative value of patients being allowed to make those choices for themselves is greater than the value of avoiding the possibility that some patients may make the decision to take the drug without fully understanding what life with paralysis entails, and who would later regret their decision when they come to better understand the risk they were taking. 

### Prescriptive Questions and Ethics

If you look up Prescriptive Questions, you will probably find a set of examples that emphasize things we think of as ethical or moral questions. "Should higher income and lower income countries be expected to meet the same carbon emission reduction standards?" or "Do high-income countries have a moral obligation to provide tuberculosis drugs to developing countries for free (or at cost)?"

As you will note, however, in the drug example above I've avoided asking what is the *moral* choice, and instead emphasized that one's answer depends on the relative *value* one places on different things ("how do you *value* a patient being able to live a full life that includes exercise?"). That's because when one encounters terms like "ethical question" or "moral question," one immediately jumps to really deep philosophical questions of life, suffering, altruism, and inequality. 

But questions that have nothing to do with those heavy topics can be Prescriptive Questions too. For example, suppose you've been asked to choose between:

- (a) a business strategy that increases profits in the short run, but may harm how consumers view your brand, and as a result reduce long term profits, or
- (b) a business strategy that protects how consumers view your brand, foregoing some profits in the short run to protect long term value.

This doesn't *feel* like the same type of question as "should the FDA authorize this new drug." Just like that question, however, this question asks you to decide the relative *value* you place on long term profit versus the *value* you place on short term profit. Or, since the future is uncertain, it may as you to decide the relative *value* you place on relatively certain short term profits versus the *value* you place on less certain but potentially larger long-term profits.

And that's what makes a Prescriptive Question different from a Descriptive Question: Descriptive Questions ask you to measure the world, while Prescriptive Questions ask you to decide on the *relative values* of different outcomes.

Does that mean not all Prescriptive Questions are ethical questions, like you may see written around the internet? Well... I think a moral philosopher would probably argue that how we assign value to different things (which is how we decide what we *should* or *ought* to do) is at the root of all moral and ethical systems. Consequently, this is probably more a matter of semantics than substance — all Prescriptive Questions require weighing choices and assigning value to different outcomes. A philosophy would probably say that does make them all ethical, while a layperson may not.

### Trade-Offs, Decisions, Descriptive Questions, and Prescriptive Questions

The two examples given above illustrate a more general feature of Descriptive and Prescriptive Questions when it comes to making decisions: 

- Descriptive Questions help clarify the likely *consequences* of different courses of action, but cannot tell you which is preferable, while
- Prescriptive Questions are about assigning values to different outcomes and deciding on their desirability accordingly.

## Descriptive and Prescriptive Questions in Data Science

The focus of this book is on Descriptive Questions. This is not because Prescriptive Questions are unimportant — indeed, one can easily make the argument that they are *more* important than Descriptive Questions. Moreover, as we will discuss in future chapters, they will arise frequently in your career as a data scientist. 

No, the reason that Descriptive Questions are the focus of this book is that data science tools can *only* answer Descriptive Questions. No neural network, logistic regression, or clustering algorithm can ever decide on the relative value you should place on 1/100 patients being paralyzed versus 95/100 being cured. They can help you better understand things like whether the cost of caring for paralyzed patients outweigh the saved cost on patients with respiratory issues for the health system (a Descriptive Question), but not how to weigh those financial considerations against patient quality of life.

To be clear, this does not mean that the answers you generate as a data scientist will not have a *bearing* on how people answer Prescriptive Questions. Data science would be a very dull field indeed if it could not speak to the ethical issues of our day. Data science is powerful precisely because it can inform how we answer Prescriptive Questions by helping us understand the relevant stakes. Data science tools can help decision-makers understand the likely *consequences of different courses of action*, information that can help people make *informed* decisions about what outcomes they feel are most desirable. But they cannot tell you what course of action is best, and anyone who tells you otherwise hasn't been thoughtful enough about how they make decisions.

### Then Why'd You Bring Them Up?

If the focus of this book is Descriptive Questions, why this digression on Prescriptive Questions? 

To help you begin to recognize when the question you are being asked is a Descriptive Question — with a right or wrong answer, and where your expertise as a data scientist put you in a unique position of authority — or a Prescriptive Question, where answers depend on how one chooses to value different outcomes, and where one's expertise as a data scientist really *doesn't* provide you with any unique standing or authority. 
