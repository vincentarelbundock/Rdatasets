.. container::

   ========= ===============
   mendelABC R Documentation
   ========= ===============

   .. rubric:: Mendel's F2 trifactorial data for seed shape (A: round or
      wrinkled), cotyledon color (B: albumen yellow or green), and seed
      coat color (C: grey-brown or white)
      :name: mendelABC

   .. rubric:: Description
      :name: description

   The ``mendel3`` data frame has 27 rows and 4 columns. Data are from
   Mendel (1886), and are reproduced in Fisher (1936) and Weir (1996).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(mendelABC)

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   seedshape
      Factor with levels: ``AA``, ``Aa`` and ``aa``

   cotylcolor
      Factor with levels: ``BB``, ``Bb`` and ``bb``

   coatcolor
      Factor with levels: ``CC``, ``Cc`` and ``cc``

   Observed
      a numeric vector that holds the frequencies.

   .. rubric:: Details
      :name: details

   The data are reviewed in detail in Fisher (1936). For a brief
   discussion, and references to work that revisits Fisher's
   conclusions, see Weir (1996).

   .. rubric:: Source
      :name: source

   Data are from Mendel (1886), and are reproduced in Fisher (1936) and
   Weir (1996).

   .. rubric:: References
      :name: references

   1. Fisher, R.A. 1936. Has Mendel's work been rediscovered? *Annals of
   Science* **1**:115-137.

   2. Mendel, G. 1886. Versuche uber Pflanzen-Hybriden. Verhandlugen des
   Naturforschenden Vereines in Brunn **4**:3-47. (An English
   translation. with annotations, is available from
   http://www.esp.org/foundations/genetics/classical/gm-65.pdf NB also
   the English translation by Royal Horticultural Society of London,
   reprinted in Peters, J.A. 1959. *Classic Papers in Genetics.*
   Prentice-Hall.)

   3. Weir, B.S. 1996. *Genetic Data Analysis II.* Sinauer.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      ## Lay table out as a 3D array, as in Fisher (1936)
      abc <- aperm(array(mendelABC[,4], dim=c(3,3,3)), c(1,3,2))
      dimnames(abc) <- list(B=c('BB','Bb','bb'), 
                            A=c('AA','Aa','aa'),
                            C=c('CC','Cc','cc'))
      abc
      ## Fit Hardy-Weinberg disequilibium model
      hwde(mendelABC, loci=c("seedshape","cotylcolor","coatcolor"))
