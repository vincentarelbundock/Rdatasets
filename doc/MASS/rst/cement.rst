.. container::

   .. container::

      ====== ===============
      cement R Documentation
      ====== ===============

      .. rubric:: Heat Evolved by Setting Cements
         :name: heat-evolved-by-setting-cements

      .. rubric:: Description
         :name: description

      Experiment on the heat evolved in the setting of each of 13
      cements.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cement

      .. rubric:: Format
         :name: format

      ``x1, x2, x3, x4``
         Proportions (%) of active ingredients.

      ``y``
         heat evolved in cals/gm.

      .. rubric:: Details
         :name: details

      Thirteen samples of Portland cement were set. For each sample, the
      percentages of the four main chemical ingredients was accurately
      measured. While the cement was setting the amount of heat evolved
      was also measured.

      .. rubric:: Source
         :name: source

      Woods, H., Steinour, H.H. and Starke, H.R. (1932) Effect of
      composition of Portland cement on heat evolved during hardening.
      *Industrial Engineering and Chemistry*, **24**, 1207–1214.

      .. rubric:: References
         :name: references

      Hald, A. (1957) *Statistical Theory with Engineering
      Applications.* Wiley, New York.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         lm(y ~ x1 + x2 + x3 + x4, cement)
