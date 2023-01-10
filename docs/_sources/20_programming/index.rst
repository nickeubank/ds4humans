
Welcome!
=========


The goal of this Boot Camp is to provide incoming social science graduate students with a foundational understanding of topics including: variable assignment; vectors and matrices; loading, subsetting, cleaning, merging, and collapsing tabular data; plotting; and using loops and functions.

Throughout, our emphasis will be on learning the *generalized principles* that underlie how R works. Few fields are changing as quickly as computational social science / data science, and so any specific packages or tools we teach you now are sure to be out of date within a few years. 

But there are a set of fundamental concepts and patterns that are so powerful and flexible that they end up being common to *most* data science tools, not just across packages in R, but also across languages, and so those are the concepts we'll try and emphasize here. 

Learning Goals 
---------------

By the end of this Boot Camp, our goal if for you to be able to:

- Recognize and manipulate vectors and matrices -- the basic building blocks of R
- Manipulate different types of data
- Load data in R from a range of different sources
- Summarize data
- Clean dirty data
- Merge datasets
- Find help online when you get stuck in R
- Write loops to execute repetitive tasks
- Write functions to generalize your code

Class Schedule
---------------

`Class Schedule <class_schedule.rst>`_ for schedule of classes, reading assignments and exercises.

R
----

We'll spend most of this Boot Camp teaching you to use a program for statistical analysis called *R* (yup, just the letter, though if you need to google R, I recommend using the search term `Rlang`).

Why R? Because it's currently the most-used statistical software in the social sciences, and using the same tool as those around ensures you can effectively collaborate with colleagues, and that if you need help, you can easily get it from those around you. 

It is worth emphasizing that we're *not* teaching you R because we think it is the "best" tool for data science. The reality is that there are lots of tools for statistical programming (e.g. R, Stata, SPSS, Python, Julia, Matlab, etc.), and people often develop really strong opinions about what language is best, and sometimes pass judgement on people who use other languages. We would like to discourage this type of thinking.

My own view --- based on years working in a range of languages, including Stata, R, Python, Julia, Matlab, and others --- is that the "best" tool is the one that you feel most productive using, and so what is best will depend on a range of factors, like the type of work you're doing and what tools you used in the past. But perhaps the most important factor impacting what language is "best" in any given situation is what other people are already using. Network effects in data science are *huge*, and it's hard to overstate how many advantages there are to using the language that's being used by your colleagues. Not only does using the "popular" language mean that it's easier to get help when you have problems, and collaborate with colleagues, but it also means you're more likely to have access to packages and software written specifically for people working in your field. And when it comes to the social sciences, R is by far the most used language, and so that is what we'll be learning here.  

With that said, over the course of your career you may find yourself gravitating to one tool or another as required by your research. For that reason, while we will be using R in this course, we'll also try and emphasize the development of *generalizable skills and understandings* that you will find useful no matter what language you end up working with in the future.


Required Programming Background
--------------------------------

**None.**

We have *absolutely no expectations that students will have any experience with programming!* If you know how to use google and email, you have plenty of experience -- everything else we'll take care of.

At times during the course, we may make statements about how the tools we're learning (like R) compare to different tools (like Stata or Python) if we find there are students with experience in these other tools. However, if we make those comparisons, it is only to help those students avoid the traps one can fall in if one's background is in another language. It is in no way because we *expect* all students to have experience with other tools.

But I already know R. Is this really for me?
---------------------------------------------

In my experience, *most* instruction students receive in R tends to provide students with a handful of functions they can call in order to get work done. This is a good way to get started in R, but -- again, in my experience -- even students who use R a lot often don't fully understand the basic principles on which languages like R are built. A decade ago, this was less of a problem, but as computational methods take on an increasingly central place in the social sciences, and our computational tools become increasingly sophisticated, this lack of fundamentals often becomes a significant obstacle for students seeking to improve their skills. 

In this course, our goal is not to learn to stitch together a handful of functions to load a data.frame and run a regression; rather, the goal of this course is to help you learn to think like a data scientist about how R works to provide you a foundation on which to build as you move from basic linear regressions to geospatial analysis, network analysis, web-scraping, advanced statistical modelling, or other programming languages. 

Who Am I?
----------------

Because this Boot Camp is targeted at "social scientists" writ large, you may reasonably be asking whether it's actually appropriately designed for *you* and your specific interests. Obviously I can't guarantee the answer is yes for absolutely any student walking through the door, but I have designed this Boot Camp to focus on foundational topics that I think are critical for anyone interested in doing computational social science / data science in 2021 based on my own experiences as a researcher and educator. 

What are those experiences? Over the past 15 years, I have had the good fortunate to do work in a wide range of contexts, including: doing academic social science research published in top political science journals; conducting impact evaluations and analyzing household survey data for the World Bank; working as an expert consultant in US voting rights litigation; and teaching a range of computational social science methods to everyone from undergraduate cultural anthropologists to PhD political scientists. My work has entailed lots of statistics, network analysis, geospatial analysis, and datasets large and small from all imaginable sources. Moreover, many of the instructional materials we'll use in this course were developed in conjunction with Simon Ejdemyr, who got his PhD in Political Science from Stanford before going on to work as a Data Scientist first at Facebook and now at Netflix. 

So while I may not have worked in your *exact* area of interest, if your area of interest sounds close to any of those, what we'll be learning here should be relevant. 

Class Organization
--------------------------------

In this class we will be "flipping the classroom" -- you will be required to review tutorials on R between classes, and each afternoon we will focus on doing exercises that allow you to get hands-on experience with the skills you've read about in an environment where help will be available. These tutorials aren't very long, and we **strongly** recommend that while you read through them, you do so with an open R session so you can just play around a little, trying out the things you learn. The research on learning to program is exceedingly clear on this point: **the only way to learn to program is to actually program**, so the more time you spend playing with R, making mistakes, and troubleshooting, the more you will learn. We'll do lots of exercises in class, but the more you play on your own too, the more you will learn.

Note that one consequence of this class structure is that the in person sessions will only be of value if you do the required readings before attending. In fact, because many in class exercises will be done in small groups, students who don't read materials in advance will not only undermine their own learning, but they also have the potential to undermine the learning experience of their fellow students. As a result, **each class will begin with a short quiz on the required readings.** These quizzes should be trivially easy if you did the readings, **but any student who fails to quizzes** will be asked to leave the boot camp in the interest of ensuring unprepared students don't undermine the experience of students who have prepared appropriately. 

Huge Thanks
----------------

I owe a huge debt of gratitude to `Simon Ejdemyr <https://sejdemyr.github.io/>`__, whose `R tutorials <https://sejdemyr.github.io/r-tutorials/basics/>`__ I used the first time that I taught a version of this boot camp, and whose tutorials were the inspiration for the resources on this site.

.. toctree:: 
   :hidden:
   :maxdepth: 1

   class_schedule


.. toctree::
   :hidden:
   :caption: Class Readings
   :maxdepth: 2

   intro_to_r.ipynb
   intro_to_datatypes.ipynb
   intro_to_vectors.ipynb
   manipulating_vectors.ipynb
   intro_to_matrices.ipynb
   manipulating_matrices.ipynb
   intro_to_dataframes.ipynb
   manipulating_dataframes.ipynb
   intro_to_tidyverse.ipynb
   defensive_programming.ipynb
   intro_to_merging.ipynb
   defensive_merging.ipynb
   missing_data.ipynb
   loops.ipynb
   functions.ipynb
   function_example.ipynb


.. toctree::
   :hidden:
   :caption: Additional Topics
   :maxdepth: 2

   lists.ipynb

