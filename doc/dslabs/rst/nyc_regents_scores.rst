================== ===============
nyc_regents_scores R Documentation
================== ===============

NYC Regents exams scores 2010
-----------------------------

Description
~~~~~~~~~~~

Distribution of scores for New York City Regents algebra, global
history, biology, English, and U.S. history exams. These data were used
to make `this New York Times
plot <http://graphics8.nytimes.com/images/2011/02/19/nyregion/19schoolsch/19schoolsch-popup.gif>`__.

Usage
~~~~~

.. code:: R

   nyc_regents_scores

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- score. Test score from 0 to 100.

- integrated_algebra. Score frequency on Algebra exam.

- global_history. Score frequency on global history exam.

- living_environment. Score frequency on biology exam.

- english. Score frequency on English exam.

- us_history. Score frequency on U.S. history exam.

Source
~~~~~~

New York City Department of Education via Amanda Cox.

Examples
~~~~~~~~

.. code:: R

   print(nyc_regents_scores)
