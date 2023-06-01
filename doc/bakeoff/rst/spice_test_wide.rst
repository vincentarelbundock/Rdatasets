.. container::

   =============== ===============
   spice_test_wide R Documentation
   =============== ===============

   .. rubric:: Spice Test
      :name: spice_test_wide

   .. rubric:: Description
      :name: description

   Results of a knowledge test from Junior Bake Off (Series 2, Episode
   14).

   .. rubric:: Usage
      :name: usage

   ::

      spice_test_wide

   .. rubric:: Format
      :name: format

   A data frame with 4 rows representing baker results from the
   spice-based knowledge test and 7 variables:

   baker
      A character string with a given name or nickname.

   guess_1,guess_2,guess_3
      The different guesses (in order) for what the mystery spice was.

   correct_1,correct_2,correct_3
      An integer whether the guess was correct (``1``) or wrong (``0``).

   .. rubric:: Examples
      :name: examples

   ::

      if (require('tibble')) {
        spice_test_wide
       }
      head(spice_test_wide)
