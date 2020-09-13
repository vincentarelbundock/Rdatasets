========= ===============
Bechtoldt R Documentation
========= ===============

Seven data sets showing a bifactor solution.
--------------------------------------------

Description
~~~~~~~~~~~

Holzinger-Swineford (1937) introduced the bifactor model of a general
factor and uncorrelated group factors. The Holzinger data sets are
original 14 \* 14 matrix from their paper as well as a 9 \*9 matrix used
as an example by Joreskog. The Thurstone correlation matrix is a 9 \* 9
matrix of correlations of ability items. The Reise data set is 16 \* 16
correlation matrix of mental health items. The Bechtholdt data sets are
both 17 x 17 correlation matrices of ability tests.

Usage
~~~~~

::

   data(Thurstone)
   data(Thurstone.33)
   data(Thurstone.9)
   data(Holzinger)
   data(Holzinger.9)
   data(Bechtoldt)
   data(Bechtoldt.1)
   data(Bechtoldt.2)
   data(Reise)

Details
~~~~~~~

Holzinger and Swineford (1937) introduced the bifactor model (one
general factor and several group factors) for mental abilities. This is
a nice demonstration data set of a hierarchical factor structure that
can be analyzed using the ``omega`` function or using sem. The bifactor
model is typically used in measures of cognitive ability.

There are several ways to analyze such data. One is to use the ``omega``
function to do a hierarchical factoring using the Schmid-Leiman
transformation. This can then be done as an exploratory and then as a
confirmatory model using ``omegaSem``. Another way is to do a regular
factor analysis and use either a ``bifactor`` or ``biquartimin``
rotation. These latter two functions implement the Jennrich and Bentler
(2011) bifactor and biquartimin transformations. The ``bifactor``
rotation suffers from the problem of local minima (Mansolf and Reise,
2016) and thus a mixture of exploratory and confirmatory analysis might
be preferred.

The 14 variables are ordered to reflect 3 spatial tests, 3 mental speed
tests, 4 motor speed tests, and 4 verbal tests. The sample size is 355.

Another data set from Holzinger (Holzinger.9) represents 9 cognitive
abilities (Holzinger, 1939) and is used as an example by Karl Joreskog
(2003) for factor analysis by the MINRES algorithm and also appears in
the LISREL manual as example NPV.KM. This data set represents the scores
from the Grant White middle school for 9 tests: "t01_visperc"
"t02_cubes" "t04_lozenges" "t06_paracomp" "t07_sentcomp" "t09_wordmean"
"t10_addition" "t12_countdot" and "t13_sccaps" and as variables x1 ...
x9 (for the Grant-White school) in the lavaan package.

Another classic data set is the 9 variable Thurstone problem which is
discussed in detail by R. P. McDonald (1985, 1999) and and is used as
example in the sem package as well as in the PROC CALIS manual for SAS.
These nine tests were grouped by Thurstone and Thurstone, 1941 (based on
other data) into three factors: Verbal Comprehension, Word Fluency, and
Reasoning. The original data came from Thurstone and Thurstone (1941)
but were reanalyzed by Bechthold (1961) who broke the data set into two.
McDonald, in turn, selected these nine variables from the larger set of
17 found in Bechtoldt.2. The sample size is 213.

Another set of 9 cognitive variables attributed to Thurstone (1933) is
the data set of 4,175 students reported by Professor Brigham of
Princeton to the College Entrance Examination Board. This set does not
show a clear bifactor solution but is included as a demonstration of the
differences between a maximimum likelihood factor analysis solution
versus a principal axis factor solution.

Tucker (1958) uses 9 variables from Thurstone and Thburstone (1941) for
his example of ``interbattery`` factor analysis.

More recent applications of the bifactor model are to the measurement of
psychological status. The Reise data set is a correlation matrix based
upon >35,000 observations to the Consumer Assessment of Health Care
Provideers and Systems survey instrument. Reise, Morizot, and Hays
(2007) describe a bifactor solution based upon 1,000 cases.

The five factors from Reise et al. reflect Getting care quickly (1-3),
Doctor communicates well (4-7), Courteous and helpful staff (8,9),
Getting needed care (10-13), and Health plan customer service (14-16).

The two Bechtoldt data sets are two samples from Thurstone and Thurstone
(1941). They include 17 variables, 9 of which were used by McDonald to
form the Thurstone data set. The sample sizes are 212 and 213
respectively. The six proposed factors reflect memory, verbal, words,
space, number and reasoning with three markers for all expect the rote
memory factor. 9 variables from this set appear in the Thurstone data
set.

Two more data sets with similar structures are found in the ``Harman``
data set. This includes the another 9 variables (with 696 subjects) from
Holzinger used by Harman ``link{Harman.Holzinger}`` as well as 8
affective variables from ``link{burt}``.

Another data set that is worth examining for tests of bifactor structure
is the holzinger.swineford data set which includes the original data
from Holzinger and Swineford (1939) supplied by Keith Widaman. This is
in psychTools.1.9.11 or later.

-  Bechtoldt.1: 17 x 17 correlation matrix of ability tests, N = 212.

-  Bechtoldt.2: 17 x 17 correlation matrix of ability tests, N = 213.

-  Holzinger: 14 x 14 correlation matrix of ability tests, N = 355

-  Holzinger.9: 9 x 9 correlation matrix of ability tests, N = 145

-  Reise: 16 x 16 correlation matrix of health satisfaction items. N =
   35,000

-  Thurstone: 9 x 9 correlation matrix of ability tests, N = 213

-  Thurstone.33: Another 9 x 9 correlation matrix of ability tests,
   N=4175

-  Thurstone:9: And yet another 9 x 9 correlation matrix of ability
   tests, N =710

Note
~~~~

Note that these are tests, not items. Thus, it was possible to find the
reliabilities of each test.

For the Holzinger 14 tests these were found from 1- t2 where t = c(.332,
.517, .360, .382, .354,.249, .444, .393, .455, .424, .393, .487, .534,
.382) (page 53) and thus the reliabilities were 0.890, 0.733, 0.870,
0.854, 0.875, 0.938, 0.803, 0.846, 0.793, 0.820, 0.846, 0.763, 0.715,
0.854.

For the Holzinger.9 tests, the reliabilities for the Grant-White tests
were: .76, .57, .94, .65, .75, .87, .95, .84 and .89 (Keith Widamn,
personal communication, 2020),

Source
~~~~~~

| Holzinger: Holzinger and Swineford (1937)
| Reise: Steve Reise (personal communication)
| sem help page (for Thurstone)

References
~~~~~~~~~~

Bechtoldt, Harold, (1961). An empirical study of the factor analysis
stability hypothesis. Psychometrika, 26, 405-432.

Holzinger, Karl and Swineford, Frances (1937) The Bi-factor method.
Psychometrika, 2, 41-54

Holzinger, K., & Swineford, F. (1939). A study in factor analysis: The
stability of a bifactor solution. Supplementary Educational Monograph,
no. 48. Chicago: University of Chicago Press.

McDonald, Roderick P. (1999) Test theory: A unified treatment. L.
Erlbaum Associates. Mahwah, N.J.

Mansolf, Maxwell and Reise, Steven P. (2016) Exploratory Bifactor
Analysis: The Schmid-Leiman Orthogonalization and Jennrich-Bentler
Analytic Rotations, Multivariate Behavioral Research, 51:5, 698-717,
DOI: 10.1080/00273171.2016.1215898

Reise, Steven and Morizot, Julien and Hays, Ron (2007) The role of the
bifactor model in resolving dimensionality issues in health outcomes
measures. Quality of Life Research. 16, 19-31.

Thurstone, Louis Leon (1933) The theory of multiple factors. Edwards
Brothers, Inc. Ann Arbor

Thurstone, Louis Leon and Thurstone, Thelma (Gwinn). (1941) Factorial
studies of intelligence. The University of Chicago Press. Chicago, Il.

Tucker, Ledyard (1958) An inter-battery method of factor analysis,
Psychometrika, 23, 111-136.

Examples
~~~~~~~~

::


   if(!require(GPArotation)) {message("I am sorry, to run omega requires GPArotation") 
           } else {
   #holz <- omega(Holzinger,4, title = "14 ability tests from Holzinger-Swineford")
   #bf <- omega(Reise,5,title="16 health items from Reise") 
   #omega(Reise,5,labels=colnames(Reise),title="16 health items from Reise")
   thur.om <- omega(Thurstone,title="9 variables from Thurstone") #compare with
   thur.bf   <- fa(Thurstone,3,rotate="biquartimin")
   factor.congruence(thur.om,thur.bf)
   }
