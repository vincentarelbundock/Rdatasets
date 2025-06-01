.. container::

   .. container::

      ========== ===============
      ClaimsLong R Documentation
      ========== ===============

      .. rubric:: Claims Longitudinal
         :name: claims-longitudinal

      .. rubric:: Description
         :name: description

      This is a simulated data set, based on the car insurance data set
      used throughout the text. There are 40000 policies over 3 years,
      giving 120000 records.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ClaimsLong)

      .. rubric:: Format
         :name: format

      A data frame with 120000 observations on the following 6
      variables.

      ``policyID``
         number of policy, a numeric vector

      ``agecat``
         driver's age category: 1 (youngest), 2, 3, 4, 5, 6, a numeric
         vector

      ``valuecat``
         vehicle value, in categories 1,...,6. (Category 1 has been
         recoded as 9.), a numeric vector

      ``period``
         1, 2, 3, a numeric vector

      ``numclaims``
         number of claims, a numeric vector

      ``claim``
         a numeric vector

      .. rubric:: Details
         :name: details

      The dataset "Longitudinal Claims"

      .. rubric:: Source
         :name: source

      http://www.businessandeconomics.mq.edu.au/our_departments/Applied_Finance_and_Actuarial_Studies/

      research/books/GLMsforInsuranceData/data_sets

      .. rubric:: References
         :name: references

      De Jong P., Heller G.Z. (2008), Generalized linear models for
      insurance data, Cambridge University Press

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(ClaimsLong)
         ## maybe str(ClaimsLong) ; plot(ClaimsLong) ...
