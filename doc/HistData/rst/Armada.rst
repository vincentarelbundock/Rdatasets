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

      ``Fleet``
         designation of the origin of the fleet, a factor with levels
         ``Andalucia``, ``Castilla``, ``Galeras``, ``Guipuscua``,
         ``Napoles``, ``Pataches``, ``Portugal``, ``Uantiscas``,
         ``Vizca``, ``Vrcas``

      ``ships``
         number of ships, a numeric vector

      ``tons``
         total tons of the ships, a numeric vector

      ``soldiers``
         number of soldiers, a numeric vector

      ``sailors``
         number of sailors, a numeric vector

      ``men``
         total of soldiers plus sailors, a numeric vector

      ``artillery``
         number of canons, a numeric vector

      ``balls``
         number of canonballs, a numeric vector

      ``gunpowder``
         amount of gunpowder loaded, a numeric vector

      ``lead``
         a numeric vector

      ``rope``
         a numeric vector

      .. rubric:: Details
         :name: details

      Note that ``men = soldiers + sailors``, so this variable is
      redundant in a multivariate analysis.

      A complete list of the ships of the Spanish Armada, their types,
      armaments and fate can be found at
      https://en.wikipedia.org/wiki/List_of_ships_of_the_Spanish_Armada.
      An enterprising data historian might attempt to square the data
      given there with this table.

      The fleet of Portugal, under the command of Alonso Pérez de
      Guzmán, 7th Duke of Medina Sidonia was largely in control of the
      attempted invasion of England.

      .. rubric:: Source
         :name: source

      de Falguerolles, A. (2008). L'analyse des donnees; before and
      around. *Journal Electronique d'Histoire des Probabilites et de la
      Statistique*, **4** (2), Link:
      https://www.jehps.net/Decembre2008/Falguerolles.pdf

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
         # use fleet as labels
         fleet <- Armada[, 1]

         # do a PCA of the standardized data
         armada.pca <- prcomp(armada, scale.=TRUE)
         summary(armada.pca)

         # screeplot
         plot(armada.pca, type="lines", pch=16, cex=2)

         biplot(armada.pca, xlabs = fleet,
           xlab = "PC1 (Fleet size)",
           ylab = "PC2 (Fleet configuration)")
