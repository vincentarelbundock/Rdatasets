=================== ===============
betablockers_matrix R Documentation
=================== ===============

FDA Beta Blockers Adverse Events
--------------------------------

Description
~~~~~~~~~~~

This dataset, betablockers_matrix, is a matrix containing adverse event
reports from the FDA Adverse Event Reporting System (FAERS) for 9 beta
blockers from Q1 2021 to Q4 2023. The matrix includes 501 adverse events
(rows) across 9 medications (columns).

Usage
~~~~~

.. code:: R

   data(betablockers_matrix)

Format
~~~~~~

A matrix with 501 rows (adverse events) and 9 columns (beta blockers):

Acebutolol
   Adverse event counts for Acebutolol (integer)

Atenolol
   Adverse event counts for Atenolol (integer)

Bisoprolol
   Adverse event counts for Bisoprolol (integer)

Carvedilol
   Adverse event counts for Carvedilol (integer)

Metoprolol
   Adverse event counts for Metoprolol (integer)

Nadolol
   Adverse event counts for Nadolol (integer)

Propranolol
   Adverse event counts for Propranolol (integer)

Timolol
   Adverse event counts for Timolol (integer)

Other
   Adverse event counts for other beta blockers (integer)

Details
~~~~~~~

The dataset name has been kept as 'betablockers_matrix' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the CardioDataSets package and
assists users in identifying its specific characteristics. The suffix
'matrix' indicates that the dataset is a matrix object. The original
content has not been modified in any way.

Source
~~~~~~

Data taken from the MDDC package version 1.1.0. Original data: FDA
Adverse Event Reporting System (FAERS) database, Q1 2021 to Q4 2023.
