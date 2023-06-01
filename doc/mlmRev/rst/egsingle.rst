.. container::

   ======== ===============
   egsingle R Documentation
   ======== ===============

   .. rubric:: US Sustaining Effects study
      :name: egsingle

   .. rubric:: Description
      :name: description

   A subset of the mathematics scores from the U.S. Sustaining Effects
   Study. The subset consists of information on 1721 students from 60
   schools

   .. rubric:: Usage
      :name: usage

   ::

      data(egsingle)

   .. rubric:: Format
      :name: format

   A data frame with 7230 observations on the following 12 variables.

   schoolid
      a factor of school identifiers

   childid
      a factor of student identifiers

   year
      a numeric vector indicating the year of the test

   grade
      a numeric vector indicating the student's grade

   math
      a numeric vector of test scores on the IRT scale score metric

   retained
      a factor with levels ``0`` ``1`` indicating if the student has
      been retained in a grade.

   female
      a factor with levels ``Female`` ``Male`` indicating the student's
      sex

   black
      a factor with levels ``0`` ``1`` indicating if the student is
      Black

   hispanic
      a factor with levels ``0`` ``1`` indicating if the student is
      Hispanic

   size
      a numeric vector indicating the number of students enrolled in the
      school

   lowinc
      a numeric vector giving the percentage of low-income students in
      the school

   mobility
      a numeric vector

   .. rubric:: Source
      :name: source

   These data are distributed with the HLM software package (Bryk,
   Raudenbush and Congdon, 1996). Conversion to the R format is
   described in Doran and Lockwood (2004).

   .. rubric:: References
      :name: references

   Doran, Harold C. and Lockwood, J.R. (2004), *Fitting value-added
   models in R*, (submitted).

   .. rubric:: Examples
      :name: examples

   ::

      str(egsingle)
      (fm1 <- lmer(math~year*size+female+(1|childid)+(1|schoolid), egsingle))
