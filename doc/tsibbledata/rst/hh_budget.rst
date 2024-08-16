.. container::

   .. container::

      ========= ===============
      hh_budget R Documentation
      ========= ===============

      .. rubric:: Household budget characteristics
         :name: household-budget-characteristics

      .. rubric:: Description
         :name: description

      Annual indicators of household budgets for Australia, Japan,
      Canada and USA from 1995-2016.

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``.

      .. rubric:: Details
         :name: details

      ``hh_budget`` is an annual ``tsibble`` with six values:

      ============= =======================================================
      Debt:         Debt as a percentage of net disposable income.
      DI:           Annual growth rate of disposable income.
      Expenditure:  Annual growth rate of expenditure.
      Savings:      Savings as a percentage of household disposable income.
      Wealth:       Wealth as a percentage of net disposable income.
      Unemployment: Percentage of unemployed in the labour force.
      \             
      ============= =======================================================

      Each country is uniquely identified by one key:

      ======== ==========================
      Country: The country of the series.
      \        
      ======== ==========================

      .. rubric:: Source
         :name: source

      The Organisation for Economic Co-operation and Development
      (https://data.oecd.org/)

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         hh_budget
