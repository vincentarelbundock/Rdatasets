====== ===============
Harman R Documentation
====== ===============

Five data sets from Harman (1967). 9 cognitive variables from Holzinger and 8 emotional variables from Burt
-----------------------------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

Five classic data sets reported by Harman (1967) are 9 psychological
(cognitive) variables taken from Holzinger and 8 emotional variables
taken from Burt. Two others are socioeconomic and political data sets.
Additionally, 8 physical variables. All five of these are used for tests
and demonstrations of various factoring algortithms.

Usage
~~~~~

::

   data(Harman)  
   data(Harman.5)
   data(Harman.political)
   data(Harman.8)

Details
~~~~~~~

-  Harman.Holzinger: 9 x 9 correlation matrix of ability tests, N = 696.

-  Harman.Burt: a 8 x 8 correlation matrix of “emotional" items. N = 172

-  Harman.5: 12 census tracts for 5 socioeconomic data (Harman p 14)

-  Harman.political: p 166.

-  Harman.8 8 physical measures

Harman.Holzinger. The nine psychological variables from Harman (1967, p
244) are taken from unpublished class notes of K.J. Holzinger with 696
participants. This is a subset of 12 tests with 4 factors. It is yet
another nice example of a bifactor solution. Bentler (2007) uses this
data set to discuss reliablity analysis. The data show a clear bifactor
structure and are a nice example of the various estimates of reliability
included in the ``omega`` function. Should not be confused with the
``Holzinger`` or ``Holzinger.9`` data sets in ``bifactor``.

See also the Holzinger-Swineford data set of 301 subjects with 26
variables in ``holzinger.swineford``. These data were provided by Keith
Widaman. "The Holzinger and Swineford (1939) data have been used as a
model data set by many investigators. For example, Harman (1976) used
the "24 Psychological Variables" example prominently in his
authoritative text on multiple factor analysis, and the data presented
under this rubric consisted of 24 of the variables from the Grant-White
school (N = 145). Meredith (1964a, 1964b) used several variables from
the Holzinger and Swineford study in his work on factorial invariance
under selection. Joreskog (1971) based his work on multiple-group
confirmatory factor analysis using the Holzinger and Swineford data,
subsetting the data into four groups.

Rosseel, who developed the "lavaan" package for R , included 9 of the
manifest variables from Holzinger and Swineford (1939) as a "resident"
data set when one downloads the lavaan package. Several background
variables are included in this "resident" data set in addition to 9 of
the psychological tests (which are named x1 - x9 in the data set). When
analyzing these data, I found the distributions of the variables (means,
SDs) did not match the sample statistics from the original article. For
example, in the "resident" data set in lavaan, scores on all manifest
variables ranged between 0 and 10, sample means varied between 3 and 6,
and sample SDs varied between 1.0 and 1.5. In the original data set,
scores ranges were rather different across tests, with some variables
having scores that ranged between 0 and 20, but other manifest variables
having scores ranging from 50 to over 300 - with obvious attendant
differences in sample means and SDs."

Harman.Burt. Eight “emotional" variables are taken from Harman (1967, p
164) who in turn adapted them from Burt (1939). They are said be from
172 normal children aged nine to twelve. As pointed out by Harman, this
correlation matrix is singular and has squared multiple correlations >
1. Because of this problem, it is a nice test case for various factoring
algorithms. (For instance, omega will issue warning messages for
fm="minres" or fm="pa" but will fail for fm="ml".)

The Eight Physical Variables problem is taken from Harman (1976) and
represents the correlations between eight physical variables for 305
girls. The two correlated clusters represent four measures of
"lankiness" and then four measures of "stockiness". The original data
were selected from 17 variables reported in an unpublished dissertation
by Mullen (1939).

Variable 6 ("Bitrochanteric diamter") is the distance between the outer
points of the hips.

The row names match the original Harman paper, the column names have
been abbreviated.

See also the ``usaf`` data set for other physical measurements.

The ``fa`` solution for principal axes (fm="pa") matches the reported
minres solution, as does the fm="minres".

For those interested in teaching examples using various body
measurements, see the body data set in the gclus package.

The Burt data set probably has a typo in the original correlation
matrix. Changing the Sorrow- Tenderness correlation from .87 to .81
makes the correlation positive definite.

As pointed out by Jan DeLeeuw, the Burt data set is a subset of 8
variables from the original 11 reported by Burt in 1915. That matrix has
the same problem. See ``burt``.

Other example data sets that are useful demonstrations of factor
analysis are the seven bifactor examples in ``Bechtoldt`` and the 24
ability measures in ``Harman74.cor``

There are several other Harman examples in the psych package (i.e.,
Harman.8) as well as in the dataseta and GPArotation packages. The
Harman 24 mental tests problem is in the basic datasets package at
Harman74.cor.

Other Harman data sets are 5 socioeconomic variables for 12 census
tracts Harman.5 used by John Loehlin as an example for EFA. Another one
of the many Harman (1967) data sets is Harman.political. This contains 8
political variables taken over 147 election areas. The principal factor
method with SMCs as communalities match those of table 8.18. The data
are used by Dziubian and Shirkey as an example of the Kaiser-Meyer-Olkin
test of factor adequacy.

Source
~~~~~~

Harman (1967 p 164 and p 244.)

H. Harman and W.Jones. (1966) Factor analysis by minimizing residuals
(minres). Psychometrika, 31(3):351-368.

References
~~~~~~~~~~

Harman, Harry Horace (1967), Modern factor analysis. Chicago, University
of Chicago Press.

P.Bentler. Covariance structure models for maximal reliability of
unit-weighted composites. In Handbook of latent variable and related
models, pages 1–17. North Holland, 2007.

Burt, C.General and Specific Factors underlying the Primary Emotions.
Reports of the British Association for the Advancement of Science, 85th
meeting, held in Manchester, September 7-11, 1915. London, John Murray,
1916, p. 694-696 (retrieved from the web at
https://www.biodiversitylibrary.org/item/95822#790

See Also
~~~~~~~~

See also the original ``burt`` data set, the Harman.5 and
Harman.political data sets.

Examples
~~~~~~~~

::

   data(Harman)
   cor.plot(Harman.Holzinger)
   cor.plot(Harman.Burt)  
   smc(Harman.Burt)  #note how this produces impossible results
   f2 <- fa(Harman.8,2, rotate="none")  #minres matches Harman and Jones
