.. container::

   .. container::

      ========================== ===============
      dasilva.soybean.uniformity R Documentation
      ========================== ===============

      .. rubric:: Uniformity trial of soybean
         :name: uniformity-trial-of-soybean

      .. rubric:: Description
         :name: description

      Uniformity trial of soybean in Brazil, 1970.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("dasilva.soybean.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1152 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, grams/plot

      .. rubric:: Details
         :name: details

      Field length: 48 rows \* .6 m = 28.8 m

      Field width: 24 columns \* .6 m = 14.4 m

      .. rubric:: Source
         :name: source

      Enedino Correa da Silva. (1974). Estudo do tamanho e forma de
      parcelas para experimentos de soja (Plot size and shape for
      soybean yield trials). Pesquisa Agropecuaria Brasileira, Serie
      Agronomia, 9, 49-59. Table 3, page 52-53.
      https://seer.sct.embrapa.br/index.php/pab/article/view/17250

      .. rubric:: References
         :name: references

      Humada-Gonzalez, G.G. (2013). Estimação do tamanho otimo de
      parcela experimental em experimento com soja. Dissertation,
      Universidade Federal de Lavras.
      http://repositorio.ufla.br/jspui/handle/1/744

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(dasilva.soybean.uniformity)
         dat <- dasilva.soybean.uniformity

         libs(desplot)
         desplot(dat, yield ~ col*row,
                 flip=TRUE, aspect=28.8/14.4, 
                 main="dasilva.soybean.uniformity")
           

         ## End(Not run)
