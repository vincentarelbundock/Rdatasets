.. container::

   .. container::

      ============ ===============
      expendshares R Documentation
      ============ ===============

      .. rubric:: expendshares
         :name: expendshares

      .. rubric:: Description
         :name: description

      Wooldridge Source: Blundell, R., A. Duncan, and K. Pendakur
      (1998), “Semiparametric Estimation and Consumer Demand,” Journal
      of Applied Econometrics 13, 435-461. I obtained these data from
      the Journal of Applied Econometrics data archive at
      http://qed.econ.queensu.ca/jae/. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('expendshares')

      .. rubric:: Format
         :name: format

      A data.frame with 1519 observations on 13 variables:

      -  **sfood:** share of food expenditures (out of total)

      -  **sfuel:** share of fuel expenditures

      -  **sclothes:** share of clothing expenditures

      -  **salcohol:** share of alcohol expenditures

      -  **stransport:** share of transportation expenditures

      -  **sother:** share of other expenditures

      -  **totexpend:** total expenditure, British pounds per week

      -  **income:** family income, British pounds per week

      -  **age:** age of household head

      -  **kids:** number of children: 1 or 2

      -  **ltotexpend:** log(totexpend)

      -  **lincome:** log(income)

      -  **agesq:** age^2

      .. rubric:: Notes
         :name: notes

      The dependent variables in this data set – the expenditure shares
      – are necessarily bounded between zero and one. The linear model
      is at best an approximation, but the usual IV estimator likely
      gives good estimates of the average partial effects.

      Used in Text: pages 581-582

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(expendshares)
