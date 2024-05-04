.. container::

   .. container::

      ===== ===============
      motor R Documentation
      ===== ===============

      .. rubric:: Data from a Simulated Motorcycle Accident
         :name: data-from-a-simulated-motorcycle-accident

      .. rubric:: Description
         :name: description

      The ``motor`` data frame has 94 rows and 4 columns. The rows are
      obtained by removing replicate values of ``time`` from the dataset
      ``mcycle``. Two extra columns are added to allow for strata with a
      different residual variance in each stratum.

      .. rubric:: Usage
         :name: usage

      ::

         motor

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``times``
         The time in milliseconds since impact.

      ``accel``
         The recorded head acceleration (in g).

      ``strata``
         A numeric column indicating to which of the three strata
         (numbered 1, 2 and 3) the observations belong.

      ``v``
         An estimate of the residual variance for the observation. ``v``
         is constant within the strata but a different estimate is used
         for each of the three strata.

      .. rubric:: Source
         :name: source

      The data were obtained from

      Silverman, B.W. (1985) Some aspects of the spline smoothing
      approach to non-parametric curve fitting. *Journal of the Royal
      Statistical Society, B*, **47**, 1–52.

      .. rubric:: References
         :name: references

      Davison, A.C. and Hinkley, D.V. (1997) *Bootstrap Methods and
      Their Application*. Cambridge University Press.

      Venables, W.N. and Ripley, B.D. (1994) *Modern Applied Statistics
      with S-Plus*. Springer-Verlag.

      .. rubric:: See Also
         :name: see-also

      ``mcycle``
