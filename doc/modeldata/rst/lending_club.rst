.. container::

   ============ ===============
   lending_club R Documentation
   ============ ===============

   .. rubric:: Loan data
      :name: lending_club

   .. rubric:: Description
      :name: description

   Loan data

   .. rubric:: Details
      :name: details

   These data were downloaded from the Lending Club access site (see
   below) and are from the first quarter of 2016. A subset of the rows
   and variables are included here. The outcome is in the variable
   ``Class`` and is either "good" (meaning that the loan was fully paid
   back or currently on-time) or "bad" (charged off, defaulted, of
   21-120 days late). A data dictionary can be found on the source
   website.

   .. rubric:: Value
      :name: value

   ================ ============
   ``lending_club`` a data frame
   ================ ============

   .. rubric:: Source
      :name: source

   Lending Club Statistics
   https://www.lendingclub.com/info/download-data.action

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(lending_club)
      str(lending_club)
