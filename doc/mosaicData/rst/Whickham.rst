======== ===============
Whickham R Documentation
======== ===============

Data from the Whickham survey
-----------------------------

Description
~~~~~~~~~~~

Data on age, smoking, and mortality from a one-in-six survey of the
electoral roll in Whickham, a mixed urban and rural district near
Newcastle upon Tyne, in the UK. The survey was conducted in 1972-1974 to
study heart disease and thyroid disease. A follow-up on those in the
survey was conducted twenty years later.

Usage
~~~~~

::

   data(Whickham)

Format
~~~~~~

A data frame with 1314 observations on women for the following
variables.

-  ``outcome`` survival status after 20 years: a factor with levels
   ``Alive`` ``Dead``

-  ``smoker`` smoking status at baseline: a factor with levels ``No``
   ``Yes``

-  ``age`` age (in years) at the time of the first survey

Details
~~~~~~~

This dataset contains a subset of the survey sample: women who were
classified as current smokers or as never having smoked. The data were
synthesized from the summary description tables given in the Appleton et
al al paper.

References
~~~~~~~~~~

DR Appleton, JM French, MPJ Vanderpump. "Ignoring a covariate: an
example of Simpson's paradox". (1996) *American Statistician*,
50(4):340-341.

Examples
~~~~~~~~

::

   data(Whickham)

