.. container::

   .. container::

      ====== ===============
      pair65 R Documentation
      ====== ===============

      .. rubric:: Heated Elastic Bands
         :name: heated-elastic-bands

      .. rubric:: Description
         :name: description

      The ``pair65`` data frame has 9 rows and 2 columns. Eighteen
      elastic bands were divided into nine pairs, with bands of similar
      stretchiness placed in the same pair. One member of each pair was
      placed in hot water (60-65 degrees C) for four minutes, while the
      other was left at ambient temperature. After a wait of about ten
      minutes, the amounts of stretch, under a 1.35 kg weight, were
      recorded.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         pair65

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      heated
         a numeric vector giving the stretch lengths for the heated
         bands

      ambient
         a numeric vector giving the stretch lengths for the unheated
         bands

      .. rubric:: Source
         :name: source

      J.H. Maindonald

      .. rubric:: Examples
         :name: examples

      .. code:: R

         mean(pair65$heated - pair65$ambient)
         sd(pair65$heated - pair65$ambient)
