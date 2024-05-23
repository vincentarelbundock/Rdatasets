.. container::

   .. container::

      ================ ===============
      OBrienKaiserLong R Documentation
      ================ ===============

      .. rubric:: O'Brien and Kaiser's Repeated-Measures Data in "Long"
         Format
         :name: obrien-and-kaisers-repeated-measures-data-in-long-format

      .. rubric:: Description
         :name: description

      Contrived repeated-measures data from O'Brien and Kaiser (1985).
      For details see ``OBrienKaiser``, which is for the "wide" form of
      the same data.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         OBrienKaiserLong

      .. rubric:: Format
         :name: format

      A data frame with 240 observations on the following 6 variables.

      ``treatment``
         a between-subjects factor with levels ``control``, ``A``,
         ``B``.

      ``gender``
         a between-subjects factor with levels ``F``, ``M.``

      ``score``
         the numeric response variable.

      ``id``
         the subject id number.

      ``phase``
         a within-subjects factor with levels ``pre``, ``post``,
         ``fup``.

      ``hour``
         a within-subjects factor with levels ``1``, ``2``, ``3``,
         ``4``, ``5``.

      .. rubric:: Source
         :name: source

      O'Brien, R. G., and Kaiser, M. K. (1985) MANOVA method for
      analyzing repeated measures designs: An extensive primer.
      *Psychological Bulletin* **97**, 316–333, Table 7.

      .. rubric:: See Also
         :name: see-also

      ``OBrienKaiser``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(OBrienKaiserLong, 15) # first subject
