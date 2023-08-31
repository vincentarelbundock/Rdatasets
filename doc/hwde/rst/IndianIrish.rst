.. container::

   =========== ===============
   IndianIrish R Documentation
   =========== ===============

   .. rubric:: Observed genotype frequencies at MN and S loci, for 2
      populations
      :name: IndianIrish

   .. rubric:: Description
      :name: description

   The ``IndianIrish`` data frame has 18 rows and 4 columns. The data
   are genotype frequencies for two locations, for Xavante Indian and
   Irish populations respectively

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(IndianIrish)

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Population
      Factor with levels: ``Indian`` and ``Irish``

   locus1
      Factor with levels: ``MM``, ``MN`` and ``NN``

   locus2
      Factor with levels: ``SS``, ``Ss`` and ``ss``

   Observed
      a numeric vector giving the frequency for each category of the
      tale

   .. rubric:: Source
      :name: source

   Mourant et al (1977) and Huttley and Wilson (2000).

   .. rubric:: References
      :name: references

   | 1. Huttley, G.A. and Wilson, S.R. 2000. Testing for concordant
     equilibria between population samples. *Genetics* **156**,
     2127-2135.
   | 2. Mourant, A.E., Kopec, A.C. and Domaniewska-Sobczak, K. 1976.
     *The Distribution of the Human Blood Groups and Other
     Polymorphisms.* Oxford University Press.
   | 3. Weir, B.S. 1996. *Genetic Data Analysis II.* Sinauer.

   .. rubric:: See Also
      :name: see-also

   ``hwde``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(IndianIrish)
      hwde(data=IndianIrish)
