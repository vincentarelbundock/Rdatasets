.. container::

   .. container::

      ==== ===============
      star R Documentation
      ==== ===============

      .. rubric:: Student Teacher Achievement Ratio (STAR) project data
         :name: student-teacher-achievement-ratio-star-project-data

      .. rubric:: Description
         :name: description

      Data from Tennessee's Student Teacher Achievement Ratio (STAR)
      project which was a large-scale, four-year study of the effect of
      reduced class size.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(star)

      .. rubric:: Format
         :name: format

      A data frame with 26796 observations on the following 18
      variables.

      ``id``
         a factor - student id number

      ``sch``
         a factor - school id number

      ``gr``
         grade - an ordered factor with levels ``K`` < ``1`` < ``2`` <
         ``3``

      ``cltype``
         class type - a factor with levels ``small``, ``reg`` and
         ``reg+A``. The last level indicates a regular class size with a
         teachers aide.

      ``hdeg``
         highest degree obtained by the teacher - an ordered factor with
         levels ``ASSOC`` < ``BS/BA`` < ``MS/MA/MEd`` < ``MA+`` <
         ``Ed.S`` < ``Ed.D/Ph.D``

      ``clad``
         career ladder position of the teacher - a factor with levels
         ``NOT`` ``APPR`` ``PROB`` ``PEND`` ``1`` ``2`` ``3``

      ``exp``
         a numeric vector - the total number of years of experience of
         the teacher

      ``trace``
         teacher's race - a factor with levels ``W``, ``B``, ``A``,
         ``H``, ``I`` and ``O`` representing white, black, Asian,
         Hispanic, Indian (Native American) and other

      ``read``
         the student's total reading scaled score

      ``math``
         the student's total math scaled score

      ``ses``
         socioeconomic status - a factor with levels ``F`` and ``N``
         representing eligible for free lunches or not eligible

      ``schtype``
         school type - a factor with levels ``inner``, ``suburb``,
         ``rural`` and ``urban``

      ``sx``
         student's sex - a factor with levels ``M`` ``F``

      ``eth``
         student's ethnicity - a factor with the same levels as
         ``trace``

      ``birthq``
         student's birth quarter - an ordered factor with levels
         ``1977:1`` < ... < ``1982:2``

      ``birthy``
         student's birth year - an ordered factor with levels
         ``1977:1982``

      ``yrs``
         number of years of schooling for the student - a numeric
         version of the grade ``gr`` with Kindergarten represented as 0.
         This variable was generated from ``gr`` and does not allow for
         a student being retained.

      ``tch``
         a factor - teacher id number

      .. rubric:: Details
         :name: details

      Details of the original data source and the process of conversion
      to this representation are given in the vignette.

      .. rubric:: Source
         :name: source

      http://www.heros-inc.org/data.htm

      .. rubric:: Examples
         :name: examples

      .. code:: R

         str(star)
