=============== ===============
spice_test_wide R Documentation
=============== ===============

Spice Test
----------

Description
~~~~~~~~~~~

Results of a knowledge test from Junior Bake Off (Series 2, Episode 14).

Usage
~~~~~

.. code:: R

   spice_test_wide

Format
~~~~~~

A data frame with 4 rows representing baker results from the spice-based
knowledge test and 7 variables:

baker
   A character string with a given name or nickname.

guess_1,guess_2,guess_3
   The different guesses (in order) for what the mystery spice was.

correct_1,correct_2,correct_3
   An integer whether the guess was correct (``1``) or wrong (``0``).

Examples
~~~~~~~~

.. code:: R

   if (require('tibble')) {
     spice_test_wide
    }
   head(spice_test_wide)
