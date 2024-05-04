.. container::

   .. container::

      ========== ===============
      schooldays R Documentation
      ========== ===============

      .. rubric:: Days not Spent at School
         :name: days-not-spent-at-school

      .. rubric:: Description
         :name: description

      Data from a sociological study, the number of days absent from
      school is the response variable.

      .. rubric:: Usage
         :name: usage

      ::

         data("schooldays")

      .. rubric:: Format
         :name: format

      A data frame with 154 observations on the following 5 variables.

      ``race``
         race of the child, a factor with levels ``aboriginal`` and
         ``non-aboriginal``.

      ``sex``
         the sex of the child, a factor with levels ``female`` and
         ``male``.

      ``school``
         the school type, a factor with levels ``F0`` (primary), ``F1``
         (first), ``F2`` (second) and ``F3`` (third form).

      ``learner``
         how good is the child in learning things, a factor with levels
         ``average`` and ``slow``.

      ``absent``
         number of days absent from school.

      .. rubric:: Details
         :name: details

      The data arise from a sociological study of Australian Aboriginal
      and white children reported by Quine (1975).

      In this study, children of both sexes from four age groups (final
      grade in primary schools and first, second and third form in
      secondary school) and from two cultural groups were used. The
      children in age group were classified as slow or average learners.
      The response variable was the number of days absent from school
      during the school year. (Children who had suffered a serious
      illness during the years were excluded.)

      .. rubric:: Source
         :name: source

      S. Quine (1975), Achievement Orientation of Aboriginal and White
      Adolescents. Doctoral Dissertation, Australian National
      University, Canberra.

      .. rubric:: Examples
         :name: examples

      ::

           data("schooldays", package = "HSAUR")
           plot.design(schooldays)
