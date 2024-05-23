.. container::

   .. container::

      ======== ===============
      hpc_data R Documentation
      ======== ===============

      .. rubric:: High-performance computing system data
         :name: high-performance-computing-system-data

      .. rubric:: Description
         :name: description

      Kuhn and Johnson (2013) describe a data set where characteristics
      of unix jobs were used to classify there completion times as
      either very fast (1 min or less, ``VF``), fast (1–50 min, ``F``),
      moderate (5–30 min, ``M``), or long (greater than 30 min, ``L``).

      .. rubric:: Value
         :name: value

      ============ ========
      ``hpc_data`` a tibble
      ============ ========

      .. rubric:: Source
         :name: source

      Kuhn, M., Johnson, K. (2013) *Applied Predictive Modeling*,
      Springer.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(hpc_data)
         str(hpc_data)
