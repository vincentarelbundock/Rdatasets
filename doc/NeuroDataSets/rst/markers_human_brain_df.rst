.. container::

   .. container::

      ====================== ===============
      markers_human_brain_df R Documentation
      ====================== ===============

      .. rubric:: Human Brain Cell Marker Genes
         :name: human-brain-cell-marker-genes

      .. rubric:: Description
         :name: description

      This dataset, markers_human_brain_df, is a data frame containing
      the top 1,000 marker genes for each of six major brain cell types
      (astrocytes, endothelial cells, microglia, neurons,
      oligodendrocytes, and OPCs) identified through meta-analysis of
      human brain gene expression data.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(markers_human_brain_df)

      .. rubric:: Format
         :name: format

      A data frame with 5,500 observations and 2 variables:

      markers
         Character: Gene symbol for cell-type specific marker

      cell
         Character: Cell type classification
         (astrocytes/endothelial/microglia/neurons/oligodendrocytes/OPCs)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'markers_human_brain_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the BRETIGEA package version 1.0.3.
