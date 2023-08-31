.. container::

   =========== ===============
   MotorCycles R Documentation
   =========== ===============

   .. rubric:: Motor Cycles in The Netherlands
      :name: MotorCycles

   .. rubric:: Description
      :name: description

   Time series of stock of motor cycles (two wheels) in The Netherlands
   (in thousands).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("MotorCycles")

   .. rubric:: Format
      :name: format

   An annual univariate time series from 1946 to 1993.

   .. rubric:: Details
      :name: details

   An updated version is available under the name ``MotorCycles2``.
   However, the values for the years 1992 and 1993 differ there.

   .. rubric:: Source
      :name: source

   Online complements to Franses (1998).

   .. rubric:: References
      :name: references

   Franses, P.H. (1998). *Time Series Models for Business and Economic
   Forecasting*. Cambridge, UK: Cambridge University Press.

   .. rubric:: See Also
      :name: see-also

   ``Franses1998``, ``MotorCycles2``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("MotorCycles")
      plot(MotorCycles)
