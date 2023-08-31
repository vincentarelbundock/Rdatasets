.. container::

   ======== ===============
   ScotsSec R Documentation
   ======== ===============

   .. rubric:: Scottish secondary school scores
      :name: ScotsSec

   .. rubric:: Description
      :name: description

   Scores attained by 3435 Scottish secondary school students on a
   standardized test taken at age 16. Both the primary school and the
   secondary school that the student attended have been recorded.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(ScotsSec)

   .. rubric:: Format
      :name: format

   A data frame with 3435 observations on the following 6 variables.

   verbal
      The verbal reasoning score on a test taken by the students on
      entry to secondary school.

   attain
      The score attained on the standardized test taken at age 16.

   primary
      A factor indicating the primary school that the student attended.

   sex
      A factor with levels ``M`` and ``F``

   social
      The student's social class on a numeric scale from low to high
      social class.

   second
      A factor indicating the secondary school that the student
      attended.

   .. rubric:: Details
      :name: details

   These data are an example of cross-classified grouping factors.

   .. rubric:: Source
      :name: source

   http://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

   .. rubric:: References
      :name: references

   Paterson, L. (1991). Socio economic status and educational
   attainment: a multidimensional and multilevel study. *Evaluation and
   Research in Education* **5**: 97-121.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      str(ScotsSec)
