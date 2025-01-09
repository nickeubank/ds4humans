# Stakeholder Management

stuff

### Step 0: Recognize Your Role

If you remember nothing else from this chapter, please remember this: helping your stakeholder better understand their problem is a core part of the job.

Because most stakeholders are older and domain experts in their field, young data scientists tend to err on the side of deference. It is important to be respectful of your stakeholder's experience and to use their domain expertise, but it is important to also recognize that data science is about *pairing* domain expertise with computational methods and quantitative insights, and neither you nor your stakeholder is likely to have expertise in *both* the substantive domain in question *and* cutting edge quantitative methods. Indeed, if they did, they probably wouldn't be hiring you![^google] So don't hesitate to speak up! Ask questions, raise concerns, and while you should do so with *some* humility, have confidence in your own expertise.

[^google]: Obviously there are exceptions to this — if you work for a mature tech company like Google or Meta, you may very well end up working under a manager who knows sides of a problem significantly better than you. In my experience, however, is circumstance is the exception, not the rule.

### Step 1: Don't Assume Your Stakeholder Knows What They Need

A corollary to Step 0 is to not assume your stakeholder understands what they need. So when I say "helping your stakeholder understand their problem is a core part of the job," I don't only mean that it's part of your job *if the stakeholder admits to deep uncertainty about their problem*." Odds are your stakeholder will come to you with a strong statement of what they think they want, but you should take that as a starting point for discussion, not your mandate.

This is particularly true if your stakeholder comes to you with really specific technical suggestions. Often you will be approached by a stakeholder who, rather than laying out a problem, announces they would like you to do X using some data science tool Y. Occasionally the stakeholder doing this knows exactly what they're talking about, and you should use Y to do X.

More often, however, you're dealing with a stakeholder with just enough knowledge to be dangerous (and to drop buzzwords), but not enough to know how best to solve their problem.

Most people ask data scientists for help because they don't know much about data science (or, worse, they *think* they know about data science but don't). Again, different rules apply if you're at Google or Apple, but in most contexts, it's a good idea to treat implementation details provided by the client as a red herring. Focus on the stakeholder's *needs*. Only get into implementation details once you feel you understand the problem well.

```{sidebar}
Focus on the stakeholder's *needs*. Only get into implementation details once you feel you understand the problem well.
```

### Step 3: Ask Questions (Especially Quantitative Ones!)

Be sure to ask a lot of questions of your stakeholder. In particular, I would suggest two types: questions about what success would look like, and questions about the problem itself.

#### Questions About Success

Getting a sense of where the goalposts are for your stakeholder will both help you know what to target and also help you better understand your stakeholder's understanding of the problem. Make sure to ask questions like:

- How are you measuring the problem? What would you measure to help you know if you were successful in solving the problem?
- How big, in quantitative terms, is this problem?
- How much would you need the current situation to change to call this a success?

#### Questions About the Problem

The more you know about your client's needs the better, so ask anything that comes to mind. If the client can answer your question, it will help you better understand the situation; if the client can't answer your question you may find that they are suddenly really interested in knowing the answer, and you immediately have some of your first Exploratory Questions to try to resolve.

In the example of the company that wanted to improve recruitment of high-quality employees in the introduction of this book, I suggested that some of the first Exploratory Questions you might want to investigate would be things like:

- How many job applications are you receiving when you post a job?
- What share of your current job applicants are of high quality?
- What share of employees you try to hire accept your offer?
- What share of employees you do hire turn out to be successful employees?

These are all questions that I would ask my stakeholder in one of our first meetings.

```{note} Stakeholder Meetings
It is always good to go into meetings with your stakeholder with a clear sense of your objectives — what you hope to communicate, and what information and feedback you need to get before the meeting ends. When your stakeholder is someone you don't get to meet with regularly, it's good practice to detail these objectives and provide them — in writing — to your stakeholder in advance of your meeting. This will not only ensure that you and your teammates are on the same page (as you will all have reviewed the document before sending it to your stakeholder), but also ensure that your stakeholder has adequete time to reflect on any questions or issues you wish to raise.

When it comes to your *first* meeting, however, this practice can feel impractical as you may feel so uncertain about the project that you only know the first few questions you want to ask.

But even in a first meeting, preparation is key. Rather than laying out the new issues you wish to raise and questions you want answered, for a first meeting it's helpful to write out a full *tree* of lines of inquiry you may wish to propose. In other words, for every question you wish to pose to your stakeholder, try to anticipate some likely responses they make provide, then write down a few followup questions to ask if they provide one of those responses. 

Time with your stakeholder is *precious*, especially early in a project, make the most of that face time through preparation.
```

### Step 4: Propose Questions You Might Answer

As a data scientist, answering questions about the world is the instrument you have to solve problems. So once you think you have a sense of your stakeholder's needs, turn around and propose a handful of questions and ask them if answering those questions would help solve their problem.

This is important because many people have only a vague sense of what they are likely to get as a "deliverable" from the data scientist. They usually have a vague sense that they will get some type of magic machine (a "magic model" or "magic algorithm") that will just make their problem go away. By concretely framing your deliverable as the answer to a question (or a model that would answer a specific question for each entity like a customer or patient that it encounters), you can get much more valuable feedback before you dive into a problem.

#### Make Your Questions Specific and Actionable

In developing your questions, it is important to make them specific and actionable. A specific and actionable question makes it very clear what you need to do next. For example, suppose an international aid organization told you they were worried that urbanization in Africa, Asia, and Latin America was impacting efforts to reduce infant mortality. Some examples of specific, actionable questions are: "Is infant mortality higher among recent migrants to urban centers, controlling for income?" or "Are the causes of infant mortality among recent migrants to urban centers different from those living in rural areas?" Reading those questions, you can probably immediately think of what data you'd need to collect, and what regressions you'd want to run to generate answers to those questions.

Vague questions would be "Is urbanization impacting efforts to reduce infant mortality?", or "Does urbanization affect infant mortality?" Note that when you read these, they don't seem to obviously imply a way forward.

Perhaps the best way to figure out if your question is answerable is to write down what an answer to your question would look like. Seriously -- try it. Can you write down, on a piece of paper, the graph, regression table, or machine learning diagnostic statistics (complete with labels on your axes, names for variables, etc.) that would constitute an answer to your question? If not, it's probably too vague.

### Step 5: Iterate

And here's the last but perhaps most important step: **iterate.** Bring your work back to your stakeholder as often as possible.

Many stakeholders find the idea of data science mysterious and abstract and will struggle to understand what is and is not feasible. By bringing them intermediate results, the whole process will start to become more concrete for the stakeholder, and it will help them provide you with better feedback.

The way this book is organized suggests a natural flow from problem articulation to answering Exploratory Questions to prioritize efforts, to answering Passive-Prediction Questions to target individuals for extra attention or automate tasks, and finally to Causal Questions to better understand the effects of that extra attention/automation. In reality, however, a good data scientist is always coming back to the stakeholder, updating their plan, and jumping back in the sequence when new questions arise.

## Reading Reflection Questions

- Why should you care if your stakeholder misspecifies their problem?
