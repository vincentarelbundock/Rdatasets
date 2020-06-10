===== ===============
NCI60 R Documentation
===== ===============

NCI 60 Data
-----------

Description
~~~~~~~~~~~

NCI microarray data. The data contains expression levels on 6830 genes
from 64 cancer cell lines. Cancer type is also recorded.

Usage
~~~~~

::

   NCI60

Format
~~~~~~

The format is a list containing two elements: ``data`` and ``labs``.

``data`` is a 64 by 6830 matrix of the expression values while ``labs``
is a vector listing the cancer types for the 64 cell lines.

Source
~~~~~~

The data come from Ross et al. (Nat Genet., 2000). More information can
be obtained at http://genome-www.stanford.edu/nci60/

References
~~~~~~~~~~

James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
Introduction to Statistical Learning with applications in R*,
`www.StatLearning.com <www.StatLearning.com>`__, Springer-Verlag, New
York

Examples
~~~~~~~~

::

   table(NCI60$labs)
