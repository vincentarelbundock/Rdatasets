=========== ===============
schoolsites R Documentation
=========== ===============

Schooldata Sites
----------------

Description
~~~~~~~~~~~

Descriptors for the sites of the ``schooldata`` dataset, from Charnes et
al. (1981). The study was designed to compare schools using Program
Follow Through (PFT) management methods of taking actions to achieve
goals with those of Non Follow Through (NFT). Observations ``1:49`` came
from PFT sites and ``50:70`` from NFT sites. This dataset gives other
descriptors for the sites, from their Exhibit C.

Usage
~~~~~

.. code:: R

   data("schoolsites")

Format
~~~~~~

A data frame with 70 observations on the following 7 variables.

``site``
   site number, a numeric vector

``type``
   program type, a factor with levels ``PFT`` ("Program Follow Through")
   and ``NFT`` ("Non Follow Through")

``model``
   education style model, a factor with levels ``BA``, ``⁠Bank Street⁠``,
   ``⁠California Process⁠``, ``⁠Cognitive Curriculum⁠``, ``DIM``, ``EDC``,
   ``Home-School``, ``ILM``, ``⁠Parent Education⁠``,
   ``⁠Responsive Education⁠``, ``SEDL``, ``TEEM``

``site_name``
   location of site, a character vector

``region``
   US region, a factor with levels ``NC``, ``NE``, ``S``, ``W``

``city_size``
   city size, an ordered factor with levels ``Rural`` < ``Small`` <
   ``Medium`` < ``Large``

``student_pop``
   size of the student population, a numeric vector

% @details %% ~~ If necessary, more details than the **description**
above ~~

Source
~~~~~~

A. Charnes, W.W. Cooper and E. Rhodes (1981). Evaluating Program and
Managerial Efficiency: An Application of Data Envelopment Analysis to
Program Follow Through. *Management Science*, **27**, 668-697, Exhibit
C.

See Also
~~~~~~~~

``schooldata``

Examples
~~~~~~~~

.. code:: R

   data(schoolsites)
   str(schoolsites)
   schools <- cbind(schooldata, schoolsites)
   schools.mod <- lm(cbind(reading, mathematics, selfesteem) ~
                       education + occupation + visit + counseling + teacher +
                       type + region, data = schools)
   car::Anova(schools.mod)
