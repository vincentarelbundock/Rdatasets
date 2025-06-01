.. container::

   .. container::

      ======== ===============
      intcal13 R Documentation
      ======== ===============

      .. rubric:: IntCal13
         :name: intcal13

      .. rubric:: Description
         :name: description

      The IntCal series of radiocarbon calibration curves.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         intcal13

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 5141 observations and 5 variables:

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

      Reimer, P. J., Bard, E. Bayliss, A., Beck, J. W., Blackwell, P.
      G., Bronk Ramsey, C., Buck, C. E. *et al.* (2013). IntCal13 and
      Marine13 Radiocarbon age Calibration Curves 0-50,000 Years cal BP.
      *Radiocarbon*, 55(4): 1869-87.
      `doi:10.2458/azu_js_rc.55.16947 <https://doi.org/10.2458/azu_js_rc.55.16947>`__.

      .. rubric:: See Also
         :name: see-also

      Other radiocarbon dating: ``arnold1949``, ``intcal09``,
      ``intcal20``
