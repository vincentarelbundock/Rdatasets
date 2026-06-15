======== ===============
intcal09 R Documentation
======== ===============

IntCal09
--------

Description
~~~~~~~~~~~

The IntCal series of radiocarbon calibration curves.

Usage
~~~~~

.. code:: R

   intcal09

Format
~~~~~~

A ``data.frame`` with 3522 observations and 5 variables:

calBP
   ``integer``: calendar (calibrated) age (year BP).

age
   ``integer``: radiocarbon age (year BP).

error
   ``integer``: radiocarbon error (year BP).

delta
   ``numeric``: isotopic ratio ``\Delta^{14}C`` (per mil).

sigma
   ``numeric``: error on ``delta`` (per mil).

Source
~~~~~~

Reimer, P. J., Baillie, M. G. L., Bard, E., Bayliss, A., Beck, J. W.,
Blackwell, P. G., Bronk Ramsey, C. *et al.* (2009). IntCal09 and
Marine09 Radiocarbon age Calibration Curves, 0-50,000 Years Cal BP.
*Radiocarbon*, 51(4): 1111-50.
`doi:10.1017/S0033822200034202 <https://doi.org/10.1017/S0033822200034202>`__.

See Also
~~~~~~~~

Other radiocarbon dating: ``arnold1949``, ``intcal13``, ``intcal20``
