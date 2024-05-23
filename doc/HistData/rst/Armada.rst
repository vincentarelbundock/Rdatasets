.. container::

   .. container::

      ====== ===============
      Armada R Documentation
      ====== ===============

      .. rubric:: La Felicisima Armada
         :name: la-felicisima-armada

      .. rubric:: Description
         :name: description

      The Spanish Armada (Spanish: *Grande y Felicisima Armada*,
      literally "Great and Most Fortunate Navy") was a Spanish fleet of
      130 ships that sailed from La Coruna in August 1588. During its
      preparation, several accounts of its formidable strength were
      circulated to reassure allied powers of Spain or to intimidate its
      enemies. One such account was given by Paz Salas et Alvarez
      (1588). The intent was bring the forces of Spain to invade
      England, overthrow Queen Elizabeth I, and re-establish Spanish
      control of the Netherlands. However the Armada was not as
      fortunate as hoped: it was all destroyed in one week's fighting.

      de Falguerolles (2008) reports the table given here as ``Armada``
      as an early example of data to which multivariate methods might be
      applied.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("Armada")

      .. rubric:: Format
         :name: format

      A data frame with 10 observations on the following 11 variables.

      ``Armada``
         designation of the fleet, a factor with levels ``Andalucia``
         ``Castilla`` ``Galeras`` ``Guipuscua`` ``Napoles`` ``Pataches``
         ``Portugal`` ``Uantiscas`` ``Vizca`` ``Vrcas``

      ``ships``
         number of ships, a numeric vector

      ``tons``
         total tons, a numeric vector

      ``soldiers``
         number of soldiers, a numeric vector

      ``sailors``
         number of sailors, a numeric vector

      ``men``
         total of soldiers plus sailors, a numeric vector

      ``artillery``
         a numeric vector

      ``balls``
         a numeric vector

      ``gunpowder``
         a numeric vector

      ``lead``
         a numeric vector

      ``rope``
         a numeric vector

      .. rubric:: Details
         :name: details

      Note that ``men = soldiers + sailors``

      .. rubric:: Source
         :name: source

      de Falguerolles, A. (2008) L'analyse des donnees; before and
      around. *Journal Electronique d'Histoire des Probabilites et de la
      Statistique*, 4 (2),
      http://www.jehps.net/Decembre2008/Falguerolles.pdf

      .. rubric:: References
         :name: references

      Pedro de Paz Salas and Antonio Alvares. La felicisima armada que
      elrey Don Felipe nuestro Senor mando juntar enel puerto de la
      ciudad de Lisboa enel Reyno de Portugal. Lisbon, 1588.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Armada)
         # delete character and redundant variable
         armada <- Armada[,-c(1,6)]

         armada.pca <- prcomp(armada, scale.=TRUE)
         summary(armada.pca)

         plot(armada.pca, type="lines", pch=16, cex=2)
         biplot(armada.pca)
