.. container::

   ======== ===============
   Lottario R Documentation
   ======== ===============

   .. rubric:: Ontario Lottery Data
      :name: Lottario

   .. rubric:: Description
      :name: description

   The data frame ``Lottario`` is a summary of 122 weekly draws of an
   Ontario lottery, beginning in November, 1978. Each draw consists of 7
   numbered balls, drawn without replacement from an urn consisting of
   balls numbered from 1 through 39.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      Lottario

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Number
      the integers from 1 to 39, representing the numbered balls

   Frequency
      the number of occurrences of each numbered ball

   .. rubric:: Source
      :name: source

   The Ontario Lottery Corporation

   .. rubric:: References
      :name: references

   Bellhouse, D.R. (1982). Fair is fair: new rules for Canadian
   lotteries. Canadian Public Policy - Analyse de Politiques 8: 311-320.

   .. rubric:: Examples
      :name: examples

   .. code:: R

       
      order(Lottario$Frequency)[33:39]  # the 7 most frequently chosen numbers
