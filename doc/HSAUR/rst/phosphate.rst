.. container::

   ========= ===============
   phosphate R Documentation
   ========= ===============

   .. rubric:: Phosphate Level Data
      :name: phosphate-level-data

   .. rubric:: Description
      :name: description

   Plasma inorganic phosphate levels from 33 subjects.

   .. rubric:: Usage
      :name: usage

   ::

      data("phosphate")

   .. rubric:: Format
      :name: format

   A data frame with 33 observations on the following 9 variables.

   ``group``
      a factor with levels ``control`` and ``obese``.

   ``t0``
      baseline phosphate level

   ,

   ``t0.5``
      phosphate level after 1/2 an hour.

   ``t1``
      phosphate level after one an hour.

   ``t1.5``
      phosphate level after 1 1/2 hours.

   ``t2``
      phosphate level after two hours.

   ``t3``
      phosphate level after three hours.

   ``t4``
      phosphate level after four hours.

   ``t5``
      phosphate level after five hours.

   .. rubric:: Source
      :name: source

   C. S. Davis (2002), *Statistical Methods for the Analysis of Repeated
   Measurements*, Springer, New York.

   .. rubric:: Examples
      :name: examples

   ::


        data("phosphate", package = "HSAUR")
        plot(t0 ~ group, data = phosphate)
