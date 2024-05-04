.. container::

   .. container::

      ======= ===============
      titanic R Documentation
      ======= ===============

      .. rubric:: titanic
         :name: titanic

      .. rubric:: Description
         :name: description

      The data is an observation-based version of the 1912 Titanic
      passenger survival log,

      .. rubric:: Usage
         :name: usage

      ::

         data(titanic)

      .. rubric:: Format
         :name: format

      A data frame with 1316 observations on the following 4 variables.

      ``class``
         a factor with levels ``1st class`` ``2nd class`` ``3rd class``
         ``crew``

      ``age``
         a factor with levels ``child`` ``adults``

      ``sex``
         a factor with levels ``women`` ``man``

      ``survived``
         a factor with levels ``no`` ``yes``

      .. rubric:: Details
         :name: details

      titanic is saved as a data frame. Used to assess risk ratios

      .. rubric:: Source
         :name: source

      Found in many other texts

      .. rubric:: References
         :name: references

      Hilbe, Joseph M (2014), Modeling Count Data, Cambridge University
      Press Hilbe, Joseph M (2007, 2011), Negative Binomial Regression,
      Cambridge University Press Hilbe, Joseph M (2009), Logistic
      Regression Models, Chapman & Hall/CRC

      .. rubric:: Examples
         :name: examples

      ::

         data(titanic)
         titanic$survival <- titanic$survived == "yes"
         glmlr <- glm(survival ~ age + sex + factor(class), family=binomial, data=titanic)
         summary(glmlr)
