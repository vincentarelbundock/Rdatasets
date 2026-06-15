========= ===============
coralPval R Documentation
========= ===============

P-values from biological expression array data
----------------------------------------------

Description
~~~~~~~~~~~

P-values were calculated for each of 3072 genes, for data that compared
expression values between post-settlement coral larvae and
pre-settlement coral larvae.

Usage
~~~~~

.. code:: R

   data("coralPval")

Format
~~~~~~

The format is: num [1:3072, 1] 8.60e-01 3.35e-08 3.96e-01 2.79e-01
6.36e-01 ...

Details
~~~~~~~

t-statistics, and hence p-values, were derived from five replicate
two-colour micro-array slides. Details are in a vignette that
accompanies the DAAGbio package.

Source
~~~~~~

See the ``?DAAGbio::coralRG``

References
~~~~~~~~~~

Grasso, L. C.; Maindonald, J.; Rudd, S.; Hayward, D. C.; Saint, R.;
Miller, D. J.; and Ball, E. E., 2008. Microarray analysis identifies
candidate genes for key roles in coral development. BMC Genomics, 9:540.

Examples
~~~~~~~~

.. code:: R

   ## From p-values, calculate Benjamini-Hochberg false discrimination rates
   fdr <- p.adjust(DAAG::coralPval, method='BH')
   ## Number of genes identified as differentially expressed for FDR = 0.01
   sum(fdr<=0.01)
