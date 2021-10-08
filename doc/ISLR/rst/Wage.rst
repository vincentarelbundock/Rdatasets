.. container::

   ==== ===============
   Wage R Documentation
   ==== ===============

   .. rubric:: Mid-Atlantic Wage Data
      :name: mid-atlantic-wage-data

   .. rubric:: Description
      :name: description

   Wage and other data for a group of 3000 male workers in the
   Mid-Atlantic region.

   .. rubric:: Usage
      :name: usage

   ::

      Wage

   .. rubric:: Format
      :name: format

   A data frame with 3000 observations on the following 11 variables.

   ``year``
      Year that wage information was recorded

   ``age``
      Age of worker

   ``maritl``
      A factor with levels ``1. Never Married`` ``2. Married``
      ``3. Widowed`` ``4. Divorced`` and ``5. Separated`` indicating
      marital status

   ``race``
      A factor with levels ``1. White`` ``2. Black`` ``3. Asian`` and
      ``4. Other`` indicating race

   ``education``
      A factor with levels ``1. < HS Grad`` ``2. HS Grad``
      ``3. Some College`` ``4. College Grad`` and ``5. Advanced Degree``
      indicating education level

   ``region``
      Region of the country (mid-atlantic only)

   ``jobclass``
      A factor with levels ``1. Industrial`` and ``2. Information``
      indicating type of job

   ``health``
      A factor with levels ``1. <=Good`` and ``2. >=Very Good``
      indicating health level of worker

   ``health_ins``
      A factor with levels ``1. Yes`` and ``2. No`` indicating whether
      worker has health insurance

   ``logwage``
      Log of workers wage

   ``wage``
      Workers raw wage

   .. rubric:: Source
      :name: source

   Data was manually assembled by Steve Miller, of Inquidia Consulting
   (formerly Open BI). From the March 2011 Supplement to Current
   Population Survey data.

   https://www.re3data.org/repository/r3d100011860

   .. rubric:: References
      :name: references

   James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
   Introduction to Statistical Learning with applications in R*,
   https://www.statlearning.com, Springer-Verlag, New York

   .. rubric:: Examples
      :name: examples

   ::

      summary(Wage)
      lm(wage~year+age,data=Wage)
      ## maybe str(Wage) ; plot(Wage) ...
