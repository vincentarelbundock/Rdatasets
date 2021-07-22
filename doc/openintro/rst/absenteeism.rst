=========== ===============
absenteeism R Documentation
=========== ===============

Absenteeism from school in New South Wales
------------------------------------------

Description
~~~~~~~~~~~

Researchers interested in the relationship between absenteeism from
school and certain demographic characteristics of children collected
data from 146 randomly sampled students in rural New South Wales,
Australia, in a particular school year.

Usage
~~~~~

::

   absenteeism

Format
~~~~~~

A data frame with 146 observations on the following 5 variables.

eth
   Ethnicity, representing Aboriginal (``A``) or not (``N``).

sex
   Gender.

age
   Age bucket.

lrn
   Learner status, with average learner (``AL``) and slow learner
   (``SL``).

days
   Number of days absent.

Source
~~~~~~

Venables WN, Ripley BD. 2002. Modern Applied Statistics with S. Fourth
Edition. New York: Springer.

Data can also be found in the R ``MASS`` package under the data set name
``quine``.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(absenteeism, aes(x = eth, y = days)) +
     geom_boxplot() +
     coord_flip()
