.. container::

   .. container::

      ====== ===============
      skulls R Documentation
      ====== ===============

      .. rubric:: Egyptian Skulls
         :name: egyptian-skulls

      .. rubric:: Description
         :name: description

      Measurements made on Egyptian skulls from five epochs.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("skulls")

      .. rubric:: Format
         :name: format

      A data frame with 150 observations on the following 5 variables.

      ``epoch``
         the epoch the skull as assigned to, a factor with levels
         ``c4000BC`` ``c3300BC``, ``c1850BC``, ``c200BC``, and
         ``cAD150``, where the years are only given approximately, of
         course.

      ``mb``
         maximum breaths of the skull.

      ``bh``
         basibregmatic heights of the skull.

      ``bl``
         basialiveolar length of the skull.

      ``nh``
         nasal heights of the skull.

      .. rubric:: Details
         :name: details

      The question is whether the measurements change over time.
      Non-constant measurements of the skulls over time would indicate
      interbreeding with immigrant populations.

      .. rubric:: Source
         :name: source

      D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski
      (1994). *A Handbook of Small Datasets*, Chapman and Hall/CRC,
      London.

      .. rubric:: Examples
         :name: examples

      .. code:: R

           data("skulls", package = "HSAUR")
           means <- tapply(1:nrow(skulls), skulls$epoch, function(i)
                        apply(skulls[i,colnames(skulls)[-1]], 2, mean))
           means <- matrix(unlist(means), nrow = length(means), byrow = TRUE)
           colnames(means) <- colnames(skulls)[-1]
           rownames(means) <- levels(skulls$epoch)
           pairs(means,
               panel = function(x, y) {
                   text(x, y, levels(skulls$epoch))
               })
