.. container::

   =========== ===============
   orallesions R Documentation
   =========== ===============

   .. rubric:: Oral Lesions in Rural India
      :name: orallesions

   .. rubric:: Description
      :name: description

   The distribution of the oral lesion site found in house-to-house
   surveys in three geographic regions of rural India.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("orallesions")

   .. rubric:: Format
      :name: format

   A two-way classification, see ``table``.

   .. rubric:: Source
      :name: source

   Cyrus R. Mehta and Nitin R. Patel (2003), *StatXact-6: Statistical
   Software for Exact Nonparametric Inference*, Cytel Software
   Cooperation, Cambridge, USA.

   .. rubric:: Examples
      :name: examples

   .. code:: R

        data("orallesions", package = "HSAUR")
        mosaicplot(orallesions)
