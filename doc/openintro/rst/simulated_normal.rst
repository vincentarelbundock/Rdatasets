.. container::

   .. container::

      ================ ===============
      simulated_normal R Documentation
      ================ ===============

      .. rubric:: Simulated datasets, drawn from a normal distribution.
         :name: simulated-datasets-drawn-from-a-normal-distribution.

      .. rubric:: Description
         :name: description

      Data were simulated using ``rnorm``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         simulated_normal

      .. rubric:: Format
         :name: format

      The format is: List of 3 $ n40 : 40 observations from a standard
      normal distribution. $ n100: 100 observations from a standard
      normal distribution. $ n400: 400 observations from a standard
      normal distribution.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(simulated_normal)
         lapply(simulated_normal, qqnorm)
