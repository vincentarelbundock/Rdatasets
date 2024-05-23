.. container::

   .. container::

      ===== ===============
      ozone R Documentation
      ===== ===============

      .. rubric:: Ozone Data
         :name: ozone-data

      .. rubric:: Description
         :name: description

      Monthly provisional mean total ozone (in Dobson units) at Halley
      Bay (approximately corrected to Bass-Paur).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ozone

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      Year
         the year

      Aug
         August mean total ozone

      Sep
         September mean total ozone

      Oct
         October mean total ozone

      Nov
         November mean total ozone

      Dec
         December mean total ozone

      Jan
         January mean total ozone

      Feb
         February mean total ozone

      Mar
         March mean total ozone

      Apr
         April mean total ozone

      Annual
         Yearly mean total ozone

      .. rubric:: Source
         :name: source

      Shanklin, J. (2001) Ozone at Halley, Rothera and
      Vernadsky/Faraday.

      http://www.antarctica.ac.uk/met/jds/ozone/data/zoz5699.dat

      .. rubric:: References
         :name: references

      Christie, M. (2000) The Ozone Layer: a Philosophy of Science
      Perspective. Cambridge University Press.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         AnnualOzone <- ts(ozone$Annual, start=1956)
         plot(AnnualOzone)
