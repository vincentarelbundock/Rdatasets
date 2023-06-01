.. container::

   ================= ===============
   male_heights_fcid R Documentation
   ================= ===============

   .. rubric:: Random sample of adult male heights
      :name: male_heights_fcid

   .. rubric:: Description
      :name: description

   This sample is based on data from the USDA Food Commodity Intake
   Database.

   .. rubric:: Usage
      :name: usage

   ::

      male_heights_fcid

   .. rubric:: Format
      :name: format

   A data frame with 100 observations on the following variable.

   height_inch
      Height, in inches.

   .. rubric:: Source
      :name: source

   Simulated based on data from USDA.

   .. rubric:: Examples
      :name: examples

   ::

      data(male_heights_fcid)
      histPlot(male_heights_fcid$height_inch)
