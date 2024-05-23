.. container::

   .. container::

      ============ ===============
      mice_weights R Documentation
      ============ ===============

      .. rubric:: Mice weights
         :name: mice-weights

      .. rubric:: Description
         :name: description

      Body weights, bone density, and percent fat for mice under two
      diets: chow and high fat. Data provided by Karen Svenson from
      Jackson Laboratories. Funding to generate these data came from NIH
      grant P50 GM070683 awarded to Gary Churchill.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         mice_weights

      .. rubric:: Format
         :name: format

      An object of class ``"data.frame"``.

      .. rubric:: Details
         :name: details

      -  body_weight. Body weight in grams at 19 weeks.

      -  bone_density. Body density.

      -  percent_fat. Percent fat.

      -  sex. The sex of the mice.

      -  diet. The diet of the mice: chow or high fat.

      -  gen. These are outbread mice. This variable denotes the
         generation.

      -  litter. Which of two litters mice belong to.

      .. rubric:: Source
         :name: source

      Karen Svenson, Daniel M. Gatti, and Gary Churchill from Jackson
      Laboratories.

      .. rubric:: References
         :name: references

      Daniel M. Gatti, Petr Simecek, Lisa Somes, Clifton T. Jeffrey,
      Matthew J. Vincent, Kwangbom Choi, Xingyao Chen, Gary A.
      Churchill, and Karen L. Svenson. "The Effects of Sex and Diet on
      Physiology and Liver Gene Expression in Diversity Outbred Mice".
      bioRxiv 098657;
      `doi:10.1101/098657 <https://doi.org/10.1101/098657>`__

      .. rubric:: Examples
         :name: examples

      .. code:: R

         mice_weights |> head()
         with(mice_weights, table(sex, diet))
