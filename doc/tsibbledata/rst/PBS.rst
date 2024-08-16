.. container::

   .. container::

      === ===============
      PBS R Documentation
      === ===============

      .. rubric:: Monthly Medicare Australia prescription data
         :name: monthly-medicare-australia-prescription-data

      .. rubric:: Description
         :name: description

      ``PBS`` is a monthly ``tsibble`` with two values:

      ======== ===========================
      Scripts: Total number of scripts
      Cost:    Cost of the scripts in $AUD
      \        
      ======== ===========================

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      The data is disaggregated using four keys:

      +-------------+-------------------------------------------------------+
      | Concession: | Concessional scripts are given to pensioners,         |
      |             | unemployed, dependents, and other card holders        |
      +-------------+-------------------------------------------------------+
      | Type:       | Co-payments are made until an individual's script     |
      |             | expenditure hits a threshold ($290.00 for concession, |
      |             | $1141.80 otherwise). Safety net subsidies are         |
      |             | provided to individuals exceeding this amount.        |
      +-------------+-------------------------------------------------------+
      | ATC1:       | Anatomical Therapeutic Chemical index (level 1)       |
      +-------------+-------------------------------------------------------+
      | ATC2:       | Anatomical Therapeutic Chemical index (level 2)       |
      +-------------+-------------------------------------------------------+
      |             |                                                       |
      +-------------+-------------------------------------------------------+

      .. rubric:: Source
         :name: source

      Medicare Australia

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         PBS
