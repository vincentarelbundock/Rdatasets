.. container::

   .. container::

      ========= ===============
      munsingen R Documentation
      ========= ===============

      .. rubric:: Münsingen Cemetery
         :name: münsingen-cemetery

      .. rubric:: Description
         :name: description

      A dataset of data set of artifact presence/absence for the Celtic
      Münsingen-Rain cemetery (Switzerland).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         munsingen

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 59 observations (graves) and 70 variables
      (artefact types).

      .. rubric:: References
         :name: references

      Hodson, F. R. (1968). *The La Tene Cemetery at Münsingen-Rain*.
      Stämpfli, Bern.

      Kendall, D. G. (1971). Seriation from abundance matrices. In
      Hodson, F. R., Kendall, D. G. and Tautu, P. (eds), *Mathematics in
      the Archaeological and Historical Sciences*. Edinburgh University
      Press, Edinburgh, 215-232.

      .. rubric:: See Also
         :name: see-also

      Other artefact data: ``shipwrecks``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         heatmap(
           x = as.matrix(munsingen),
           Rowv = NA,
           Colv = NA,
           scale = "none",
           col = c("white", "black")
         )
