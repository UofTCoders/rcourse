---
title: "A graduate student-led participatory live-coding quantitative methods course in R: Experiences on initiating, developing, and teaching"
tags:
- R
- ecology
- statistics
- biology
- undergraduate
authors:
- name: Luke W. Johnston
  orcid: 0000-0003-4169-2616
  affiliation: "2,3"
- name: Madeleine Bonsma-Fisher
  orcid: 0000-0002-5813-4664
  affiliation: 1
- name: Joel Ostblom
  orcid: 0000-0003-0051-3239
  affiliation: 4
- name: Ahmed R. Hasan
  orcid: 0000-0003-0002-8399
  affiliation: 6
- name: James S. Santangelo
  orcid: 0000-0002-5921-2548
  affiliation: 7
- name: Lindsay Coome
  orcid:
  affiliation: 5
- name: Lina Tran
  orcid: 0000-0003-3504-4524
  affiliation: 8
- name: Elliott Sales de Andrade
  orcid: 0000-0001-7310-8942
  affiliation: 1
- name: Sara Mahallati
  orcid: 0000-0002-6765-0898
  affiliation: 4
affiliations:
- name: Department of Physics, University of Toronto
  index: 1
- name: Department of Nutritional Sciences, University of Toronto
  index: 2
- name: Department of Public Health, Aarhus University
  index: 3
- name: Institute of Biomaterials and Biomedical Engineering, University of Toronto
  index: 4
- name: Department of Psychology, University of Toronto
  index: 5
- name: Department of Cell and Systems Biology, University of Toronto
  index: 6
- name: Department of Ecology and Evolutionary Biology, University of Toronto
  index: 7
- name: Department of Physiology, University of Toronto
  index: 8
date: 15 January 2019
bibliography: paper.bib
---

# Description and eligibility

We present an open source learning module suitable for a semester long course
and designed to leverage participatory live-coding techniques to teach both
statistical and programming skills to primarily upper-year undergraduate biology
students. Our learning module has three self-contained submodules spanning
sixteen lessons: 1) Programming in R, basic data wrangling, and visualizations;
2) Exploratory data analysis, statistics, and modelling; and 3) Collaborative
and reproducible science. Our learning module includes eight assignments
distributed throughout the term to assess students' learning and understanding.
The material is made available as R Markdown documents and designed to be taught
using R Notebooks. Students are not expected to have any prior knowledge of the
R language. Our material is licensed under CC-BY 4.0 while the code is under the
MIT License. Our course is a response to the growing need for programmatic
training emphasizing sound data analysis practices among researchers. We believe
the included lesson topics, open accessibility, and modularity of our course
makes it an ideal resource for instructors and an excellent contribution to
JOSE.

# Statement of Need

In traditional undergraduate biology education, students learn statistical
skills and biological concepts separately, without any practical application
through coding. Designed primarily for upper-year undergraduate students, this
learning module emphasizes gaining skills in R coding in the context of learning
statistics and ecology. Notably, the material covers statistical concepts that
are broadly useful in biological sciences, including mixed effects models,
randomization tests, model selection, and differential equations. While we
delivered the material and concepts as a four-month long course, these concepts
are structured into primarily independent submodules focused around several
lessons, which could easily be mixed and matched to suit any desired learning
outcome. Lessons were designed to be interactive and delivered in a
participatory live-coding format so students learn experientially. The teaching
material includes assignments to hone and reinforce students' understanding and
allow them to critically apply their skills to new problems. Reproducible
quantitative research skills are emphasized throughout, culminating in an
open-ended self-directed project that requires students to apply their skills to
a real ecological dataset and problem. The teaching material is hosted in a
public GitHub repository which automatically generates a website that presents
the text, code, and code output together on the same page. The material is
openly available and licensed; anyone can easily copy and modify for their own
purposes.

# Learning Objectives and Content

The overarching objective of the course is to teach reproducible and
collaborative quantitative research skills. The lessons are described in more
detail in Table 1 and are organized into three submodules:

1. Programming in R [@R], basic data wrangling, and visualization (lessons 1-5).
2. Exploratory and statistical data analysis (lessons 6-13).
3. Collaborative and reproducible science (lessons 14-15). 

| **Submodule** | **Lesson** | **Description** | **Packages used** |
|:----------|:-------------|:-------------|:------------------|
| Programming in R, data wrangling, visualization | 1 | Introducing R, RStudio, and R Markdown | |
| | 2 | Vectors, data frames, basic operations, and functions  | `tidyverse` [@tidyverse] |
| | 3 | Introduction to exploratory data analysis | `tidyverse` |
| | 4 | Introduction to statistics and visualization | `tidyverse` |
| | 5 | Data transformation and visualization | `tidyverse` |
| Exploratory and statistical data analysis | 6 | Cleaning and preprocessing raw data | `tidyverse`; `mice` [@mice] |
| | 7 | Descriptive and inferential statistics | `tidyverse`; `car` [@car]; `psych` [@psych]; `multcomp` [@multcomp] |
| | 8 | Linear mixed-effects models | `tidyverse`; `plyr` [@plyr]; `lme4` [@lme4]; `lmerTest` [@lmerTest] |
| | 9 | Randomization tests and data simulation  | `tidyverse`; `reshape2` [@reshape2]; `EcoSimR` [@EcoSimR] |
| | 10 | Multivariate statistics (e.g. PCA) | `tidyverse`; `car`; `psych`; `multcomp`|
| | 11 | Model selection and averaging  | `tidyverse`; `lme4`; `lmerTest`; `MuMIn` [@MuMIn] |
| Numerical models | 12| Population modelling with differential equations  | `tidyverse`; `deSolve` [@deSolve] |
| | 13 | Time-series data and numerical models  | `tidyverse`; `deSolve` |
| Collaborative and reproducible science | 14 | Scientific methods | |
| | 15 | Collaborating through Git and GitHub | |
| | 16 | Manuscript preparation in R Markdown | `knitr` [@knitr]; `rmarkdown` [@rmarkdown] |

Table: Overview of submodules, lessons, and packages used in the learning module.

# Instructional Design

Drawing on the instructors' previous experiences teaching introductory
programming workshops, we designed our lessons to have the following components:

1. *Lesson Outline*: Each lesson has a clearly defined outline of the lesson
objectives, including expected time spent on each objective. This gives students
a clear expectation of what they should learn and gain from the lesson. It also
provides a structured template for instructors to prioritize content and gauge
how much time each objective should take.
2. *Participatory Live-Coding*: Coding in real-time with the students actively
coding along, forms the primary focus of each lesson. This hands-on approach to
teaching is frequently used by teaching organizations such as 
[Software Carpentry](https://software-carpentry.org/blog/2016/04/tips-tricks-live-coding.html)
[@carpentry;@rubin_effectiveness_2013;@haaranen_programming_2017;@wilson_teaching_2018].
While many learning outcomes focus on developing programming proficiency, some
lessons are centred around concepts (such as "Statistical Modelling" or
"Differential Equations"), during which we still use the live-coding approach.
This approach not only demonstrates the concepts in a step-by-step fashion but
also helps students practice writing code.
3. *Interwoven Exercises*: Coding exercises or discussion points are
interspersed throughout each lesson to assess and reinforce the concepts and
skills being taught. These exercises challenge the students and help build
confidence in the material and in their coding skills. They also help
instructors identify problem areas that should be further reinforced later in
the lesson or submodule.
4. *Summative Assignments*: Lesson specific assignments are used every two
lessons to test the competency of students to the lesson material and expected
skills to be gained, while a comprehensive final assignment is used to test the
students' ability to bring together all concepts learned throughout the learning
module.

Each of our submodules and individual lessons built on skills and concepts that
would ultimately allow students to complete a final open-ended analysis of real
open ecological data. We deliberately chose large and messy (e.g. missing
values) datasets for the students, reflecting the types of data that are being
increasingly generated across various disciplines. With this goal in mind, we
designed lessons to provide the building blocks to clean, manipulate, visualize,
and analyze any dataset the students may come across, both for the final project
and in their future research.

# Teaching Experience

For the first iteration of the course, our teaching team consisted of six
graduate students from diverse fields of research; we divided course topics
among each instructor to develop and deliver individual lessons and assignments
to the eight students. We reduced the number of instructors to four graduate
students for the second iteration and the number of students increased to 26. We
estimate four instructors could effectively teach the current iteration of the
course to around 40 students. We consider having instructors come from multiple
fields as a major strength and strongly recommend this practice for teaching
quantitative research methods and skills.

To maximize the learning experience, we prioritized in-class participation,
engagement, and hands-on experience. The main teaching techniques we used to
achieve this goal were participatory live-coding, exercises interwoven with
teaching, and project-based learning
[@sawyer_cambridge_2006;@strobel_when_2009;@markham_project_2011] where students
collaborated in teams on data analysis problems to mimic a real world scenario.

To ensure proper teaching assistance was available at all times, we adopted a
technique used successfully in workshops developed by The Carpentries
[@wilson-software-carpentry]. This technique involved having at least two
instructors present for each lesson, where one instructed and another acted as a
"helper". Students would signal for assistance by attaching colored sticky notes
to the back of their laptop monitor. This method avoided interrupting the lesson
flow when individual students needed assistance.

# Story of the project

While there are many excellent open source software packages available for
quantitative data analysis, the use of less capable tools (such as spreadsheet
software) is still prevalent among researchers, even though these drastically
reduce analytical reproducibility, power, and efficiency. This happens partly
due to lack of awareness, and partly because graduate students, many of whom
will be future researchers, often are not incentivized to learn new and better
tools, as they usually must use what their supervisor or colleagues use. Those
who do try to learn these modern tools often do so in isolation and without much
formal training available. These are major barriers to learning. To help break
down these barriers, we launched the graduate student group 
[University of Toronto Coders](https://uoftcoders.github.io/) where we run
peer-led learning sessions on using code for research through skill sharing,
co-working, and community building in a friendly and supportive environment.

After running many sessions and consistently receiving overwhelmingly positive
feedback on our content and teaching style, we sought to formally share our
experiences through the university curriculum. We designed a course on open,
reproducible data analysis, and contacted multiple departments that could be
interested in hosting this course. The Department of Ecology and Evolutionary
Biology at the University of Toronto agreed, and we ran a pilot of the course
with the title "Theoretical Ecology and Reproducible Quantitative Methods in R"
to fourth-year undergraduate students. We modelled the structure and portions of
the course content after the course ["Reproducible Quantitative
Methods"](https://cbahlai.github.io/rqm-template/), which was created by Dr.
Christie Bahlai. We extensively modified the lesson content to include expanded
material on data wrangling, visualization, reproducibility, collaborative
science, and additional theoretical ecology topics.

Following a successful pilot term, we modified our lesson material further again
to include more generally applicable statistical concepts and far fewer
theoretical ecological concepts. We also renamed the course to "Quantitative
Methods in R for Biology" [@rcourse] to reflect this change. On both occasions,
the course received excellent feedback from the students and the supervising
professors and has been incorporated into the long-term curriculum as a third
year level course.

# Contributions

LWJ, MB-F, LT, and LC conceptualized the course. JO lead course development. JO,
MB-F, LWJ, LC, ES, and LT designed and taught the first iteration of the course.
JSS, LC, MB-F, and ARH taught the second iteration of the course, with guest
lectures from SM and LT. Lesson development for second iteration: JO and ARH
(1-5), JSS (8, 9, 11), LC (6, 7, 10), MB-F (12, 13), LWJ (14), ARH and SM (15),
LT (16). LWJ, MB-F, JO, SM, LT, ARH, and JSS wrote the paper. LWJ, MB-F, ES, JO,
LT, JSS, and AH proofread and edited the final draft.

# References
