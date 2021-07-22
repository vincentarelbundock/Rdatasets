=========== ===============
pancreatic2 R Documentation
=========== ===============

pancreatic2
-----------

Description
~~~~~~~~~~~

This is the same data as in 'pancreatic', with overall and
progression-free survival calculated. Dates have been removed.

Usage
~~~~~

::

   data("pancreatic2")

Format
~~~~~~

A data frame with 41 observations on the following 4 variables.

``pfs``
   Progression-free survival: Time from entry until disease progression.
   If no progression was observed, before death, the time to death is
   used.

``os``
   Overall survival: Time from entry until death

``status``
   This censoring indicator is 1 for all patients, since all patients
   died.

``stage``
   a factor with levels ``LA`` (locally advanced) or ``M`` (metastatic)

References
~~~~~~~~~~

Moss RA, Moore D, Mulcahy MF, Nahum K, Saraiya B, Eddy S, Kleber M, and
Poplin EA (2012) A multi-institutional phase 2 study of imatinib
mesylate and gemcitabine for first-line treatment of advanced pancreatic
cancer. Gastrointestinal Cancer Research 5, 77 - 83.

Examples
~~~~~~~~

::

   data(pancreatic2)
