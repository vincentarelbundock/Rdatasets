.. container::

   ======= ===============
   pottery R Documentation
   ======= ===============

   .. rubric:: Romano-British Pottery Data
      :name: pottery

   .. rubric:: Description
      :name: description

   Chemical composition of Romano-British pottery.

   .. rubric:: Usage
      :name: usage

   ::

      data("pottery")

   .. rubric:: Format
      :name: format

   A data frame with 45 observations on the following 9 chemicals.

   Al2O3
      aluminium trioxide.

   Fe2O3
      iron trioxide.

   MgO
      magnesium oxide.

   CaO
      calcium oxide.

   Na2O
      natrium oxide.

   K2O
      calium oxide.

   TiO2
      titanium oxide.

   MnO
      mangan oxide.

   BaO
      barium oxide.

   .. rubric:: Details
      :name: details

   The data gives the chemical composition of specimens of
   Romano-British pottery, determined by atomic absorption
   spectrophotometry, for nine oxides.

   .. rubric:: Source
      :name: source

   A. Tubb and N. J. Parker and G. Nickless (1980), The analysis of
   Romano-British pottery by atomic absorption spectrophotometry.
   *Archaeometry*, **22**, 153–171.

   .. rubric:: Examples
      :name: examples

   ::

        data("pottery", package = "HSAUR")
        plot(pottery)
