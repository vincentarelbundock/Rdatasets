.. container::

   .. container::

      ======== ===============
      wa_churn R Documentation
      ======== ===============

      .. rubric:: Watson churn data
         :name: watson-churn-data

      .. rubric:: Description
         :name: description

      Watson churn data

      .. rubric:: Details
         :name: details

      These data were downloaded from the IBM Watson site (see below) in
      September 2018. The data contain a factor for whether a customer
      churned or not. Alternatively, the ``tenure`` column presumably
      contains information on how long the customer has had an account.
      A survival analysis can be done on this column using the ``churn``
      outcome as the censoring information. A data dictionary can be
      found on the source website.

      .. rubric:: Value
         :name: value

      ============ ============
      ``wa_churn`` a data frame
      ============ ============

      .. rubric:: Source
         :name: source

      IBM Watson Analytics https://ibm.co/2sOvyvy

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(wa_churn)
         str(wa_churn)
