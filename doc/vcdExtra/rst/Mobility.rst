======== ===============
Mobility R Documentation
======== ===============

Social Mobility data
--------------------

Description
~~~~~~~~~~~

Data on social mobility, recording the occupational category of fathers
and their sons.

Format
~~~~~~

A 2-dimensional array resulting from cross-tabulating 2 variables for
19912 observations. The variable names and their levels are:

+----+--------------------------------+------------------------------------------------------------+
| No | Name                           | Levels                                                     |
+----+--------------------------------+------------------------------------------------------------+
| 1  | ``⁠Son's_Occupation⁠``           | ``⁠"UpNonMan", "LoNonMan", "UpManual", "LoManual", "Farm"⁠`` |
+----+--------------------------------+------------------------------------------------------------+
| 2  | ``⁠Father's_Occupation⁠``        | ``⁠"UpNonMan", "LoNonMan", "UpManual", "LoManual", "Farm"⁠`` |
+----+--------------------------------+------------------------------------------------------------+
|    |                                |                                                            |
+----+--------------------------------+------------------------------------------------------------+

Source
~~~~~~

Falguerolles, A. de and Mathieu, J. R. (1988). *Proceedings of COMPSTAT
88*, Copenhagen, Denmark, Springer-Verlag.

% FeathermanHauser:78

Featherman, D. L. and Hauser, R. M. Occupations and social mobility in
the United States. *Sociological Microjournal*, 12, Fiche 62.
Copenhagen: Sociological Institute.

See Also
~~~~~~~~

``Glass``, ``Hauser79``, ``Yamaguchi87`` for other examples of mobility
data.

Examples
~~~~~~~~

.. code:: R


   data(Mobility)
   Mobility

   # independence model
   MASS::loglm(~Father_Occupation + Son_Occupation, data = Mobility)

   vcd::mosaic(Mobility, shade=TRUE, legend = FALSE)
