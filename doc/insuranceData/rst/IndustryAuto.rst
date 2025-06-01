.. container::

   .. container::

      ============ ===============
      IndustryAuto R Documentation
      ============ ===============

      .. rubric:: Auto Industry
         :name: auto-industry

      .. rubric:: Description
         :name: description

      The data represent industry aggregates for private passenger auto
      liability\\/medical coverages from year 2004, in millions of
      dollars. They are based on insurance company annual statements,
      specifically, Schedule P, Part 3B. The elements of the triangle
      represent cumulative net payments, including defense and cost
      containment expenses.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(IndustryAuto)

      .. rubric:: Format
         :name: format

      A data frame with 55 observations on the following 3 variables.

      ``Incurral.Year``
         The year in which a claim has been incurred, a numeric vector

      ``Development.Year``
         The number of years from incurral to the time when the payment
         is made, a numeric vector

      ``Claim``
         Cumulative net payments, including defense and cost containment
         expenses, a numeric vector

      .. rubric:: Details
         :name: details

      http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/

      DataDescriptions.pdf

      .. rubric:: Source
         :name: source

      http://instruction.bus.wisc.edu/jfrees/jfreesbooks/Regression%20Modeling/BookWebDec2010/data.html

      .. rubric:: References
         :name: references

      Frees E.W. (2010), Regression Modeling with Actuarial and
      Financial Applications, Cambridge University Press.

      Wacek M.G. (2007), A Test of Clinical Judgment vs. Statistical
      Prediction in Loss Reserving for Commercial Auto Liability, in:
      Casualty Actuarial Society Forum, p. 371-404.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(IndustryAuto)
         ## maybe str(IndustryAuto) ; plot(IndustryAuto) ...
