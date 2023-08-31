.. container::

   =========== ===============
   Prostitutes R Documentation
   =========== ===============

   .. rubric:: Parent-Duchatelet's time-series data on the number of
      prostitutes in Paris
      :name: Prostitutes

   .. rubric:: Description
      :name: description

   A table indicating month by month, for the years 1812-1854, the
   number of prostitutes on the registers of the administration of the
   city of Paris.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Prostitutes)

   .. rubric:: Format
      :name: format

   A data frame with 516 observations on the following 5 variables.

   ``Year``
      a numeric vector

   ``month``
      a factor with levels ``Apr`` ``Aug`` ``Dec`` ``Feb`` ``Jan``
      ``Jul`` ``Jun`` ``Mar`` ``May`` ``Nov`` ``Oct`` ``Sep``

   ``count``
      a numeric vector: number of prostitutes

   ``mon``
      a numeric vector: numeric month

   ``date``
      a Date

   .. rubric:: Details
      :name: details

   The data table was digitally scanned with OCR, and errors were
   corrected by comparing the yearly totals recorded in the table to the
   row sums of the scanned data.

   .. rubric:: Source
      :name: source

   Parent-Duchatelet, A. (1857), *De la prostitution dans la ville de
   Paris*, 3rd ed, p. 32, 36

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Prostitutes)
      ## maybe str(Prostitutes) ; plot(Prostitutes) ...
