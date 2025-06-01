.. container::

   .. container::

      ======== ===============
      incpanel R Documentation
      ======== ===============

      .. rubric:: Hourly wages
         :name: hourly-wages

      .. rubric:: Description
         :name: description

      Data from the Michigan Panel Survey of Income Dynamics, Individual
      Level Final Release 1993. Sample of 4856 women, extracted by
      Cameron and Trivedi (2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         incpanel

      .. rubric:: Format
         :name: format

      A data frame with 4856 observations and 9 variables:

      intnum
         interview number 1968

      persnum
         person number

      age
         age of individual in 1993

      educatn
         highest grade/year of school completed 1993

      earnings
         total labor income of individual received in 1992, dollars

      hours
         total annual work hours in 1992

      sex
         sex of individual,= 2 if female

      kids
         total number of children born to this individual

      married
         last known marital status: 1 = married, 2 = never married, 3 =
         widowed, 4 = divorced, 5 = separated, 8 = NA, 9 = no histories
         85-93

      .. rubric:: Section in Text
         :name: section-in-text

      9.2.1 Nonparametric density estimation, pp. 295 9.2.2
      Nonparametric Regression, pp. 297

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      Michigan Panel Study of Income Dynamics (PSID),
      https://psidonline.isr.umich.edu/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(incpanel)
