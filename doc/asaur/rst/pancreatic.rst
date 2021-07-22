========== ===============
pancreatic R Documentation
========== ===============

pancreatic
----------

Description
~~~~~~~~~~~

Data from a Phase II clinical trial of patients with locally advanced or
metastatic pancreatic cancer.

Usage
~~~~~

::

   data("pancreatic")

Format
~~~~~~

A data frame with 41 observations on the following 4 variables.

``stage``
   a factor with levels ``LA`` (locally advanced) or ``M`` (metastatic)

``onstudy``
   date of enrollment into the clinical trial, in month/day/year format

``progression``
   date of progression, in month/day/year format

``death``
   date of death, in month/day/year format

Details
~~~~~~~

Since all patients in this study have known death dates, there is no
censoring.

References
~~~~~~~~~~

Moss RA, Moore D, Mulcahy MF, Nahum K, Saraiya B, Eddy S, Kleber M, and
Poplin EA (2012) A multi-institutional phase 2 study of imatinib
mesylate and gemcitabine for first-line treatment of advanced pancreatic
cancer. Gastrointestinal Cancer Research 5, 77 - 83.

Examples
~~~~~~~~

::

   data(pancreatic)
