.. container::

   ====== ===============
   Chem97 R Documentation
   ====== ===============

   .. rubric:: Scores on A-level Chemistry in 1997
      :name: Chem97

   .. rubric:: Description
      :name: description

   Scores on the 1997 A-level Chemistry examination in Britain. Students
   are grouped into schools within local education authories. In
   addition some demographic and pre-test information is provided.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Chem97)

   .. rubric:: Format
      :name: format

   A data frame with 31022 observations on the following 8 variables.

   lea
      Local Education Authority - a factor

   school
      School identifier - a factor

   student
      Student identifier - a factor

   score
      Point score on A-level Chemistry in 1997

   gender
      Student's gender

   age
      Age in month, centred at 222 months or 18.5 years

   gcsescore
      Average GCSE score of individual.

   gcsecnt
      Average GCSE score of individual, centered at mean.

   .. rubric:: Details
      :name: details

   This data set is relatively large with 31,022 individuals in 2,280
   schools. Note that while this is used, illustratively, to fit Normal
   response models, the distribution of the response is not well
   described by a Normal distribution.

   .. rubric:: Source
      :name: source

   http://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

   .. rubric:: References
      :name: references

   Yang, M., Fielding, A. and Goldstein, H. (2002). Multilevel ordinal
   models for examination grades (submitted to *Statistical Modelling*).

   .. rubric:: Examples
      :name: examples

   .. code:: R

      str(Chem97)
      summary(Chem97)
      (fm1 <- lmer(score ~ (1|school) + (1|lea), Chem97))
      (fm2 <- lmer(score ~ gcsecnt + (1|school) + (1|lea), Chem97))
