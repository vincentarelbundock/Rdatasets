.. container::

   .. container::

      ======== ===============
      USMacroB R Documentation
      ======== ===============

      .. rubric:: US Macroeconomic Data (1959–1995, Baltagi)
         :name: us-macroeconomic-data-19591995-baltagi

      .. rubric:: Description
         :name: description

      Time series data on 3 US macroeconomic variables for 1959–1995,
      extracted from the Citibank data base.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("USMacroB")

      .. rubric:: Format
         :name: format

      A quarterly multiple time series from 1959(1) to 1995(2) with 3
      variables.

      gnp
         Gross national product.

      mbase
         Average of the seasonally adjusted monetary base.

      tbill
         Average of 3 month treasury-bill rate (per annum).

      .. rubric:: Source
         :name: source

      The data is from Baltagi (2002).

      .. rubric:: References
         :name: references

      Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

      .. rubric:: See Also
         :name: see-also

      ``Baltagi2002``, ``USMacroSW``, ``USMacroSWQ``, ``USMacroSWM``,
      ``USMacroG``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("USMacroB")
         plot(USMacroB)
