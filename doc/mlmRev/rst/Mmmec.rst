.. container::

   ===== ===============
   Mmmec R Documentation
   ===== ===============

   .. rubric:: Malignant melanoma deaths in Europe
      :name: malignant-melanoma-deaths-in-europe

   .. rubric:: Description
      :name: description

   Malignant Melanoma Mortality in the European Community associated
   with the impact of UV radiation exposure.

   .. rubric:: Usage
      :name: usage

   ::

      data(Mmmec)

   .. rubric:: Format
      :name: format

   A data frame with 354 observations on the following 6 variables.

   nation
      a factor with levels ``Belgium``, ``W.Germany``, ``Denmark``,
      ``France``, ``UK``, ``Italy``, ``Ireland``, ``Luxembourg``, and
      ``Netherlands``

   region
      Region ID - a factor.

   county
      County ID - a factor.

   deaths
      Number of male deaths due to MM during 1971–1980

   expected
      Number of expected deaths.

   uvb
      Centered measure of the UVB dose reaching the earth's surface in
      each county.

   .. rubric:: Source
      :name: source

   http://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

   .. rubric:: References
      :name: references

   Langford, I.H., Bentham, G. and McDonald, A. 1998: Multilevel
   modelling of geographically aggregated health data: a case study on
   malignant melanoma mortality and UV exposure in the European
   community. *Statistics in Medicine* 17: 41-58.

   .. rubric:: Examples
      :name: examples

   ::

      str(Mmmec)
      summary(Mmmec)
      (fm1 <- glmer(deaths ~ uvb + (1|region), Mmmec, poisson, offset = log(expected)))
