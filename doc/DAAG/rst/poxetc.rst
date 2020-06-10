====== ===============
poxetc R Documentation
====== ===============

Deaths from various causes, in London from 1629 till 1881, with gaps
--------------------------------------------------------------------

Description
~~~~~~~~~~~

Deaths from "flux" or smallpox, measles, all causes, and ratios of the
the first two categories to total deaths.

Usage
~~~~~

::

   data(poxetc)

Format
~~~~~~

This is a multiple time series consisting of 5 series: ``fpox``,
``measles``, ``all``, ``fpox2all``, ``measles2all``.

Source
~~~~~~

Guy, W. A. 1882. Two hundred and fifty years of small pox in London.
Journal of the Royal Statistical Society 399-443.

References
~~~~~~~~~~

Lancaster, H. O. 1990. Expectations of Life. Springer.

Examples
~~~~~~~~

::

   data(poxetc)
   str(poxetc)
   plot(poxetc) 
