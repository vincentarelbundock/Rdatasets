.. container::

   ========== ===============
   HorseKicks R Documentation
   ========== ===============

   .. rubric:: Death by Horse Kicks
      :name: HorseKicks

   .. rubric:: Description
      :name: description

   Data from von Bortkiewicz (1898), given by Andrews & Herzberg (1985),
   on number of deaths by horse or mule kicks in 10 (of 14 reported)
   corps of the Prussian army. 4 corps were not considered by Fisher
   (1925) as they had a different organization. This data set is a
   popular subset of the ``VonBort`` data.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("HorseKicks")

   .. rubric:: Format
      :name: format

   A 1-way table giving the number of deaths in 200 corps-years. The
   variable and its levels are

   == ======= ============
   No Name    Levels
   1  nDeaths 0, 1, ..., 4
   \          
   == ======= ============

   .. rubric:: Source
      :name: source

   Michael Friendly (2000), Visualizing Categorical Data, page 18.

   .. rubric:: References
      :name: references

   D. F. Andrews & A. M. Herzberg (1985), *Data: A Collection of
   Problems from Many Fields for the Student and Research Worker*.
   Springer-Verlag, New York, NY.

   R. A. Fisher (1925), *Statistical Methods for Research Workers*.
   Oliver & Boyd, London.

   L. von Bortkiewicz (1898), *Das Gesetz der kleinen Zahlen*. Teubner,
   Leipzig.

   M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
   Cary, NC.

   .. rubric:: See Also
      :name: see-also

   ``VonBort``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("HorseKicks")
      gf <- goodfit(HorseKicks)
      summary(gf)
      plot(gf)
