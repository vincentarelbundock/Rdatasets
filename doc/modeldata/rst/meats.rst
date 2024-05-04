.. container::

   .. container::

      ===== ===============
      meats R Documentation
      ===== ===============

      .. rubric:: Fat, water and protein content of meat samples
         :name: fat-water-and-protein-content-of-meat-samples

      .. rubric:: Description
         :name: description

      "These data are recorded on a Tecator Infratec Food and Feed
      Analyzer working in the wavelength range 850 - 1050 nm by the Near
      Infrared Transmission (NIT) principle. Each sample contains finely
      chopped pure meat with different moisture, fat and protein
      contents.

      .. rubric:: Details
         :name: details

      If results from these data are used in a publication we want you
      to mention the instrument and company name (Tecator) in the
      publication. In addition, please send a preprint of your article
      to

      Karin Thente, Tecator AB, Box 70, S-263 21 Hoganas, Sweden

      The data are available in the public domain with no responsibility
      from the original data source. The data can be redistributed as
      long as this permission note is attached."

      "For each meat sample the data consists of a 100 channel spectrum
      of absorbances and the contents of moisture (water), fat and
      protein. The absorbance is -log10 of the transmittance measured by
      the spectrometer. The three contents, measured in percent, are
      determined by analytic chemistry."

      Included here are the training, monitoring and test sets.

      .. rubric:: Value
         :name: value

      ========= ========
      ``meats`` a tibble
      ========= ========

      .. rubric:: Examples
         :name: examples

      ::

         data(meats)
         str(meats)
