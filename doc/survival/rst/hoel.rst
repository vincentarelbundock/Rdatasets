.. container::

   ==== ===============
   hoel R Documentation
   ==== ===============

   .. rubric:: Mouse cancer data
      :name: hoel

   .. rubric:: Description
      :name: description

   Days until occurence of cancer for male mice

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("cancer")

   .. rubric:: Format
      :name: format

   A data frame with 181 observations on the following 4 variables.

   ``trt``
      treatment assignment: ``Control`` or ``Germ-free``

   ``days``
      days until death

   ``outcome``
      outcome: codecensor, ``thymic lymphoma``,
      ``reticulum cell sarcoma`` ``other causes``

   ``id``
      mouse id

   .. rubric:: Details
      :name: details

   Two groups of male mice were given 300 rads of radiation and followed
   for cancer incidence. One group was maintained in a germ free
   environment. The data set is used as an example of competing risks in
   Kalbfleisch and Prentice. The germ-free environment has little effect
   on the rate of occurence of thymic lymphoma, but significantly delays
   the other causes of death.

   .. rubric:: Note
      :name: note

   The Ontology Search website defines reticulm cell sarcoma as "An
   antiquated term that refers to a non-Hodgkin lymphoma composed of
   diffuse infiltrates of large, often anaplastic lymphocytes".

   .. rubric:: Source
      :name: source

   The data can be found in appendix I of Kalbfleisch and Prentice.

   .. rubric:: References
      :name: references

   Hoel, D.G. (1972), A representation of mortality data by competing
   risks. Biometrics 33, 1-30. Kalbfleisch, J.D. and Prentice, R.L.
   (1980). The statistical analysis of failure time data.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      hsurv <- survfit(Surv(days, outcome) ~ trt, data = hoel, id= id)
      plot(hsurv, lty=1:2, col=rep(1:3, each=2), lwd=2, xscale=30.5,
            xlab="Months", ylab= "Death")
      legend("topleft", c("Lymphoma control", "Lymphoma germ free",
                          "Sarcoma control", "Sarcoma germ free",
                          "Other control", "Other germ free"),
             col=rep(1:3, each=2), lty=1:2, lwd=2, bty='n')
      hfit <- coxph(Surv(days, outcome) ~ trt, data= hoel, id = id)
