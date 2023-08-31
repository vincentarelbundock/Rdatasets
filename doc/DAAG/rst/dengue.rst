.. container::

   ====== ===============
   dengue R Documentation
   ====== ===============

   .. rubric:: Dengue prevalence, by administrative region
      :name: dengue

   .. rubric:: Description
      :name: description

   Data record, for each of 2000 administrative regions, whether or not
   dengue was recorded at any time between 1961 and 1990.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(dengue)

   .. rubric:: Format
      :name: format

   A data frame with 2000 observations on the following 13 variables.

   humid
      Average vapour density: 1961-1990

   humid90
      90th percentile of ``humid``

   temp
      Average temperature: 1961-1990

   temp90
      90th percentile of ``temp``

   h10pix
      maximum of ``humid``, within a 10 pixel radius

   h10pix90
      maximum of ``humid90``, within a 10 pixel radius

   trees
      Percent tree cover, from satellite data

   trees90
      90th percentile of ``trees``

   NoYes
      Was dengue observed? (1=yes)

   Xmin
      minimum longitude

   Xmax
      maximum longitude

   Ymin
      minimum latitude

   Ymax
      maximum latitude

   .. rubric:: Details
      :name: details

   This is derived from a data set in which the climate and tree cover
   information were given for each half degree of latitude by half
   degreee of longitude pixel. The variable ``NoYes`` was given by
   administrative region. The climate data and tree cover data given
   here are 50th or 90th percentiles, where percetiles were calculates
   across pixels for an administrative region.

   .. rubric:: Source
      :name: source

   Simon Hales, Environmental Research New Zealand Ltd.

   .. rubric:: References
      :name: references

   Hales, S., de Wet, N., Maindonald, J. and Woodward, A. 2002.
   Potential effect of population and climate change global distribution
   of dengue fever: an empirical model. The Lancet 2002; 360: 830-34.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      str(dengue)
      glm(NoYes ~ humid, data=dengue, family=binomial)
      glm(NoYes ~ humid90, data=dengue, family=binomial)
