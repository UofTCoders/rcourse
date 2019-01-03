Quantitative Methods in R for Biology
=========================================

Course in Ecology and Evolutionary Biology
------------------------------------------

[![Build Status](https://travis-ci.org/UofTCoders/rcourse.svg?branch=master)](https://travis-ci.org/UofTCoders/rcourse)
[![DOI](https://zenodo.org/badge/97400494.svg)](https://zenodo.org/badge/latestdoi/97400494)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Description

Quantitative Methods in R for Biology is a course aimed at undergraduates at a third year level or above. 
The course covers statistics and data analysis for ecology and reproducible quantitative methods in R. 

Statistical analysis, modelling, and data simulation are essential skills for ecologists and evolutionary biologists. 
Furthermore, ever larger datasets are quickly becoming the norm in a variety of scientific disciplines. 
This course is therefore designed to meet a growing demand for reproducible, openly accessible, 
analytically thorough, and well-documented science. Students will learn to develop ecological population models, 
analyze large datasets, and document their research using the R programming language. No prior programming experience is required.

For more detail on the course, check out the [syllabus](https://uoftcoders.github.io/rcourse/).

## Instructional Design

The lectures in this course are designed to be presented using a participatory live-coding approach.
This involves an instructor typing and running code in [RStudio](https://www.rstudio.com/) in front of the class, while the class follows
along using their own computers. Challenges are interspersed in the lesson material, allowing students to 
collaboratively work on smaller coding problems for a few minutes. All lesson materials are provided ahead
of time on the course website for students to refer to during lectures.

The bulk of the course's assessment structure involves weekly assignments. These assignments
are primarily code-based and are designed to also be completed in RStudio using the R Markdown format.

At the end of the course, students undertake a group project, wherein they attempt to address a scientific
question by applying techniques learned over the course to open ecological data. At the end of the semester,
groups present their work in a conference-style presentation, and submit a report in the style of a scientific paper. 

## Lecture Content

The course's lesson material is broadly subdivided into three main topics:

1. Introductory R (Lectures 1-5)
    * Introduces students to the R programming language, with a focus on 
      data wrangling and visualization.
2. Statistical analysis (Lectures 6-12)
    * Introduces concepts such as regression, principal component analysis, statistical models, and numerical models.
3. Reproducible science (Lectures 13-15)
    * Prepares students for project work period and introduces methods for reproducible science (GitHub, R Markdown).

If you are interested in contributing to the course material, please refer to the guidelines in [CONTRIBUTING.md](https://github.com/UofTCoders/rcourse/blob/master/CONTRIBUTING.md). 

If you are interested in using or modifying this content and repository for your 
own course, you'll need to make a change to the Travis CI setup so you can host 
the website on your own account. Check out the documentation on the [R Markdown
online book](https://bookdown.org/yihui/bookdown/github.html). Here is a brief 
excerpt taken from the book:

1. Create a [personal access token](http://bit.ly/2cEBYWB) for your account on GitHub (make sure to enable the "repo" scope so that using this token will enable writing to your GitHub repos).
1. Encrypt it in the environment variable `GITHUB_PAT` via command line `travis encrypt` and store it in `.travis.yml`, 
e.g `travis encrypt GITHUB_PAT=TOKEN`. If you do not know how to install or use the Travis command-line tool, simply save this environment variable via https://travis-ci.org/user/repo/settings where `user` is your GitHub ID, and `repo` is the name of the repository.
1. You can clone this `gh-pages` branch on Travis using your GitHub token, add the HTML output files from R Markdown (do not forget to add figures and CSS style files as well), and push to the remote repository.

## Related Publications

Santangelo JS (2019). Data simulation and randomization tests. NEON Faculty Mentoring Network, QUBES Educational Resources. doi:10.25334/Q4CT7P. [Available online.](https://qubeshub.org/qubesresources/publications/996/1).

Bonsma-Fisher M, Hasan AR (2018). Working with plant phenology data and fitting a nonlinear model using least squares in R. NEON Faculty Mentoring Network, QUBES Educational Resources. doi:10.25334/Q4Q73D. [Available online](https://qubeshub.org/qubesresources/publications/978/1).

## Acknowledgements

We thank Dr. Christie Bahlai, Dr. Asher Cutter, Dr. Martin Krkosek, and the Department of Ecology
and Evolutionary Biology at the University of Toronto for helping make this course a reality.

We also thank Dr. Megan Jones and Dr. Kusum Naithani for their support and guidance, particularly
around use of the NEON Ecological Observatory data. 
