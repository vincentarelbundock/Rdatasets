===== ===============
Mmmec R Documentation
===== ===============

Malignant melanoma deaths in Europe
-----------------------------------

Description
~~~~~~~~~~~

Malignant Melanoma Mortality in the European Community associated with
the impact of UV radiation exposure.

Usage
~~~~~

.. code:: R

   data(Mmmec)

Format
~~~~~~

A data frame with 354 observations on the following 6 variables.

nation
   a factor with levels ``Belgium``, ``W.Germany``, ``Denmark``,
   ``France``, ``UK``, ``Italy``, ``Ireland``, ``Luxembourg``, and
   ``Netherlands``

region
   Region ID - a factor.

county
   County ID - a factor.

deaths
   Number of male deaths due to MM during 1971–1980

expected
   Number of expected deaths.

uvb
   Centered measure of the UVB dose reaching the earth's surface in each
   county.

Source
~~~~~~

https://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

References
~~~~~~~~~~

Langford, I.H., Bentham, G. and McDonald, A. 1998: Multilevel modelling
of geographically aggregated health data: a case study on malignant
melanoma mortality and UV exposure in the European community.
*Statistics in Medicine* 17: 41-58.

Examples
~~~~~~~~

.. code:: R

   str(Mmmec)
   summary(Mmmec)
   (fm1 <- glmer(deaths ~ uvb + (1|region), Mmmec, poisson, offset = log(expected)))
