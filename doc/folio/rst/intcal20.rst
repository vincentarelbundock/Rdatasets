.. container::

   .. container::

      ======== ===============
      intcal20 R Documentation
      ======== ===============

      .. rubric:: IntCal20
         :name: intcal20

      .. rubric:: Description
         :name: description

      The IntCal series of radiocarbon calibration curves.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         intcal20

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 9501 observations and 5 variables:

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

      Reimer, P. J., Austin, W. E. N., Bard, E., Bayliss, A., Blackwell,
      P. G., Bronk Ramsey, C., Butzin, M. *et al.* (2020). The IntCal20
      Northern Hemisphere Radiocarbon âge Calibration Curve (0-55 Cal
      KBP). *Radiocarbon*, 62(4), 725-757.
      `doi:10.1017/RDC.2020.41 <https://doi.org/10.1017/RDC.2020.41>`__.

      .. rubric:: See Also
         :name: see-also

      Other radiocarbon dating: ``arnold1949``, ``intcal09``,
      ``intcal13``
