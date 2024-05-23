.. container::

   .. container::

      ========= ===============
      Butterfly R Documentation
      ========= ===============

      .. rubric:: Butterfly Species in Malaya
         :name: butterfly-species-in-malaya

      .. rubric:: Description
         :name: description

      Data from Fisher et al. (1943) giving the number of tokens found
      for each of 501 species of butterflies collected in Malaya.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("Butterfly")

      .. rubric:: Format
         :name: format

      A 1-way table giving the number of tokens for 501 species of
      butterflies. The variable and its levels are

      == ======= =============
      No Name    Levels
      1  nTokens 0, 1, ..., 24
      \          
      == ======= =============

      .. rubric:: Source
         :name: source

      Michael Friendly (2000), Visualizing Categorical Data, pages
      21–22.

      .. rubric:: References
         :name: references

      R. A. Fisher, A. S. Corbet, C. B. Williams (1943), The relation
      between the number of species and the number of individuals,
      *Journal of Animal Ecology*, **12**, 42–58.

      M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
      Cary, NC.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("Butterfly")
         Ord_plot(Butterfly)
