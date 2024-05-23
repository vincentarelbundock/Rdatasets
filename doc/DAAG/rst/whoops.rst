.. container::

   .. container::

      ====== ===============
      whoops R Documentation
      ====== ===============

      .. rubric:: Deaths from whooping cough, in London
         :name: deaths-from-whooping-cough-in-london

      .. rubric:: Description
         :name: description

      Deaths from whooping cough, in London from 1740 to 1881.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(whoops)

      .. rubric:: Format
         :name: format

      This is a multiple time series consisting of 3 series: ``wcough``,
      ``ratio``, and ``alldeaths``.

      .. rubric:: Source
         :name: source

      Guy, W. A. 1882. Two hundred and fifty years of small pox in
      London. Journal of the Royal Statistical Society 399-443.

      .. rubric:: References
         :name: references

      Lancaster, H. O. 1990. Expectations of Life. Springer.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(whoops)
         str(whoops)
         plot(whoops) 
