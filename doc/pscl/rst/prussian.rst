.. container::

   .. container::

      ======== ===============
      prussian R Documentation
      ======== ===============

      .. rubric:: Prussian army horse kick data
         :name: prussian-army-horse-kick-data

      .. rubric:: Description
         :name: description

      Deaths by year, by corp, from horse kicks.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(prussian)

      .. rubric:: Format
         :name: format

      A data frame with 280 observations on the following 3 variables.

      ``y``
         a numeric vector, count of deaths

      ``year``
         a numeric vector, 18XX, year of observation

      ``corp``
         a ``factor``, corp of Prussian Army generating observation

      .. rubric:: Source
         :name: source

      von Bortkiewicz, L. 1898. *Das Gesetz der Kleinen Zahlen.*
      Leipzig: Teubner.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(prussian)
         corpP <- glm(y ~ corp, family=poisson,data=prussian)
         summary(corpP)
