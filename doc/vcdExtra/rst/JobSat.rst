.. container::

   ====== ===============
   JobSat R Documentation
   ====== ===============

   .. rubric:: Cross-classification of job satisfaction by income
      :name: JobSat

   .. rubric:: Description
      :name: description

   This data set is a contingency table of job satisfaction by income
   for a small sample of black males from the 1996 General Social
   Survey, as used by Agresti (2002) for an example.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(JobSat)

   .. rubric:: Format
      :name: format

   A 4 x 4 contingency table of ``income`` by ``satisfaction``, with the
   following structure:

   ::

       table [1:4, 1:4] 1 2 1 0 3 3 6 1 10 10 ...
       - attr(*, "dimnames")=List of 2
        ..$ income      : chr [1:4] "< 15k" "15-25k" "25-40k" "> 40k"
        ..$ satisfaction: chr [1:4] "VeryD" "LittleD" "ModerateS" "VeryS"

   .. rubric:: Details
      :name: details

   Both ``income`` and ``satisfaction`` are ordinal variables, and are
   so ordered in the table. Measures of association, visualizations, and
   models should take ordinality into account.

   .. rubric:: Source
      :name: source

   Agresti, A. Categorical Data Analysis John Wiley & Sons, 2002, Table
   2.8, p. 57.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(JobSat)
      assocstats(JobSat)
      GKgamma(JobSat)
