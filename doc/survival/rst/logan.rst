.. container::

   ===== ===============
   logan R Documentation
   ===== ===============

   .. rubric:: Data from the 1972-78 GSS data used by Logan
      :name: logan

   .. rubric:: Description
      :name: description

   Intergenerational occupational mobility data with covariates.

   .. rubric:: Usage
      :name: usage

   ::

      logan
      data(logan, package="survival")

   .. rubric:: Format
      :name: format

   A data frame with 838 observations on the following 4 variables.

   occupation
      subject's occupation, a factor with levels ``farm``,
      ``operatives``, ``craftsmen``, ``sales``, and ``professional``

   focc
      father's occupation

   education
      total years of schooling, 0 to 20

   race
      levels of ``non-black`` and ``black``

   .. rubric:: Source
      :name: source

   General Social Survey data, see the web site for detailed information
   on the variables. https://gss.norc.org/.

   .. rubric:: References
      :name: references

   Logan, John A. (1983). A Multivariate Model for Mobility Tables.
   American Journal of Sociology 89: 324-349.
