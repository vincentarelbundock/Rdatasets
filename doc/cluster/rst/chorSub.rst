.. container::

   .. container::

      ======= ===============
      chorSub R Documentation
      ======= ===============

      .. rubric:: Subset of C-horizon of Kola Data
         :name: subset-of-c-horizon-of-kola-data

      .. rubric:: Description
         :name: description

      This is a small rounded subset of the C-horizon data ``chorizon``
      from package mvoutlier.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(chorSub)

      .. rubric:: Format
         :name: format

      A data frame with 61 observations on 10 variables. The variables
      contain scaled concentrations of chemical elements.

      .. rubric:: Details
         :name: details

      This data set was produced from ``chorizon`` via these statements:

      ::

             data(chorizon, package = "mvoutlier")
             chorSub <- round(100*scale(chorizon[,101:110]))[190:250,]
             storage.mode(chorSub) <- "integer"
             colnames(chorSub) <- gsub("_.*", '', colnames(chorSub))
           

      .. rubric:: Source
         :name: source

      Kola Project (1993-1998)

      .. rubric:: See Also
         :name: see-also

      ``chorizon`` in package mvoutlier and other Kola data in the same
      package.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(chorSub)
         summary(chorSub)
         pairs(chorSub, gap= .1)# some outliers
