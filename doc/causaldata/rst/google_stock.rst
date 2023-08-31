.. container::

   ============ ===============
   google_stock R Documentation
   ============ ===============

   .. rubric:: Google Stock Data
      :name: google_stock

   .. rubric:: Description
      :name: description

   The ``google_stock`` data contains data on daily stock returns for
   Google and the S&P 500 for May through Augut 2015, centering around
   the August 10, 2015 announcement that Google would reorganize under
   parent company Alphabet.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      google_stock

   .. rubric:: Format
      :name: format

   A data frame with 84 rows and 3 variables

   Date
      The date

   Google_Return
      Daily GOOG Stock Return (1 = 100 percent daily return)

   SP500_Return
      Daily S&P 500 Index Return (1 = 100 percent daily return)

   .. rubric:: Details
      :name: details

   This data was downloaded using the *tidyquant* package, and is used
   in the *Event Studies* chapter of *The Effect*.

   .. rubric:: Source
      :name: source

   Matt Dancho and Davis Vaughan (2021). tidyquant: Tidy Quantitative
   Financial Analysis. R package version 1.0.3.
   https://CRAN.R-project.org/package=tidyquant

   .. rubric:: References
      :name: references

   Huntington-Klein. 2021. The Effect: An Introduction to Research
   Design and Causality. https://theeffectbook.net.
