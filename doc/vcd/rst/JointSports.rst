.. container::

   =========== ===============
   JointSports R Documentation
   =========== ===============

   .. rubric:: Opinions About Joint Sports
      :name: opinions-about-joint-sports

   .. rubric:: Description
      :name: description

   Data from a Danish study in 1983 and 1985 about sports activities and
   the opinion about joint sports with the other gender among 16–19 year
   old high school students.

   .. rubric:: Usage
      :name: usage

   ::

      data("JointSports")

   .. rubric:: Format
      :name: format

   A data frame with 40 observations and 5 variables.

   Freq
      frequency.

   opinion
      factor indicating opinion about sports joint with the other gender
      (very good, good, indifferent, bad, very bad).

   year
      factor indicating year of study (1983, 1985).

   grade
      factor indicating school grade (1st, 3rd).

   gender
      factor indicating gender (Boy, Girl).

   .. rubric:: Source
      :name: source

   E. B. Andersen (1991), The Statistical Analysis of Categorical Data,
   page 210.

   .. rubric:: References
      :name: references

   E. B. Andersen (1991), *The Statistical Analysis of Categorical
   Data*. 2nd edition. Springer-Verlag, Berlin.

   .. rubric:: Examples
      :name: examples

   ::

      library(MASS)
      data("JointSports")
      tab <- xtabs(Freq ~ gender + opinion + grade + year, data = JointSports)
      doubledecker(opinion ~ gender + year + grade, data = tab)
      loglm(~ opinion* (gender + grade+ year) + gender*year*grade, data = tab)
