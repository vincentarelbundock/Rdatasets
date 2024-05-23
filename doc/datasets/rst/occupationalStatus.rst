.. container::

   .. container::

      ================== ===============
      occupationalStatus R Documentation
      ================== ===============

      .. rubric:: Occupational Status of Fathers and their Sons
         :name: occupational-status-of-fathers-and-their-sons

      .. rubric:: Description
         :name: description

      Cross-classification of a sample of British males according to
      each subject's occupational status and his father's occupational
      status.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         occupationalStatus

      .. rubric:: Format
         :name: format

      A ``table`` of counts, with classifying factors ``origin``
      (father's occupational status; levels ``1:8``) and ``destination``
      (son's occupational status; levels ``1:8``).

      .. rubric:: Source
         :name: source

      Goodman, L. A. (1979) Simple Models for the Analysis of
      Association in Cross-Classifications having Ordered Categories.
      *J. Am. Stat. Assoc.*, **74** (367), 537–552.

      The data set has been in package
      `gnm <https://CRAN.R-project.org/package=gnm>`__ and been provided
      by the package authors.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)

         plot(occupationalStatus)

         ##  Fit a uniform association model separating diagonal effects
         Diag <- as.factor(diag(1:8))
         Rscore <- scale(as.numeric(row(occupationalStatus)), scale = FALSE)
         Cscore <- scale(as.numeric(col(occupationalStatus)), scale = FALSE)
         modUnif <- glm(Freq ~ origin + destination + Diag + Rscore:Cscore,
                        family = poisson, data = occupationalStatus)

         summary(modUnif)
         plot(modUnif) # 4 plots, with warning about  h_ii ~= 1
