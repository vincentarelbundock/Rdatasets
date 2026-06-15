============ ===============
lisiecki2005 R Documentation
============ ===============

Global Benthic ``\delta^{18}O`` Stack
-------------------------------------

Description
~~~~~~~~~~~

A global Pliocene-Pleistocene benthic ``\delta^{18}O`` stack.

Usage
~~~~~

.. code:: R

   lisiecki2005

Format
~~~~~~

A ``data.frame`` with 2115 observations and 3 variables:

age
   ``numeric``: calendar age (kilo year cal BP).

delta
   ``numeric``: benthic ``\delta^{18}O`` (per mil).

error
   ``numeric``: standard error (per mil).

Details
~~~~~~~

The LR04 stack spans 5.3 Myr and is an average of 57 globally
distributed benthic ``\delta^{18}O`` records (which measure global ice
volume and deep ocean temperature) collected from the scientific
literature.

Source
~~~~~~

https://www.ncei.noaa.gov/access/paleo-search/study/5847

References
~~~~~~~~~~

Lisiecki, L. E. and Raymo, M. E. (2005). A Pliocene-Pleistocene stack of
57 globally distributed benthic d18O records. *Paleoceanography*, 20,
PA1003.
`doi:10.1029/2004PA001071 <https://doi.org/10.1029/2004PA001071>`__

See Also
~~~~~~~~

Other palaeoenvironment data: ``epica2008``, ``law2006``, ``ngrip2004``,
``ngrip2010``, ``spratt2016``

Other isotopic data: ``ngrip2004``, ``ngrip2010``, ``nydal1996``,
``spratt2016``, ``vegetation``

Examples
~~~~~~~~

.. code:: R

   plot(
     x = lisiecki2005$age,
     y = lisiecki2005$delta,
     type = "l",
     xlim = c(500, 0),
     xlab = "kilo year BP",
     ylab = expression(delta^{18}*"O")
   )
