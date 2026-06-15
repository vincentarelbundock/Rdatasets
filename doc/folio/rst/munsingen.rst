========= ===============
munsingen R Documentation
========= ===============

Münsingen Cemetery
------------------

Description
~~~~~~~~~~~

A dataset of data set of artifact presence/absence for the Celtic
Münsingen-Rain cemetery (Switzerland).

Usage
~~~~~

.. code:: R

   munsingen

Format
~~~~~~

A ``data.frame`` with 59 observations (graves) and 70 variables
(artefact types).

References
~~~~~~~~~~

Hodson, F. R. (1968). *The La Tene Cemetery at Münsingen-Rain*.
Stämpfli, Bern.

Kendall, D. G. (1971). Seriation from abundance matrices. In Hodson, F.
R., Kendall, D. G. and Tautu, P. (eds), *Mathematics in the
Archaeological and Historical Sciences*. Edinburgh University Press,
Edinburgh, 215-232.

See Also
~~~~~~~~

Other artefact data: ``shipwrecks``

Examples
~~~~~~~~

.. code:: R

   heatmap(
     x = as.matrix(munsingen),
     Rowv = NA,
     Colv = NA,
     scale = "none",
     col = c("white", "black")
   )
