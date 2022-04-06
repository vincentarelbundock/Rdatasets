.. container::

   ============ ===============
   VisualAcuity R Documentation
   ============ ===============

   .. rubric:: Visual Acuity in Left and Right Eyes
      :name: visual-acuity-in-left-and-right-eyes

   .. rubric:: Description
      :name: description

   Data from Kendall & Stuart (1961) on unaided vision among 3,242 men
   and 7,477 women, all aged 30-39 and employed in the U.K. Royal
   Ordnance factories 1943-1946.

   .. rubric:: Usage
      :name: usage

   ::

      data("VisualAcuity")

   .. rubric:: Format
      :name: format

   A data frame with 32 observations and 4 variables.

   Freq
      frequency of visual acuity measurements.

   right
      visual acuity on right eye.

   left
      visual acuity on left eye.

   gender
      factor indicating gender of patient.

   .. rubric:: Source
      :name: source

   M. Friendly (2000), Visualizing Categorical Data:
   http://euclid.psych.yorku.ca/ftp/sas/vcd/catdata/vision.sas

   .. rubric:: References
      :name: references

   M. G. Kendall & A. Stuart (1961), *The Advanced Theory of
   Statistics*, Vol. 2. Griffin, London.

   M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
   Cary, NC.

   .. rubric:: Examples
      :name: examples

   ::

      data("VisualAcuity")
      structable(~ gender + left + right, data = VisualAcuity)
      sieve(Freq ~ left + right | gender, data = VisualAcuity, shade = TRUE)
      cotabplot(Freq ~ left + right | gender, data = VisualAcuity,
                panel = cotab_agreementplot)
