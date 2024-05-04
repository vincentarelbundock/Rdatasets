.. container::

   .. container::

      ======= ===============
      sat.act R Documentation
      ======= ===============

      .. rubric:: 3 Measures of ability: SATV, SATQ, ACT
         :name: measures-of-ability-satv-satq-act

      .. rubric:: Description
         :name: description

      Self reported scores on the SAT Verbal, SAT Quantitative and ACT
      were collected as part of the Synthetic Aperture Personality
      Assessment (SAPA) web based personality assessment project. Age,
      gender, and education are also reported. The data from 700
      subjects are included here as a demonstration set for correlation
      and analysis.

      .. rubric:: Usage
         :name: usage

      ::

         data(sat.act)

      .. rubric:: Format
         :name: format

      A data frame with 700 observations on the following 6 variables.

      ``gender``
         males = 1, females = 2

      ``education``
         self reported education 1 = high school ... 5 = graduate work

      ``age``
         age

      ``ACT``
         ACT composite scores may range from 1 - 36. National norms have
         a mean of 20.

      ``SATV``
         SAT Verbal scores may range from 200 - 800.

      ``SATQ``
         SAT Quantitative scores may range from 200 - 800

      .. rubric:: Details
         :name: details

      hese items were collected as part of the SAPA project
      (https://www.sapa-project.org/)to develop online measures of
      ability (Revelle, Wilt and Rosenthal, 2009). The score means are
      higher than national norms suggesting both self selection for
      people taking on line personality and ability tests and a self
      reporting bias in scores.

      See also the iq.items data set.

      .. rubric:: Source
         :name: source

      https://personality-project.org/

      .. rubric:: References
         :name: references

      Revelle, William, Wilt, Joshua, and Rosenthal, Allen (2009)
      Personality and Cognition: The Personality-Cognition Link. In
      Gruszka, Alexandra and Matthews, Gerald and Szymura, Blazej (Eds.)
      Handbook of Individual Differences in Cognition: Attention, Memory
      and Executive Control, Springer.

      .. rubric:: Examples
         :name: examples

      ::

         data(sat.act)
         describe(sat.act)
         pairs.panels(sat.act)
