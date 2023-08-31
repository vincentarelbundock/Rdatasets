.. container::

   ============ ===============
   mice_weights R Documentation
   ============ ===============

   .. rubric:: Mice weights
      :name: mice_weights

   .. rubric:: Description
      :name: description

   Weights for mice under two diets: chow and high fat. Data provided by
   Karen Svenson from Jackson Laboratories. Funding to generate these
   data came from NIH grant P50 GM070683 awarded to Gary Churchill.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      mice_weights

   .. rubric:: Format
      :name: format

   An object of class ``"data.frame"``.

   .. rubric:: Details
      :name: details

   -  sex. The sex of the mice.

   -  diet. The diet of the mice: chow or high fat.

   -  body_weight. Body weight in grams at 12 weeks.

   .. rubric:: Source
      :name: source

   Karen Svenson from Jackson Laboratories

   .. rubric:: Examples
      :name: examples

   .. code:: R

      mice_weights |> head()
      with(mice_weights, table(sex, diet))
