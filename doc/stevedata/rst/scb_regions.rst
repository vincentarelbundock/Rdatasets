.. container::

   .. container::

      =========== ===============
      scb_regions R Documentation
      =========== ===============

      .. rubric:: Region Codes in the Central Bureau of Statistics
         ("Statistiska centralbyrån") in Sweden
         :name: region-codes-in-the-central-bureau-of-statistics-statistiska-centralbyrån-in-sweden

      .. rubric:: Description
         :name: description

      This is a simple data set for matching region codes to the names
      of territorial units in Sweden, at least recorded/cataloged by the
      Central Bureau of Statistics in Sweden.

      .. rubric:: Usage
         :name: usage

      ::

         scb_regions

      .. rubric:: Format
         :name: format

      A data frame with 312 observations on the following 2 variables.

      ``region``
         an intuitive name for a territorial unit/"region" in Sweden

      ``region_code``
         an alpha-numeric code coinciding with the territorial
         unit/"region"

      .. rubric:: Details
         :name: details

      Data were manually derived from first gathering everything the
      Central Bureau of Statistics had to offer. Its intended use is
      alongside the pxweb package. May it allow for more focused uses of
      the package without having to rely on the interactive component to
      do all the heavy-lifting.
