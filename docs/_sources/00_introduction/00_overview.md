# Introduction to Data Science for Humans

The beginning of a textbook by [Josh Clinton](https://www.joshclinton.com/) and [Nick Eubank](https://www.nickeubank.com).

Few fields have shown as much promise to address the world's problems as data science. Today, data science is being used to develop climate models to improve our understanding of global climate change and mitigate its effects. It is being used in medicine to speed drug discovery, improve the quality of our x-rays and MRIs, and to ensure that patients receive appropriate medical care. Data science is used in courtrooms to fight for fair elections and electoral maps, and by data journalists to document and communicate to readers the injustices prevalent in our criminal justice system and issues in policing. Autonomous drones are delivering blood and medical supplies to rural health clinics from Rwanda to [North Carolina](https://www.theverge.com/2020/5/27/21270351/zipline-drones-novant-health-medical-center-hospital-supplies-ppe/). Driver aid features and autonomous cars continue to make progress in reducing the over 30,000 traffic deaths and millions of injuries that occur in the US alone every year. And nearly no facet of business has gone untouched by the recent revolution in data analytics, from song and movie recommendation engines on Netflix, Spotify, and the Apple App Store to the use of personalized, targeted advertisements used to ensure businesses can make the most of their advertising revenue, and the supply chain and logistics systems that have completely changed how and where goods are produced around the world

At the same time, however, recent years have also made clear that today's global challenges will not be met by simply "throwing data science at the problem" and hoping things will work out. Even in business, where many assume that Artificial Intelligence is a sure ticket to profits, a major recent study found [only 11% of businesses that had piloted or employed Artificial Intelligence had reaped a sizeable return on their AI investments.](https://www.wired.com/story/companies-rushing-use-ai-few-see-payoff/) In recent years we've also seen near endless examples of data science tools reinforcing racial and gender inequities in our social, like algorithms [discriminating against female job candidates at Amazon](https://www.reuters.com/article/us-amazon-com-jobs-automation-insight/amazon-scraps-secret-ai-recruiting-tool-that-showed-bias-against-women-idUSKCN1MK08G), prioritizing White patients over Black patients [for kidney transplants](https://www.wired.com/story/how-algorithm-blocked-kidney-transplants-black-patients/) and [preventative care](https://www.washingtonpost.com/health/2019/10/24/racial-bias-medical-algorithm-favors-white-patients-over-sicker-black-patients/), and being more likely to [incorrectly identify Black defendants than White defendants as being a "danger to society" when providing risk assessments to judges deciding on pre-trial release, bail and sentencing](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing). And even companies like Facebook's own research have shown its algorithms drive political polarization and division among users, and push users into extremist groups.[^facebook]

[^facebook]: [Recent reporting by the Wall Street Journal](https://www.wsj.com/articles/facebook-knows-it-encourages-division-top-executives-nixed-solutions-11590507499) has shown that Facebook's own research has confirmed what many outside experts have long argued: the way its recommendation engines prioritize content that results in "user engagement" (clicks, shares, comments) ends up promoting partisan, polarizing, sensationalist, or extreme content. In addition, their own research has also shown that group recommendations are contributing to extremism. According to one internal presentation, "64% of all extremist group joins are due to our recommendation tools" like *Groups You Should Join* and other discovery tools.


How, then, should a burgeoning data scientist approach this field full of such promise but also so many pitfalls? In this book, we will present a framework for approaching and solving problems with data science in a way that is both *effective* and *responsible*.

Our approach is to begin by carefully specifying the problem one needs to solve. While this may seem trivial, properly articulating the core problem one seeks to address can be remarkably difficult. Moreover, because everything you will do after this step is premised on having correctly specified your objective, it is *the* greatest determinant of the success of your project. As Charles Kettering, Head of Research at General Motors from 1920 to 1947 once said, "A problem well stated is a problem half solved."

Once we have successfully articulated our *problem*, we must then figure out how to solve it. And as data scientists, we are somewhat restricted in the types of solutions to which we have access; data science cannot just raise funds for a project, for example, or invent a new technology. Rather, as we will explore in detail in this book, all data science models and algorithms can be fundamentally understood as instruments for **answering questions** about the world using quantitative methods.

```{sidebar} Answering Questions
All data science models and algorithms can be fundamentally understood as instruments for **answering questions** about the world using quantitative methods.
```

In light of that fact, our challenge turns from the more amorphous task of just "figuring out how to solve the problem" to the more concrete "figure out what question, if answered, would make it easier to solve this problem."

To illustrate, [need some examples here. Examples hurt my head. Sticking to framework for now while I have momentum.]

Once we've articulated a question, we then turn to choosing the best tool to generate an answer. And it is only at this stage of our project—not at the beginning!—that we start thinking about different statistical methods, algorithms, or models.

But even at this stage, our job as data scientists is not to just grab the trendiest tool for a given type of question. Rather, we must recognize and evaluate the strengths and weaknesses of different tools available to us *in the context of the specific problem we are seeking to address*.

While this may seem an impossible task given the sheer multiplicity of data science methods available today, we can divide the data science questions we seek to answer into three groups: descriptive/exploratory questions, passive predictive questions, and causal questions. Each of these can play a different but important role in solving problems, and any effort to answer a question of each type will raise similar issues that need to be considered. Thus, by recognizing the *class* of question we are seeking to answer, we can significantly narrow both the set of data science tools that are appropriate to consider, and provide a short list of common considerations to think through.

## How to Use This Book

This book is designed to be relatively modular. While it *can* be read from front to back—and doing so should provide a person with zero data science knowledge or experience with a robust set of skills for doing real data science work in the world—we recognize that people come to data science with a range of different backgrounds, and we wish to honor that diversity.

In the next two chapters of Part 1, we provide an overview of the field of data science field as it exists and an explanation of how we got to where we are today, then a more detailed overview of the problem-solving framework that underlies our suggested approach to data science.

In Part 2, we turn to data manipulation in R. Data science is a fundamentally applied field, and one where application nearly always entails programming. In light of that, Part 1 of this book provides a zero-assumed-background introduction to data science programming in R, complete with real-world examples and exercises that will quickly empower readers to use the skills they are learning to answer questions *they* care about.

In Part 3, we then turn to how we can use these skills to solve problems using our problems-first framework. This Part begins with a discussion of the importance of clearly identifying one's problem (with many examples of where very smart people's efforts have gone astray when they tried to skip this step), before discussing how to move from problems to answerable questions, and then the issues that arise in attempting to answer different types of questions. 

Finally, in Part 4 we include several stand-alone chapters on topics we think are important to data scientists, such as data science ethics, project work-flow management, interpretable models, etc. 

Throughout, our book strives to embody several important principles:

- Our primary goal in this book is to provide you, the reader, with concrete, applicable skills you can immediately use to solve the problems you care about in the world.
- The job of a data scientist isn't to "just fit statistical models"; it's to solve problems. And while doing so effectively certainly requires being able to understand and fit different machine learning and statistical models effectively, it also requires being able to think critically about their application and to interpret the results of our models not as "truth" but with appropriate epistemological humility.

In other words, the emphasis of this book is not on learning the nuances of a handful of algorithms, or learning abstract programming principles; rather, our focus in this text is on developing the skills necessary to think critically about the application of Data Science tools in the real world. To that end, in addition to empowering you to use a range of data science tools yourself to answer the questions you care about, we will spend as much time analyzing case studies of data science tools being used—both successfully and unsuccessfully—as learning new methods. It is our hope that, by the end of this book, we will have provided you with a unified perspective on the emerging field of Data Science, and empowered you to think critically about the promises and perils of this emerging field.

If that sounds good to you, read on!