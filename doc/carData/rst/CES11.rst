===== ===============
CES11 R Documentation
===== ===============

2011 Canadian National Election Study, With Attitude Toward Abortion
--------------------------------------------------------------------

Description
~~~~~~~~~~~

Data are drawn from the 2011 Canadian National Election Study, including
a question on banning abortion and variables related to the sampling
design.

Usage
~~~~~

::

   data("CES11")

Format
~~~~~~

A data frame with 2231 observations on the following 9 variables.

``id``
   Household ID number.

``province``
   a factor with (alphabetical) levels ``AB``, ``BC``, ``MB``, ``NB``,
   ``NL``, ``NS``, ``ON``, ``PE``, ``QC``, ``SK``; the sample was
   stratified by province.

``population``
   population of the respondent's province, number over age 17.

``weight``
   weight sample to size of population, taking into account unequal
   sampling probabilities by province and household size.

``gender``
   a factor with levels ``Female``, ``Male``.

``abortion``
   attitude toward abortion, a factor with levels ``No``, ``Yes``;
   answer to the question "Should abortion be banned?"

``importance``
   importance of religion, a factor with (alphabetical) levels ``not``,
   ``notvery``, ``somewhat``, ``very``; answer to the question, "In your
   life, would you say that religion is very important, somewhat
   important, not very important, or not important at all?"

``education``
   a factor with (alphabetical) levels ``bachelors`` (Bachelors degree),
   ``college`` (community college or technical school), ``higher``
   (graduate degree), ``HS`` (high-school graduate), ``lessHS`` (less
   than high-school graduate), ``somePS`` (some post-secondary).

``urban``
   place of residence, a factor with levels ``rural``, ``urban``.

Details
~~~~~~~

This is an extract from the data set for the 2011 Canadian National
Election Study distributed by the Institute for Social Research, York
University.

References
~~~~~~~~~~

Fournier, P., Cutler, F., Soroka, S., and Stolle, D. (2013). Canadian
Election Study 2011: Study documentation. Technical report, Canadian
Opinion Research Archive, Queen's University, Kingson,Ontario.

Northrup, D. (2012). The 2011 Canadian Election Survey: Technical
documention. Technical report, Institute for Social Research, York
University, Toronto, Ontario.

Examples
~~~~~~~~

::

   summary(CES11)
