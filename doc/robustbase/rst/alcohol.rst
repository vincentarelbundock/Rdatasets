.. container::

   ======= ===============
   alcohol R Documentation
   ======= ===============

   .. rubric:: Alcohol Solubility in Water Data
      :name: alcohol

   .. rubric:: Description
      :name: description

   The solubility of alcohols in water is important in understanding
   alcohol transport in living organisms. This dataset from (Romanelli
   et al., 2001) contains physicochemical characteristics of 44
   aliphatic alcohols. The aim of the experiment was the prediction of
   the solubility on the basis of molecular descriptors.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(alcohol, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 44 observations on the following 7 numeric
   variables.

   ``SAG``
      solvent accessible surface-bounded molecular volume.

   ``V``
      volume

   ``logPC``
      Log(PC); PC = octanol-water partitions coefficient

   ``P``
      polarizability

   ``RM``
      molar refractivity

   ``Mass``
      the mass

   ``logSolubility``
      ln(Solubility), the response.

   .. rubric:: Source
      :name: source

   The website accompanying the MMY-book:
   https://www.wiley.com/legacy/wileychi/robust_statistics/

   .. rubric:: References
      :name: references

   Maronna, R.A., Martin, R.D. and Yohai, V.J. (2006) *Robust
   Statistics, Theory and Methods*, Wiley.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(alcohol)
      ## version of data set with trivial names, as
      s.alcohol <- alcohol
      names(s.alcohol) <- paste("Col", 1:7, sep='')
