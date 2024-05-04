.. container::

   .. container::

      ===== ===============
      NCI60 R Documentation
      ===== ===============

      .. rubric:: NCI 60 Data
         :name: nci-60-data

      .. rubric:: Description
         :name: description

      NCI microarray data. The data contains expression levels on 6830
      genes from 64 cancer cell lines. Cancer type is also recorded.

      .. rubric:: Usage
         :name: usage

      ::

         NCI60

      .. rubric:: Format
         :name: format

      The format is a list containing two elements: ``data`` and
      ``labs``.

      ``data`` is a 64 by 6830 matrix of the expression values while
      ``labs`` is a vector listing the cancer types for the 64 cell
      lines.

      .. rubric:: Source
         :name: source

      The data come from Ross et al. (Nat Genet., 2000). More
      information can be obtained at
      http://genome-www.stanford.edu/nci60/

      .. rubric:: References
         :name: references

      James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
      Introduction to Statistical Learning with applications in R*,
      https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      ::

         table(NCI60$labs)
