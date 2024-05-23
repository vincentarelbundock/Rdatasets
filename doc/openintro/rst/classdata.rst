.. container::

   .. container::

      ========= ===============
      classdata R Documentation
      ========= ===============

      .. rubric:: Simulated class data
         :name: simulated-class-data

      .. rubric:: Description
         :name: description

      This data is simulated and is meant to represent students scores
      from three different lectures who were all given the same exam.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         classdata

      .. rubric:: Format
         :name: format

      A data frame with 164 observations on the following 2 variables.

      m1
         Represents a first midterm score.

      lecture
         Three classes: ``a``, ``b``, and ``c``.

      .. rubric:: References
         :name: references

      OpenIntro Statistics, Chapter 8.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         anova(lm(m1 ~ lecture, classdata))
