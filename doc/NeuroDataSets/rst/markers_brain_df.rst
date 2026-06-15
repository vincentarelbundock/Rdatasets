================ ===============
markers_brain_df R Documentation
================ ===============

Cross-Species Brain Cell Marker Genes
-------------------------------------

Description
~~~~~~~~~~~

This dataset, markers_brain_df, is a data frame containing the top 1,000
marker genes for each of six major brain cell types (astrocytes,
endothelial cells, microglia, neurons, oligodendrocytes, and OPCs)
identified through meta-analysis of both human and mouse brain gene
expression data.

Usage
~~~~~

.. code:: R

   data(markers_brain_df)

Format
~~~~~~

A data frame with 6,000 observations and 2 variables:

markers
   Character: Gene symbol for cell-type specific marker (human/mouse
   orthologs)

cell
   Character: Cell type classification
   (astrocytes/endothelial/microglia/neurons/oligodendrocytes/OPCs)

Details
~~~~~~~

The dataset name has been kept as 'markers_brain_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package. The
suffix 'df' indicates that the dataset is a data frame. The original
content has not been modified.

Source
~~~~~~

Data taken from the BRETIGEA package version 1.0.3. Derived from:
Meta-analysis of human and mouse brain cell-type specific gene
expression datasets.
