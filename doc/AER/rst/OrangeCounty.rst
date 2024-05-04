.. container::

   .. container::

      ============ ===============
      OrangeCounty R Documentation
      ============ ===============

      .. rubric:: Orange County Employment
         :name: orange-county-employment

      .. rubric:: Description
         :name: description

      Quarterly time series data on employment in Orange county,
      1965–1983.

      .. rubric:: Usage
         :name: usage

      ::

         data("OrangeCounty")

      .. rubric:: Format
         :name: format

      A quarterly multiple time series from 1965 to 1983 with 2
      variables.

      employment
         Quarterly employment in Orange county.

      gnp
         Quarterly real GNP.

      .. rubric:: Source
         :name: source

      The data is from Baltagi (2002).

      .. rubric:: References
         :name: references

      Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

      .. rubric:: See Also
         :name: see-also

      ``Baltagi2002``

      .. rubric:: Examples
         :name: examples

      ::

         data("OrangeCounty")
         plot(OrangeCounty)
