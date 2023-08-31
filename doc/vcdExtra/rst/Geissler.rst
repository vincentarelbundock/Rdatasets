.. container::

   ======== ===============
   Geissler R Documentation
   ======== ===============

   .. rubric:: Geissler's Data on the Human Sex Ratio
      :name: Geissler

   .. rubric:: Description
      :name: description

   Geissler (1889) published data on the distributions of boys and girls
   in families in Saxony, collected for the period 1876-1885. The
   ``Geissler`` data tabulates the family composition of 991,958
   families by the number of boys and girls listed in the table supplied
   by Edwards (1958, Table 1).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Geissler)

   .. rubric:: Format
      :name: format

   A data frame with 90 observations on the following 4 variables. The
   rows represent the non-NA entries in Edwards' table.

   ``boys``
      number of boys in the family, ``0:12``

   ``girls``
      number of girls in the family, ``0:12``

   ``size``
      family size: ``boys+girls``

   ``Freq``
      number of families with this sex composition

   .. rubric:: Details
      :name: details

   The data on family composition was available because, on the birth of
   a child, the parents had to state the sex of all their children on
   the birth certificate. These family records are not necessarily
   independent, because a given family may have had several children
   during this 10 year period, included as multiple records.

   .. rubric:: Source
      :name: source

   Edwards, A. W. F. (1958). An Analysis Of Geissler's Data On The Human
   Sex Ratio. *Annals of Human Genetics*, 23, 6-15.

   .. rubric:: References
      :name: references

   Friendly, M. and Meyer, D. (2016). *Discrete Data Analysis with R:
   Visualization and Modeling Techniques for Categorical and Count
   Data*. Boca Raton, FL: Chapman & Hall/CRC. http://ddar.datavis.ca.

   Geissler, A. (1889). *Beitrage zur Frage des Geschlechts
   verhaltnisses der Geborenen* Z. K. Sachsischen Statistischen Bureaus,
   35, n.p.

   Lindsey, J. K. & Altham, P. M. E. (1998). Analysis of the human sex
   ratio by using overdispersion models. *Journal of the Royal
   Statistical Society: Series C (Applied Statistics)*, 47, 149-157.

   .. rubric:: See Also
      :name: see-also

   ``Saxony``, containing the data for families of size 12.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Geissler)
      str(Geissler)

      # reproduce Saxony data, families of size 12
      Saxony12 <- subset(Geissler, size==12, select=c(boys, Freq))
      rownames(Saxony12)<-NULL

      # make a 1-way table
      xtabs(Freq~boys, Saxony12)

      # extract data for other family sizes
      Saxony11 <- subset(Geissler, size==11, select=c(boys, Freq))
      rownames(Saxony11)<-NULL

      Saxony10 <- subset(Geissler, size==10, select=c(boys, Freq))
      rownames(Saxony10)<-NULL
