================== ===============
thanksgiving_spend R Documentation
================== ===============

Thanksgiving spending, simulated based on Gallup poll.
------------------------------------------------------

Description
~~~~~~~~~~~

This entry gives simulated spending data for Americans during
Thanksgiving in 2009 based on findings of a Gallup poll.

Usage
~~~~~

::

   thanksgiving_spend

Format
~~~~~~

A data frame with 436 observations on the following 1 variable.

spending
   Amount of spending, in US dollars.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(thanksgiving_spend, aes(x = spending)) +
     geom_histogram(binwidth = 20)

