.. container::

   .. container::

      ==== ===============
      brca R Documentation
      ==== ===============

      .. rubric:: Breast Cancer Wisconsin Diagnostic Dataset from UCI
         Machine Learning Repository
         :name: breast-cancer-wisconsin-diagnostic-dataset-from-uci-machine-learning-repository

      .. rubric:: Description
         :name: description

      Biopsy features for classification of 569 malignant (cancer) and
      benign (not cancer) breast masses.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         brca

      .. rubric:: Format
         :name: format

      An object of class ``list``.

      .. rubric:: Details
         :name: details

      Features were computationally extracted from digital images of
      fine needle aspirate biopsy slides. Features correspond to
      properties of cell nuclei, such as size, shape and regularity. The
      mean, standard error, and worst value of each of 10 nuclear
      parameters is reported for a total of 30 features.

      This is a classic dataset for training and benchmarking machine
      learning algorithms.

      -  y. The outcomes. A factor with two levels denoting whether a
         mass is malignant ("M") or benign ("B").

      -  x. The predictors. A matrix with the mean, standard error and
         worst value of each of 10 nuclear measurements on the slide,
         for 30 total features per biopsy:

         -  radius. Nucleus radius (mean of distances from center to
            points on perimeter).

         -  texture. Nucleus texture (standard deviation of grayscale
            values).

         -  perimeter. Nucleus perimeter.

         -  area. Nucleus area.

         -  smoothness. Nucleus smoothness (local variation in radius
            lengths).

         -  compactness. Nucleus compactness (perimeter^2/area - 1).

         -  concavity, Nucleus concavity (severity of concave portions
            of the contour).

         -  concave_pts. Number of concave portions of the nucleus
            contour.

         -  symmetry. Nucleus symmetry.

         -  fractal_dim. Nucleus fractal dimension ("coastline
            approximation" -1).

      .. rubric:: Source
         :name: source

      `UCI Machine Learning
      Repository <https://archive.ics.uci.edu/ml/datasets/>`__

      .. rubric:: Examples
         :name: examples

      .. code:: R

         table(brca$y)
         dim(brca$x)
         head(brca$x)
