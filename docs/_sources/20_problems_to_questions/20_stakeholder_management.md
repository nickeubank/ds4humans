# Stakeholder Management

In our previous two readings, I detailed why it's critically important to spend as much time understanding the problem you wish to solve as actually developing a solution. But throughout that discussion, I implicitly simplified the discussion by treating you — the reader — as the key stakeholder. 

If you're fortunate enough to be your own stakeholder — either because you are working in a startup, or are an academic doing your own research — congratulations! You get to apply the preceding lessons directly to solve the problem(s) you care about most.

But for everyone else, it's time to engage with one of the most difficult aspects of being a data scientist: stakeholder management. 

For most data scientists, between you and the problem you are being asked to solve will almost always sit a group of key stakeholders. In most cases, the problem you are being asked to solve will actually be *their* problem, they will be the source of most of the domain knowledge you will need to solve their problem successfully, and they will also be the actors who will be responsible for evaluating you at the end of the project.

In this chapter, we will discuss principles and strategies for working effectively with stakeholders. This is a critically important skill — as noted above, these will generally be the people responsible for evaluating you at the end of the project! — but one many data scientists fail to recognize is categorically different from the "professor management" they have been practicing for years. It requires deliberate cultivation, reflection, and a recognition that as a professional data scientist, it is now incumbent upon you to see yourself as a *partner* and *colleague* to the stakeholders you work with, not a simple subordinate.

## Principles for Stakeholder Management

### Principle 0: Your Job is to Help Solve Your Stakeholder's Problem

The first Principle of stakeholder management is that you will be evaluated on whether, at the end of your engagement, you've solved your stakeholder's problem, **not** whether you did precisely what they asked you to do. I've made this point twice before, but it is important enough it bears repeating a third time. 

That means that if you just follow your stakeholders directions — even when your expertise suggests to you that those directions aren't the best way to solve a problem — you will *not* find your stakeholder will be delighted by your skill despite finding they are no better off for having hired you.

### Principle 1: Your Job is to be a Problem-Solving *Partner*

The biggest mistake that young data scientists make when working with stakeholders for the first time is being overly deferential to their stakeholders. This is certainly an understandable mistake, but a mistake nevertheless, given Principle 0. 

Where does this deference come from? I feel is borne from three misperceptions.

#### Confusing Domain Expertise for Global Expertise

Most stakeholders you work with will be domain experts in their field, and — at least early in your career — will often be more senior. As a result, there is a natural tendency for young data scientists to err on the side of deference. 

While it is important to be respectful of your stakeholder's domain expertise, it is just as important to recognize **that data science is about *pairing* domain expertise with computational methods**. And while your stakeholder will almost certainly have greater domain knowledge than you, it is very unlikely they will also know more than you about cutting edge quantitative methods. Indeed, if they did, they probably wouldn't be hiring you![^google]

[^google]: Obviously there are exceptions to this — if you work for a mature tech company like Google or Meta, you may very well end up working under a manager who knows both sides of a problem significantly better than you. In my experience, however, this circumstance is the exception, not the rule.

```{sidebar}
Data science is about *pairing* domain expertise with computational methods and quantitative insights, and neither you nor your stakeholder is likely to have expertise in *both* the substantive domain in question *and* cutting edge quantitative methods.
```
One factor that feeds into this misconception is that most stakeholders know *just enough* data science to throw around lots of jargon, giving young data science students the (mistaken) impression that their stakeholders know just as much about data science as they know about their domain. But, again, this is almost never the case.

#### Confusing Your Stakeholder for a Professor

Because they've never been trained to do anything else, many young data scientists treat their stakeholders the same way they would their professors — as people who know what the right answer looks like, and who should thus be deferred to in determining the right way to solve a problem. But this is a mistaken understanding of both (a) what a professor does in class, and (b) what makes someone a stakeholder.

A professor (in theory) is someone whose job is to help you achieve a set of specific learning goals. And when they give you an assignment, that assignment has (again, in theory) been developed to help you achieve those learning goals. Assignments from a professor, in other words, are designed with a clear goal in mind and a structure designed to achieve that goal. As a result, professors do generally know everything (or close to everything) there is to know about how to approach an assignment.

**A stakeholder, by contrast, is just a person with a problem.** They may have some *ideas* for how to solve their problem, but whatever possible solutions they bring to the table are just that: *ideas*.

Remember: your time as a data scientist is *valuable and expensive*. If your stakeholder already knew how to solve their problem, they wouldn't be paying you for your time. No, the reason your stakeholder is coming to you is that they don't know what the solution to their problem will look like, and they need help figuring that out. 

That doesn't mean that a stakeholder won't come to you with a set of suggestions for how you might start to address a problem, but as we'll discuss below, these should be viewed as suggestions from a colleague, not directions like those from a professor in a class.

#### Not Having Confidence In Your Own Knowledge

It is often said that "The more you know, the more you realize you don't know."[^aristotle] And I'd be hard-pressed to find another field where I think this is more common than in data science. The field is expanding so rapidly and in so many directions, that it is only by learning a lot that one can really appreciate the range of frontiers of knowledge that one has only begun to explore.

And on the other side of the spectrum, *far* too many people have fit a regression tree in scikit-learn and gotten a high accuracy score, and have taken that as evidence that they are expert data scientists. 

[^aristotle]: This is commonly attributed to Aristotle, though I don't think it's more of a paraphrase of things he wrote than an actual quote.

All of which is to say: young data scientists tend to approach the world with an appropriate humility that comes from serious study. But don't confuse that appropriate humility for a lack of expertise. And just as importantly, don't confuse the apparent confidence of others for evidence that they know more than you — all too often, the opposite will be true (the fact confidence and knowledge are often negatively correlated is a cognitive bias referred to as the [Dunning-Kruger effect](https://en.wikipedia.org/wiki/Dunning%E2%80%93Kruger_effect))!

### Principle 2: Don't Assume Your Stakeholder Knows What They Need

A corollary to Step 0 is to not assume your stakeholder understands what they need. So when I say "helping your stakeholder understand their problem is a core part of the job," I don't only mean that it's part of your job *if the stakeholder admits to deep uncertainty about their problem*." Odds are your stakeholder will come to you with a strong statement of what they think they want, but you should take that as a starting point for discussion, not your mandate.

This is particularly true if your stakeholder comes to you with really specific technical suggestions. Often you will be approached by a stakeholder who, rather than laying out a problem, announces they would like you to do X using some data science tool Y. Occasionally the stakeholder doing this knows exactly what they're talking about, and you should use Y to do X.

More often, however, you're dealing with a stakeholder with just enough knowledge to be dangerous (and to drop buzzwords), but not enough to know how best to solve their problem.

Most people ask data scientists for help because they don't know much about data science (or, worse, they *think* they know about data science but don't). Again, different rules apply if you're at Google or Apple, but in most contexts, it's a good idea to treat implementation details provided by the client as a red herring. Focus on the stakeholder's *needs*. Only get into implementation details once you feel you understand the problem well.

```{sidebar}
Focus on the stakeholder's *needs*. Only get into implementation details once you feel you understand the problem well.
```

### Principle 3: Stakeholder Time Is Precious

It is always good to go into meetings with your stakeholder with a clear sense of your objectives — what you hope to communicate, and what information and feedback you need to get before the meeting ends. When your stakeholder is someone you don't get to meet with regularly, it's good practice to detail these objectives and provide them — in writing — to your stakeholder in advance of your meeting. This will not only ensure that you and your teammates are on the same page (as you will all have reviewed the document before sending it to your stakeholder), but also ensure that your stakeholder has adequete time to reflect on any questions or issues you wish to raise.

When it comes to your *first* meeting, however, this practice can feel impractical as you may feel so uncertain about the project that you only know the first few questions you want to ask.

But even in a first meeting, preparation is key. Rather than laying out the new issues you wish to raise and questions you want answered, for a first meeting it's helpful to write out a full *tree* of lines of inquiry you may wish to propose. In other words, for every question you wish to pose to your stakeholder, try to anticipate some likely responses they make provide, then write down a few followup questions to ask if they provide one of those responses. 

Time with your stakeholder is *precious*, especially early in a project, make the most of that face time through preparation.



### Principle 4: Iterate

And here's the last but perhaps most important step: **iterate.** Bring your work back to your stakeholder as often as possible.

Many stakeholders find the idea of data science mysterious and abstract and will struggle to understand what is and is not feasible. By bringing them intermediate results, the whole process will start to become more concrete for the stakeholder, and it will help them provide you with better feedback.

The way this book is organized suggests a natural flow from problem articulation to answering Exploratory Questions to prioritize efforts, to answering Passive-Prediction Questions to target individuals for extra attention or automate tasks, and finally to Causal Questions to better understand the effects of that extra attention/automation. In reality, however, a good data scientist is always coming back to the stakeholder, updating their plan, and jumping back in the sequence when new questions arise.

## Strategies for Stakeholder Communication


### Step 3: Ask Questions (Especially Quantitative Ones!)

Be sure to ask a lot of questions of your stakeholder. In particular, I would suggest two types: questions about what success would look like, and questions about the problem itself.

### Questions About Success

Getting a sense of where the goalposts are for your stakeholder will both help you know what to target and also help you better understand your stakeholder's understanding of the problem. Make sure to ask questions like:

- How are you measuring the problem? What would you measure to help you know if you were successful in solving the problem?
- How big, in quantitative terms, is this problem?
- How much would you need the current situation to change to call this a success?

### Questions About the Problem

The more you know about your client's needs the better, so ask anything that comes to mind. If the client can answer your question, it will help you better understand the situation; if the client can't answer your question you may find that they are suddenly really interested in knowing the answer, and you immediately have some of your first Exploratory Questions to try to resolve.

In the example of the company that wanted to improve recruitment of high-quality employees in the introduction of this book, I suggested that some of the first exploratory questions you might want to investigate would be things like:

- How many job applications are you receiving when you post a job?
- What share of your current job applicants are of high quality?
- What share of employees you try to hire accept your offer?
- What share of employees you do hire turn out to be successful employees?

These are all questions that I would ask my stakeholder in one of our first meetings.

### Strategy 1: Propose Questions You Might Answer

As a data scientist, answering questions about the world is the instrument you have to solve problems. So once you think you have a sense of your stakeholder's needs, turn around and propose a handful of questions and ask them if answering those questions would help solve their problem.

This is important because many people have only a vague sense of what they are likely to get as a "deliverable" from the data scientist. They usually have a vague sense that they will get some type of magic machine (a "magic model" or "magic algorithm") that will just make their problem go away. By concretely framing your deliverable as the answer to a question (or a model that would answer a specific question for each entity like a customer or patient that it encounters), you can get much more valuable feedback before you dive into a problem.

### Strategy 2: Make Your Questions Specific and Actionable

[tend to ]

In developing your questions, it is important to make them specific and actionable. A specific and actionable question makes it very clear what you need to do next. For example, suppose an international aid organization told you they were worried that urbanization in Africa, Asia, and Latin America was impacting efforts to reduce infant mortality. Some examples of specific, actionable questions are: "Is infant mortality higher among recent migrants to urban centers, controlling for income?" or "Are the causes of infant mortality among recent migrants to urban centers different from those living in rural areas?" Reading those questions, you can probably immediately think of what data you'd need to collect, and what regressions you'd want to run to generate answers to those questions.

Vague questions would be "Is urbanization impacting efforts to reduce infant mortality?", or "Does urbanization affect infant mortality?" Note that when you read these, they don't seem to obviously imply a way forward.

Perhaps the best way to figure out if your question is answerable is to write down what an answer to your question would look like. Seriously -- try it. Can you write down, on a piece of paper, the graph, regression table, or machine learning diagnostic statistics (complete with labels on your axes, names for variables, etc.) that would constitute an answer to your question? If not, it's probably too vague.


## Reading Reflection Questions

- Why should you care if your stakeholder misspecifies their problem?
