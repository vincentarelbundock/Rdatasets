=========== ===============
EndScrapers R Documentation
=========== ===============

Upper Paleolithic End Scrapers from Castenet A and Ferrassie H, France
----------------------------------------------------------------------

Description
~~~~~~~~~~~

Data on 3000 Upper Paleolithic end scrapers from two sites analyzed by
James Sackett (1966) and reanalyzed by Dwight Read (1974 and 2007).

Usage
~~~~~

.. code:: R

   data(EndScrapers)

Format
~~~~~~

A data frame with 48 observations on the following 6 variables.

``Width``
   Width: ``Narrow``, ``Wide``

``Sides``
   Sides: ``Convergent``, ``Parallel``

``Curvature``
   End Curvature: ``Round``, ``Medium``, ``Shallow``

``Retouched``
   Retouching: ``Retouched``, ``Unretouched``

``Site``
   Site: ``Castenet A``, ``Ferrassie H``

``Freq``
   Number of end scrapers

Details
~~~~~~~

The scrapers are grouped on 5 categorical variables into 48 groups.
Sackett's analysis employed Chi square and the examination of residuals.
Read used the data to illustrate loglinear modelling (1974, 2007). The
data come from Tables IV and VIII (pp 373 and 380) in Sackett's original
article

Source
~~~~~~

Sackett, James R. 1966. Quantitative Analysis of Upper Paleolithic Stone
Tools. *American Anthropologist* 68(2): 356–394.

References
~~~~~~~~~~

Carlson, David L. 2017. *Quantitative Methods in Archaeology Using R*.
Cambridge University Press, pp 72-77, 91-94.

Read, Dwight W. 1974. Some Comments on Typologies in Archaeology and an
Outline of a Methodology. *American Antiquity* 39: 216-242.

Read, Dwight W. 2007. *Artifact Classification: A Conceptual and
Methodological Approach*. Left Coast Press.

Examples
~~~~~~~~

.. code:: R

   data(EndScrapers)
   xtabs(Freq~Site+Curvature, EndScrapers)
   xtabs(Freq~Curvature+Sides+Site, EndScrapers)
