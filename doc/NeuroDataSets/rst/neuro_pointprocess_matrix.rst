.. container::

   .. container::

      ========================= ===============
      neuro_pointprocess_matrix R Documentation
      ========================= ===============

      .. rubric:: Neurophysiological Point Process Data
         :name: neurophysiological-point-process-data

      .. rubric:: Description
         :name: description

      This dataset, neuro_pointprocess_matrix, is a matrix containing
      times of observed neuronal firing in windows of 250ms surrounding
      stimulus application in human subjects. Each row represents an
      experimental replication (469 total replicates), with values
      indicating spike times relative to stimulus onset.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(neuro_pointprocess_matrix)

      .. rubric:: Format
         :name: format

      A numeric matrix with 469 observations (rows) and 6 variables
      (columns):

      [,1:6]
         Numeric: Spike times (milliseconds) relative to stimulus onset,
         with NA representing no spike in that trial window

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'neuro_pointprocess_matrix' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'matrix' indicates that the
      dataset is a matrix. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the boot package version 1.3-31. Original
      collection: Dr. S.J. Boniface, Neurophysiology Unit, Radcliffe
      Infirmary, Oxford.
