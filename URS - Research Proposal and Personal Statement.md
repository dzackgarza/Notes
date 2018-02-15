# URS Research Proposal

# Title: Improving the Accessibility of Homotopy and Homology Data

## Overview / Abstract

Homology is a relatively recent mathematical tool, developed in the early to mid 20th century to distinguish and classify mathematical spaces. It has proved to be a widely successful tool, spawning the study "homological algebra", an entirely new branch of Mathematics that generalizes these tools and theories to work in a variety of settings. 

One application is in the emerging field of data analysis, which uses these tools to detect gaps or "holes" in data sets - in 2008, this technique was applied to study a large image dataset, which was found to have characteristics related to a well-known and well-studied mathematical object, the Klein Bottle. Another paper applied this technique to discover underlying structures in the visual cortex in a group of primates that were previously thought to be random. Other applications include the study of fluids, time series data, signal processing, and electrodynamics.

While it is possible to compute homology (as well as its closely related cousin, homotopy) groups for many types of objects and spaces, this information currently is scattered throughout textbooks, unpublished notes, doctoral theses, and academic papers. Moreover, while the results are relatively easy to describe, computation of these groups often require specialized technique, and is the object of ongoing research.

Thus, the goal of this project is to assemble a list of commonly encountered mathematical spaces, to reach an understanding of what is currently known about them, and to provide a unified and easily accessible reference to their properties and what is known about their homology and homotopy groups.



# Description of Project

### Introduction

The field of Topology was built around the study of mathematical "spaces", things such as spheres and our 3-dimensional world, and it is within this subfield of Mathematics that this project will be centered. 

Perhaps the most central tool in this field is the idea of "homotopy" and the computation of "homotopy groups". For any space, one can compute these groups, and these can be used as a systematic way to study and distinguish different spaces. For example, if two spaces have different homotopy groups, then they are different spaces. Alternatively, if a space arises in some context and its homotopy groups match that of a known space, this is strong evidence that these spaces are potentially related or even the same.

One motivating theme in topology is the study of what are perhaps the simplest spaces: spheres of different dimensions. A 1-dimensional sphere is a circle, for example, while a 2-dimensional sphere would be the surface of an inflatable ball. Since this is a "space", one can compute its homotopy groups, and when these ideas were first introduced in the early 1990s, it was thought that these groups would be relatively simple to understand.

However, in the early 1930s, what is now called the "Hopf Fibration" was discovered, which showed the existence of "higher homotopy groups" of the sphere. Up until this point, only a small number of these computations had been carried out, all of which exhibited relatively simple behavior, so this came has a surprise. 

Since then, the computation of higher homotopy groups of the spheres and investigations of the complex behavior that occurs has been one of the central problems in Topology and a driving force behind the research and development of new tools and techniques. One of these tools is homology, as referenced in the introduction, which is a similar type of computation one can carry out for spaces that has become of central importance in its own right as well.

### Research Question / Goal of the Work

As such, the motivating goal of this work is to study what is currently known about the higher homotopy groups of spheres - great strides have been made over the past 90 years, but there is also still much that is unknown about these groups and many open questions. In the process, it will be necessary to examine a multitude of other closely-related spaces, as well as closely-related tools such as homology. 

The primary goal will then be to summarize what is known (and unknown) about these spaces, in terms of both homotopy and homology, to collect this information and make an easily accessible reference. This will involve creating either a publication-quality survey paper, or a small website hosted through the Math department with a web-based tool to search and display relevant information.

Further work will then be done to apply the techniques and tools discovered along  the way to any unknown homotopy or homology groups, potentially yielding new information about their associated spaces.

### Potential Significance

The significance of this project is two-fold: of primary significance is making this information available in a single place, in an easily accessible and searchable format. Fields outside Mathematics are increasingly finding themselves faced with these kinds of "spaces", and computer software is being made available that can algorithmically compute things such as homology. With this information in hand, however, it can still be quite a leap for researchers outside of Mathematics to compare information about their space with properties of spaces that are well-known to the Mathematical research community.

Of secondary significance is the fact that these objects and tools have become a cornerstone of modern Mathematics, and their properties have proved to be pivotal in many disparate fields of both pure and applied Mathematics. They are also the subject of current and active research - for example, a 2015 paper detailed the adaptation of several tools to compute a large number of previously unknown higher homotopy groups for spheres, not only yielding interesting patterns within these objects, but utilizing new techniques that might be adapted to make progress on other open problems.

### Preliminary Work and Methods

The preliminary work for this project is primarily being carried out during the 2017-2018 school year. I am currently in the middle of a year-long sequence of Algebraic Topology, which is the subject that lays out the mathematical framework in which these research questions are posed. I am additionally working with this professor through the Faculty Mentor Program throughout Winter and Spring quarters, where we are going much more in-depth into the material. In particular, we are studying a particular computational tool known as a "spectral sequence", which is a powerful and widely used computational framework that has been used with great success to study both homotopy and homology for a large variety of spaces. Thus the Summer project I am proposing would be a continuation of the work I am doing through this program, and would start by applying the tools and techniques I am currently learning to these particular spaces.

## Timeline

Over the course of 3 months, we hope to cover enough material for me to understand a number of relevant papers written in this area - this may end up being equivalent to the content that might be covered over the span of several advanced second-year graduate courses. Some relevant results appeared in papers from the 1950s and 60s, which may be approachable early in the project, while papers published after 1990 may require more reading and research into modern developments. A tentative timeline is as follows:

- 6/25

  - Set up regular meetings with advisor
  - Work out detailed research plan and schedule with advisor
  - Review Spring/Winter content: fibrations, fibre/vector bundles, classifying spaces, and spectral sequences (primarily reading and working problems)

- 7/2

  - Build a list of references and a reading plan with advisor
  - Work through details of seminal calculation with the Hopf fibration to show higher homotopy groups exist
  - Verify standard and known low-dimensional examples
  - Read and research. Potential topics:
    - Obstruction theory
    - Postnikov towers
    - Simplicial sets

- 7/9

  - Begin verifying known results about low dimensional homotopy groups of spheres using spectral sequences.
  - Produce small table of known homotopy groups of spheres, dimensions up to 3 and groups up to 5 should be approachable with current techniques
  - Read and research. Potential topics:
    - Spectra
    - K-theory
    - Extraordinary cohomology theories

- 7/16

  - Compute tables of homotopy and homology for projective spaces
  - Read and research. Potential topics
    - Differential topology
    - Morse theory

- 7/23

  - Begin looking at early papers in the field (1930s-1950)
  - Continue computing tables of homotopy and homology for projective spaces
  - Read and research. Potential Topics:
    - Stable homotopy
    - Handle theory
    - H-cobordism

- 7/30

  - Continue reading early papers
  - Compute tables of homotopy and homology for spaces of Lie Type
  - Read and research. Potential topics
    - 3 and 4 dimensional manifolds
    - The Poincare conjecture

- 8/6

  - Read newer papers (1950 - 1990)
  - Compute homotopy/homology tables for Lens spaces, Eilenberg-MacLane spaces (where possible, many are not known)
  - Read and research. Potential topics
    - Differential graded algebras
    - Rational homotopy theory

- 8/13

  - Begin reading recent papers (post 2000)
  - Compute homotopy/homology tables for Lens spaces, Eilenberg-MacLane spaces (where possible, many are not known)
  - Read and research. Potential topics
    - Derived categories

- 8/20

  - Begin collecting, summarizing, and organizing results
  - Compute homotopy/homology tables for Lens spaces, Eilenberg-MacLane spaces (where possible, many are not known)
  - Read and research. Potential topics
    - Model categories
    - Infinity algebras

- 8/27

  - Begin discussing project deliverables with advisor
  - Begin either:
    - Typesetting survey paper, or
    - Creating database and web tool to access information
  - Read and research. Potential topics
    - Homotopical algebra
    - Homotopical geometry

- 9/3

  - Begin typesetting preliminary results in Latex
    - Create figures, tables, bibliography, etc.
  - (If applicable) Work with Wilson Cheung in UCSD Math department to get permanent web page up to host web tool
  - Begin identifying potential publishing outlets: journals, conferences, etc.

- 9/10 (Last Week)

  - (If applicable) Finalize website, add any new data found
  - Finalize typesetting paper (for potential journal submission)
  - Finalize typesetting final report (for URS submission)

  ​

### References

- G. Carlsson, T. Ishkhanov, F. M´emoli, D. Ringach, G. Sapiro, "Topological analysis of population activity in visual cortex", 
  https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2924880/
- G. Carlsson, T. Ishkhanov, V. de Silva, and A. Zomorodian, “On the local behavior of spaces of natural images,” Intl. J. Comput. Vision, 76(1), (2008), 1–12.
  https://link.springer.com/article/10.1007/s11263-007-0056-x



## Personal Statement (600 Words)

I have been interested in this particular research area since first taking a Topology course here at UCSD during my first year, where I was introduced to the basics of the subject. I went on to take a second class and sit in on a graduate level course during my first year, and am now enrolled in the graduate Topology sequence and simultaneously working with the same professor during the FMP. 

This is an area I have quite enjoyed learning about for the past year or two, and I have taken many relevant classes as well as explored the field in my free time. As the president of our campus Math club, I have given a number of talks and workshops 

so I will be applying to graduate school later this year to continue studying it at a deeper level in a Ph.D. program. 

In Mathematics, I feel like it is quite difficult to get any research experience as an undergraduate at all, much less in an area you are actively interested in, so this program would be an amazing opportunity for me to prepare myself for graduate studies while learning even more about a topic I love.

I am the first person in my immediate family to really go through with a college education, so my current goal is to graduate and obtain my undergraduate degree in Mathematics. After that, my goal is to get into a good graduate program so that I may continue my studies and hopefully reach a level where I can make meaningful contributions to help advance the field. Ideally, I would then like to continue on to work as a research professor at a university, but would also enjoy a position teaching introductions to these topics to the next generation of mathematicians.

I am also a returning student, having left college in my early years in order to support myself and my family. I returned to school full-time at a junior college a few years ago, after which I transferred here to UCSD. Since transferring, I have worked part-time in order to support myself while attending school full-time. 

This, combined with the fact that I am slightly older than most other students, has put a slight damper in how much I have time I have been able to invest in forming relationships with professors and potentially getting involved in any undergraduate research. As such, this program would allow me to take some time to fully focus on research, which would do wonders for my preparedness for graduate school and really give me a chance to do significant work with my mentor. But perhaps most importantly, this would be an amazing opportunity for me to really experience a little bit of the life and career I am ultimately aiming for.

However, 