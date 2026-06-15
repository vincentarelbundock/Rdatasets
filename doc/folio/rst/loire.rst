===== ===============
loire R Documentation
===== ===============

Medieval Ceramics from the Loire Basin
--------------------------------------

Description
~~~~~~~~~~~

A dataset containing the ceramic counts from the Loire Basin (France).

Usage
~~~~~

.. code:: R

   loire

Format
~~~~~~

A ``data.frame`` with 332 observations (assemblages) and 331 variables
(ceramic types). The first five columns provide background information,
the next columns give the MNI of each ceramic types:

site
   ``character``: name of the archaeological site.

city
   ``character``: city.

area
   ``character``: geographical area.

lower
   ``integer``: lower bound of the temporal range (year AD).

upper
   ``integer``: upper bound of the temporal range (year AD).

Source
~~~~~~

https://ceramedvaldeloire.huma-num.fr/editions/suppl79racf2022/accueil

References
~~~~~~~~~~

Husi, P. (dir.). (2022). *La céramique médiévale et moderne du bassin de
la Loire moyenne, chrono-typologie et transformation des aires
culturelles dans la longue durée (6e-19e s.)*. Suppléments à la revue
Archéologique du Centre de la France, 79.

See Also
~~~~~~~~

Other count data: ``birds``, ``boves``, ``chevelon``, ``compiegne``,
``merzbach``, ``mississippi``, ``zuni``
