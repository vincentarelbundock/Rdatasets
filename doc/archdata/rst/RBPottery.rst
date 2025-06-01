.. container::

   .. container::

      ========= ===============
      RBPottery R Documentation
      ========= ===============

      .. rubric:: Romano-British Pottery
         :name: romano-british-pottery

      .. rubric:: Description
         :name: description

      Results of chemical analyses of 48 specimens of Romano-British
      pottery from 5 sites in 3 regions.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("RBPottery")

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 12 variables.

      ``ID``
         Sample ID

      ``Kiln``
         Kiln: ``Gloucester``, ``Llanedeyrn``, ``Caldicot``,
         ``Islands Thorns``, and ``Ashley Rails``

      ``Region``
         Region: ``Gloucester``, ``Wales``, and ``New Forest``

      ``Al2O3``
         Percentage aluminum trioxide

      ``Fe2O3``
         Percentage Iron trioxide

      ``MgO``
         Percentage magnesium oxide

      ``CaO``
         Percentage calcium oxide

      ``Na2O``
         Percentage sodium oxide

      ``K2O``
         Percentage potassium oxide

      ``TiO2``
         Percentage titanium dioxide

      ``MnO``
         Percentage manganese oxide

      ``BaO``
         Percentage barium oxide

      .. rubric:: Details
         :name: details

      Results of chemical analyses of 48 specimens of Romano-British
      pottery published by Tubb, et al. (1980). The numbers are the
      percentage metal oxide. "Kiln" indicates at which kiln site the
      pottery was found. The kiln sites come from three regions
      (1=Gloucester, (2=Llanedeyrn, 3=Caldicot), (4=Islands Thorns,
      5=Ashley Rails)). The data were scanned from Table 2.2 in Baxter
      (2003, p. 21) and preserve three probable typographical errors in
      the original publication. Those errors are the values for TiO2 in
      line 4 (sample GA4), for MnO in line 35 (sample C13), and for K2O
      in line 36 (sample C14). Versions of these data are also available
      as ``Pottery`` in package ``car``, ``pottery`` in package
      ``HSAUR``, and ``Pottery2`` in package ``heplots``.

      .. rubric:: Source
         :name: source

      Baxter, M. J. 2003. *Statistics in Archaeology*. Arnold.

      Tubb, A., A. J. Parker, and G. Nickless. 1980. The Analysis of
      Romano-British Pottery by Atomic Absorption Spectrophotometry.
      *Archaeometry* 22: 153-71.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 247-255, 335-342.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(RBPottery)
         print(aggregate(RBPottery[, -c(1:3)], list(Region=RBPottery$Region), mean), digits=2)
         plot(Na2O~CaO, RBPottery, pch=as.numeric(Region)-1)
         legend("topright", levels(RBPottery$Region), title="Region", pch=0:2)
