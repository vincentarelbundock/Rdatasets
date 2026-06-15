========== ===============
salamander R Documentation
========== ===============

Mountain dusky salamander mating
--------------------------------

Description
~~~~~~~~~~~

S. Arnold and P. Verrell conducted an experiment at the University of
Chicago to study breeding behaviours of mountain dusky salamanders. This
mating data was used as an example in the "Generalized Linear Models"
textbook (McCullagh and Nelder 1989).

Usage
~~~~~

.. code:: R

   data("salamander")

Format
~~~~~~

A data frame with 360 observations on the following 8 variables.

``Season``
   represents the season ``Fall`` ``Summer`` of 1986.

``Experiment``
   experiment number ``1, 2, 3``.

``TypeM``
   representing the two types of male salamanders being studied. ``R``
   stands for rough butt, and ``W`` stands for white side.

``TypeF``
   similar to the above except for female salamanders.

``Cross``
   represents the cross between a female and male type.

   - ``RR`` = rough butt female crossed with rough butt male,

   - ``RW`` = rough butt female crossed with white side male,

   - ``WR`` = white side female crossed with rough butt male,

   - ``WW`` = white side female crossed with white side male.

``Male``
   identication number of the male salamander.

``Female``
   identification number of the male salamander.

``Mate``
   represents whether mating has occurred. ``1`` = yes, ``0`` = no.

Details
~~~~~~~

In this example, every variable is either binary or a factor. However,
most of the variables in this data set are treated like a numerical
variable (i.e., ``Experiment, Male, Female, Mate``), so we suggest
turning them into factor variables before use. As outlined in McCullagh
and Nelder (1989): This experiment, conducted by S. Arnold and P.
Verrell at the University of Chicago, investigated whether
geographically isolated populations of mountain dusky salamanders would
interbreed. The goal was to see the difference in mating frquencies
between the ``RW`` crosses compared to the ``WR`` crosses. Because each
salamander was involved in multiple mating trials with different
partners, the observations are not independent. Therefore, we use a
model (see the *examples* section) that conditions on the specific male
and female salamanders in the experiment.

Source
~~~~~~

(McCullagh and Nelder 1989)

References
~~~~~~~~~~

McCullagh P, Nelder JA (1989). *Generalized linear models*. Routledge.

Examples
~~~~~~~~

.. code:: R

   ## Making sure Male, Female, and CRoss are treated as factors
   salamander$Male <- factor(salamander$Male)
   salamander$Female <- factor(salamander$Female)
   salamander$Cross <- factor(salamander$Cross)
   ## Fitting the model described in 14.5.3 from McCullagh and Nelder
   sal_mod <- glmer(Mate ~ (1|Female) + (1 | Male) + Cross, data = salamander,
                    family = binomial(link = "logit"))
