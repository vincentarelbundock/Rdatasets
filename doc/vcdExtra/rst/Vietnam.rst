.. container::

   ======= ===============
   Vietnam R Documentation
   ======= ===============

   .. rubric:: Student Opinion about the Vietnam War
      :name: Vietnam

   .. rubric:: Description
      :name: description

   A survey of student opinion on the Vietnam War was taken at the
   University of North Carolina at Chapel Hill in May 1967 and published
   in the student newspaper. Students were asked to fill in ballot
   papers stating which policy out of A,B,C or D they supported.
   Responses were cross-classified by gender/year.

   The response categories were:

   ``A``
      Defeat North Vietnam by widespread bombing and land invasion

   ``B``
      Maintain the present policy

   ``C``
      De-escalate military activity, stop bombing and begin negotiations

   ``D``
      Withdraw military forces Immediately

   .. rubric:: Usage
      :name: usage

   ::

      data(Vietnam)

   .. rubric:: Format
      :name: format

   A frequency data frame with 40 observations representing a 2 x 5 x 4
   contingency table on the following 4 variables.

   ``sex``
      a factor with levels ``Female`` ``Male``

   ``year``
      year of study, an ordered factor with levels ``Freshmen``,
      ``Sophomore``, ``Junior``, ``Senior``, ``Grad student``

   ``response``
      a factor with levels ``A`` ``B`` ``C`` ``D``

   ``Freq``
      cell frequency, a numeric vector

   .. rubric:: Details
      :name: details

   For some analyses, it is useful to treat ``year`` as numeric, and
   possibly assign grad students a value ``year=7``.

   .. rubric:: Source
      :name: source

   Aitken, M. etal, 1989, *Statistical Modelling in GLIM*

   .. rubric:: References
      :name: references

   Friendly, M. (2000), *Visualizing Categorical Data*, SAS Institute,
   Cary, NC, Example 7.9.

   .. rubric:: Examples
      :name: examples

   ::

      data(Vietnam)
      ## maybe str(Vietnam) ; plot(Vietnam) ...
