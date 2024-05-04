.. container::

   .. container::

      ====== ===============
      poxetc R Documentation
      ====== ===============

      .. rubric:: Deaths from various causes, in London from 1629 till
         1881, with gaps
         :name: deaths-from-various-causes-in-london-from-1629-till-1881-with-gaps

      .. rubric:: Description
         :name: description

      Deaths from "flux" or smallpox, measles, all causes, and ratios of
      the the first two categories to total deaths.

      .. rubric:: Usage
         :name: usage

      ::

         data(poxetc)

      .. rubric:: Format
         :name: format

      This is a multiple time series consisting of 5 series: ``fpox``,
      ``measles``, ``all``, ``fpox2all``, ``measles2all``.

      .. rubric:: Source
         :name: source

      Guy, W. A. 1882. Two hundred and fifty years of small pox in
      London. Journal of the Royal Statistical Society 399-443.

      .. rubric:: References
         :name: references

      Lancaster, H. O. 1990. Expectations of Life. Springer.

      .. rubric:: Examples
         :name: examples

      ::

         data(poxetc)
         str(poxetc)
         plot(poxetc) 
