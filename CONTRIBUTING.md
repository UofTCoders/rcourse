# Contributing

Quantitative Methods in R for Biology is an open-source course,
aimed at a third- to fourth-year undergraduate level. 

## How to Contribute

Anyone can contribute to the course repository via [pull requests][pull-requests].

We use [GitHub flow][github-flow] to manage changes:

1. Create a [fork][fork-explanation] of this repository, and [clone][clone-explanation] it to your local computer.
2. In your local copy of this repository, create a new [branch][branch-explanation].
3. Commit your changes to that branch.
4. Push the edits on that branch to your fork on GitHub.
5. Submit a pull request to the master repository (`UofTCoders/rcourse`).
6. Your pull request will trigger a [Travis][travis-website] build (see below for details).
7. If you receive feedback on your pull request, or encounter errors in the Travis build, 
make further commits to the new branch on your fork. These will automatically be added to 
your pull request. 

You may wish to look at [How to Contribute to an Open Source Project on GitHub][contribute]
for more detailed instructions. The [GitHub Glossary][glossary] is also a useful resource that explains
Git-related terminology. 

## Continuous Integration with Travis

We use [Travis CI][travis-website] to test all materials in the course repo. Any changes
in the form of a pull request will trigger a Travis build, where 
Travis will attempt to test the code in the repo,
[knitting][knitr-explanation] all lesson materials in the process. 
Any errors will cause the Travis build to fail.

Pull requests can only be merged into the repo with a passing Travis build;
this is to ensure that all course material is functional. If you submit a pull
request that does not pass a Travis build, a traceback to the error can be found 
on the link to that pull request's respective build. 

More on the practice of continuous integration can be found on [Travis CI's website][ci-explanation]. 

## Format

We follow a consistent format across all course materials.

### Lessons

1. All lesson material is in R Markdown (`.Rmd`) format.

2. All lessons begin with a Lesson Preamble, subdivided into
'Learning objectives' and a 'Lesson outline'. The outline should
also list approximate time requirements for each segment. 

3. Lessons include a mix of code chunks and text, organized using Markdown headers.

4. Students should be able to follow the contents of the lesson from the text alone;
i.e. the file should contain _all_ conceptual explanations.

### Assignments

1. All assignments are in R Markdown (`.Rmd`) format.

2. Assignment files contain a numbered list of questions and are comparatively light on code.
They are designed such that students fill in answers by adding in code chunks of their own.

3. Code chunks in assignments should mostly be limited to loading required packages,
downloading required data, or data cleaning if necessary. 


[branch-explanation]: https://help.github.com/articles/about-branches/
[ci-explanation]: https://docs.travis-ci.com/user/for-beginners/
[clone-explanation]: https://help.github.com/articles/cloning-a-repository/
[contribute]: https://egghead.io/courses/how-to-contribute-to-an-open-source-project-on-github
[fork-explanation]: https://help.github.com/articles/fork-a-repo/
[github-flow]: https://guides.github.com/introduction/flow/
[glossary]: https://help.github.com/articles/github-glossary/
[knitr-explanation]: https://rmarkdown.rstudio.com/authoring_quick_tour.html
[pull-requests]: https://help.github.com/articles/about-pull-requests/
[travis-website]: https://travis-ci.org/
