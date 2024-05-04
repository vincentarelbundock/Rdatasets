.. container::

   .. container::

      ====================== ===============
      tissue_gene_expression R Documentation
      ====================== ===============

      .. rubric:: Gene expression profiles for 189 biological samples
         taken from seven different tissue types.
         :name: gene-expression-profiles-for-189-biological-samples-taken-from-seven-different-tissue-types.

      .. rubric:: Description
         :name: description

      This is a subset of the data provided by the
      ``tissuesGeneExpression`` package available from the
      ``genomicsclass`` GitHub repository. The predictors are gene
      expression measurements from 500 genes that are a random subset of
      the original 22,215.

      .. rubric:: Usage
         :name: usage

      ::

         tissue_gene_expression

      .. rubric:: Format
         :name: format

      An object of class ``list``.

      .. rubric:: Details
         :name: details

      The example dataset is recommended for illustrating clustering and
      machine learning techniques.

      -  x. The predictors composed of 500 genes. Each row is a gene
         expression profile and each column is different gene. The
         column names are the gene symbols.

      -  y. The outcomes. A character vector representing the tissue.
         One of seven tissue types.

      .. rubric:: Source
         :name: source

      https://github.com/genomicsclass/tissuesGeneExpression

      .. rubric:: Examples
         :name: examples

      ::

         table(tissue_gene_expression$y)
         dim(tissue_gene_expression$x)
