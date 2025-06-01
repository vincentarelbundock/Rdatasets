.. container::

   .. container::

      ======== ===============
      intcal09 R Documentation
      ======== ===============

      .. rubric:: IntCal09
         :name: intcal09

      .. rubric:: Description
         :name: description

      The IntCal series of radiocarbon calibration curves.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         intcal09

      .. rubric:: Format
         :name: format

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

      .. rubric:: Source
         :name: source

      Reimer, P. J., Baillie, M. G. L., Bard, E., Bayliss, A., Beck, J.
      W., Blackwell, P. G., Bronk Ramsey, C. *et al.* (2009). IntCal09
      and Marine09 Radiocarbon age Calibration Curves, 0-50,000 Years
      Cal BP. *Radiocarbon*, 51(4): 1111-50.
      `doi:10.1017/S0033822200034202 <https://doi.org/10.1017/S0033822200034202>`__.

      .. rubric:: See Also
         :name: see-also

      Other radiocarbon dating: ``arnold1949``, ``intcal13``,
      ``intcal20``
