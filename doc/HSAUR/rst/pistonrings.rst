.. container::

   =========== ===============
   pistonrings R Documentation
   =========== ===============

   .. rubric:: Piston Rings Failures
      :name: pistonrings

   .. rubric:: Description
      :name: description

   Number of failures of piston rings in three legs of four steam-driven
   compressors.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("pistonrings")

   .. rubric:: Format
      :name: format

   A two-way classification, see ``table``.

   .. rubric:: Details
      :name: details

   The data are given in form of a ``table``. The table gives the number
   of piston-ring failures in each of three legs of four steam-driven
   compressors located in the same building. The compressors have
   identical design and are oriented in the same way. The question of
   interest is whether the two classification variables (compressor and
   leg) are independent.

   .. rubric:: Source
      :name: source

   S. J. Haberman (1973), The analysis of residuals in cross-classificed
   tables. *Biometrics* **29**, 205–220.

   .. rubric:: Examples
      :name: examples

   .. code:: R

        
        data("pistonrings", package = "HSAUR")
        mosaicplot(pistonrings)
