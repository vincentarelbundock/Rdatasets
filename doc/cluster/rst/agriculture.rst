.. container::

   .. container::

      =========== ===============
      agriculture R Documentation
      =========== ===============

      .. rubric:: European Union Agricultural Workforces
         :name: european-union-agricultural-workforces

      .. rubric:: Description
         :name: description

      Gross National Product (GNP) per capita and percentage of the
      population working in agriculture for each country belonging to
      the European Union in 1993.

      .. rubric:: Usage
         :name: usage

      ::

         data(agriculture)

      .. rubric:: Format
         :name: format

      A data frame with 12 observations on 2 variables:

      ====== ===== ======= =========================
      [ , 1] ``x`` numeric per capita GNP
      [ , 2] ``y`` numeric percentage in agriculture
      ====== ===== ======= =========================

      The row names of the data frame indicate the countries.

      .. rubric:: Details
         :name: details

      The data seem to show two clusters, the “more agricultural” one
      consisting of Greece, Portugal, Spain, and Ireland.

      .. rubric:: Source
         :name: source

      Eurostat (European Statistical Agency, 1994): *Cijfers en feiten:
      Een statistisch portret van de Europese Unie*.

      .. rubric:: References
         :name: references

      see those in ``agnes``.

      .. rubric:: See Also
         :name: see-also

      ``agnes``, ``daisy``, ``diana``.

      .. rubric:: Examples
         :name: examples

      ::

         data(agriculture)

         ## Compute the dissimilarities using Euclidean metric and without
         ## standardization
         daisy(agriculture, metric = "euclidean", stand = FALSE)

         ## 2nd plot is similar to Figure 3 in Struyf et al (1996)
         plot(pam(agriculture, 2))

         ## Plot similar to Figure 7 in Struyf et al (1996)
         ## Not run: plot(agnes(agriculture), ask = TRUE)


         ## Plot similar to Figure 8 in Struyf et al (1996)
         ## Not run: plot(diana(agriculture), ask = TRUE)
