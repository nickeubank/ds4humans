# Welcome to DS4Humans

This website is both the course site for the Duke Interdisciplinary Data Science Course *Solving Problems with Data* (IDS 701), as well as the beginning of what I hope will eventually become a stand-alone textbook by [Nick Eubank](https://www.nickeubank.com).

**If you *aren't* a Duke IDS 701 student** and wish to explore the content of the course, I'd suggest starting with the [Introduction chapter here](10_introduction/10_our_approach). You're also welcome to browse the class schedule of topics covered in the class in the [class schedule](00_class_schedule/class_schedule) link.

If you *are* a MIDS student, here's a little more about the course.

## Solving Problems with Data (IDS 701)

Few fields have shown as much promise to address the world's problems as data science. At the same time, however, recent years have also made clear that today's global challenges will not be met by simply "throwing data science at the problem" and hoping things will work out. Even in business, where many assume that Artificial Intelligence is a sure ticket to profits, [a major recent study found only > 11%](https://www.wired.com/story/companies-rushing-use-ai-few-see-payoff/) of businesses that had piloted or employed Artificial Intelligence had reaped a sizeable return on their AI investments.

How, then, should a burgeoning data scientist approach this field full of such promise but also so many pitfalls? And why have so many data science endeavors failed to deliver on their promise?

The answer lies — at least in significant part — in a failure to provide students with a systematic approach to bringing the techniques learned in statistical modeling and machine learning courses to bear on real-world problems. Data science curricula usually begin with coding, statistics, and model evaluation techniques. All too often, however, that's where they stop. But while the hardest part of data science *classes* is often fitting a model well or getting a good AUC score, the hardest part of being an effective *professional* data scientist is ensuring that the models being fit and the results being interpreted actually solve the problem that motivated you (or your stakeholder) in the first place.

This class is designed to fill this gap. Through exercises, case studies, and projects, students will develop a *systematic* understanding of how to approach and manage data science projects from conception through delivery and adoption. It will provide a unified perspective on how the perspectives and tools learned in other courses complement one another, and *when* different approaches to data science are most appropriate.

In addition, this course will also provide an in-depth introduction into *causal inference* — the practice of answering causal questions. Given the interests of MIDS students, this introduction will focus heavily on experiments and A/B testing, but will also cover the use of observational data (data that did not come from an experiment that employed random assignment to treatment) for answering causal questions.

### How to Succeed in this Class

In Duke course reviews, students are asked, "What would you like to say about this course to a student who is considering taking this course in the future?"

*By far* the most consistent thing past students say they would like to tell a student considering taking it in the future is to **do the readings and take them seriously.**

There is a tendency among data science students — especially those from a STEM background — to assume that readings that don't have a lot of math aren't "serious," and consequently don't require substantial focus. That's a mistake. This course is about the critical reasoning required to make the leap from the relatively clean math of statistics and machine learning to the messiness of real world problems. To help you learn how to do so, the readings are full of examples, ways to think about problems, and problem-solving frameworks to help you cross that wobbly bridge from the clean world of problem sets to the real, under- or mis-defined problems you will face when you enter the work force. But with this type of material, what you get out of it depends on what you put into it, and unlike with a theorem — which you either follow or you don't — thinking critically happens on many levels. So while it's easy to skim a reading and — because you weren't confused by any greek notation — assume you internalized it, succeeding in this class requires actively wrestling with the material, not just letting your eyes glide over it.

In other words, **take the readings for this course just as seriously as the exercises.** There is as much learning to be done by thinking deeply about the readings as there is to be gained from doing the exercises, a fact that is also reflected in how the course is graded (individual or two-person exercises make up 20% of your grade, while reading comprehension quizzes and the midterm count for 20% each).

### Big Ideas

This course is organized around three big ideas:

1. **Data science is about solving problems.** All too often, data scientists get lost in the technical details of models and lose sight of the bigger picture. Data science is not about maximizing accuracy or AUC scores — it's about using data and quantitative methods to solve problems, and at the end of the day the only "metric" that matters is whether your work has solved the problem you set out to address.
2. **Data scientists solve problems by answering questions, and the question you are asking determines what tool is appropriate.** At their core, all data science tools are tools for answering questions, whether you realize it or not. Learning to recognize how data scientists use questions to solve problems — and exactly what questions are being answered by the tools you use every day — is key to navigating the ambiguity of real-world problem solving.
3. **Reasoning rigorously about uncertainty and errors is what differentiates good data scientists from great data scientists.** Data science isn't just about minimizing classification errors and uncertainty — it's also about deciding how unavoidable errors should be distributed, and how to weigh the risks and trade-offs inherent in probabilistic decision-making rigorously and in a manner that takes into account the problem you are trying to solve.

### Pre-Requisites for Non-MIDS Students

This course is primarily designed for students in the Duke Masters in Interdisciplinary Data Science (MIDS) program, but students from other programs are more than welcome if they have the appropriate pre-requisite training. Data Science is a fundamentally interdisciplinary field, so the more perspectives we have represented in the classroom the better!

This course will assume that enrolled students have a good grasp of inferential statistics and statistical modeling (e.g. a course in linear models), though no prior experience with causal inference is expected. In addition, MIDS students will be taking a concurrent course in applied machine learning, so incoming students will also be expected to have some basic experience with machine learning or be concurrently enrolled in an applied machine learning course.

This course will also assume students are comfortable manipulating real-world data in Python. The substantive content of this course is language-independent, but because students will be required to work on their projects in teams, comfort with Python will be required to facilitate collaboration (MIDS students are, generally, "bilingual" in R and Python, but have a strong preference for Python, and it's hard to write problem sets to accommodate multiple languages).

Finally, students will also be expected to be comfortable collaborating using git and github. If you meet the other requirements for this course but are not familiar with git and github, this is a skill you should be able to pick up on your own in advance of the course without too much difficulty. You can read more about [git and github here](https://www.practicaldatascience.org/ids720_specific/exercises/Exercise_git.html). The [Duke Center for Data and Visualization Science](https://library.duke.edu/data) also hosts git and github workshops if you are a Duke student.

### Course Schedule

You can find the [course schedule here](00_class_schedule/class_schedule). Note that our schedule is subject to change, but this should give you a good sense of the material we will cover.

### Syllabus

To learn more about the course, please [read the course syllabus here.](https://github.com/nickeubank/unifyingdatascience/raw/master/syllabus/Syllabus_UnifyingDataScience.pdf).
