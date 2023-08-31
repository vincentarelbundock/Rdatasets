.. container::

   ======= ===============
   animals R Documentation
   ======= ===============

   .. rubric:: Attributes of Animals
      :name: animals

   .. rubric:: Description
      :name: description

   This data set considers 6 binary attributes for 20 animals.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(animals)

   .. rubric:: Format
      :name: format

   A data frame with 20 observations on 6 variables:

   ====== === ==============
   [ , 1] war warm-blooded
   [ , 2] fly can fly
   [ , 3] ver vertebrate
   [ , 4] end endangered
   [ , 5] gro live in groups
   [ , 6] hai have hair
   \          
   ====== === ==============

   All variables are encoded as 1 = 'no', 2 = 'yes'.

   .. rubric:: Details
      :name: details

   This dataset is useful for illustrating monothetic (only a single
   variable is used for each split) hierarchical clustering.

   .. rubric:: Source
      :name: source

   Leonard Kaufman and Peter J. Rousseeuw (1990): *Finding Groups in
   Data* (pp 297ff). New York: Wiley.

   .. rubric:: References
      :name: references

   see Struyf, Hubert & Rousseeuw (1996), in ``agnes``.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(animals)
      apply(animals,2, table) # simple overview

      ma <- mona(animals)
      ma
      ## Plot similar to Figure 10 in Struyf et al (1996)
      plot(ma)
