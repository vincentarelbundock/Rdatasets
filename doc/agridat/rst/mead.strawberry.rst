=============== ===============
mead.strawberry R Documentation
=============== ===============

RCB experiment of strawberry
----------------------------

Description
~~~~~~~~~~~

RCB experiment of strawberry

Format
~~~~~~

A data frame with 32 observations on the following 5 variables.

``row``
   row

``col``
   column

``block``
   block, 4 levels

``gen``
   genotype, 8 levels

``yield``
   yield, pounds

Details
~~~~~~~

A hedge along the right side (column 8) caused shading and lower yields.

R. Mead said (in a discussion of the Besag & Higdon paper), "the blocks
defined (as given to me by the experimenter) are the entire horizontal
rows...the design of the trial is actually (and unrecognized by me also)
a checker-board of eight half-blocks with two groups of split-plot
varieties".

The two sub-groups of genotypes are G, V, R1, F and Re, M, E, P.

Source
~~~~~~

Unknown, but prior to 1968 according to Besag. Probably via R. Mead.

References
~~~~~~~~~~

R. Mead, 1990, *The Design of Experiments*.

Julian Besag and D Higdon, 1999. Bayesian Analysis of Agricultural Field
Experiments, *Journal of the Royal Statistical Society: Series B
(Statistical Methodology)*,61, 691–746. Table 4.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(mead.strawberry)
   dat <- mead.strawberry
   dat$sub <- ifelse(is.element(dat$gen, c('G', 'V', 'R1', 'F')),
                 "S1","S2")

   libs(desplot)
   desplot(dat, yield~col*row,
           text=gen, cex=1, out1=block, out2=sub, # unknown aspect
           main="mead.strawberry")


   ## End(Not run)
