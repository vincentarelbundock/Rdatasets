====== ===============
Reinis R Documentation
====== ===============

Risk Factors for Coronary Heart Disease
---------------------------------------

Description
~~~~~~~~~~~

Data from the beginning of a 15-year follow-up study of probable risk
factors for coronary thrombosis. The data are from 1841 men employed in
a Czechoslovakian car factory and represent all possible combinations of
the six risk factors.

Format
~~~~~~

A 6-dimensional array resulting from cross-tabulating 6 binary variables
for 1841 observations. The variable names and their levels are:

== =========== ======================================================
No Name        Levels (meaning)
1  ``smoke``   ``⁠"y", "n"⁠`` (smoking)
2  ``mental``  ``⁠"y", "n"⁠`` (strenuous mental work)
3  ``phys``    ``⁠"y", "n"⁠`` (strenuous physical work)
4  ``systol``  ``⁠"y", "n"⁠`` (systolic blood pressure > 140)
5  ``protein`` ``⁠"y", "n"⁠`` (ratio of beta to alpha lipoproteins > 3)
6  ``family``  ``⁠"y", "n"⁠`` (family history of CHD)
               
== =========== ======================================================

Details
~~~~~~~

The study was conducted to examine risk factors for coronary heart
disease (CHD) and collected information on smoking habits, mental and
physical work strain, systolic blood pressure, ratio of lipoproteins,
and family history of CHD.

The six variables form a ``2^6 = 64`` contingency table. The data have
been used extensively to illustrate model search procedures for
high-dimensional contingency tables.

Source
~~~~~~

Originally from the gRbase package as
``data(reinis, package = "gRbase")``

References
~~~~~~~~~~

Edwards, D. and Havranek, T. (1985). A fast procedure for model search
in multidimensional contingency tables. *Biometrika*, 72, 339-351.

Gauraha, N. and Parui, S. K. (2020). Mutual conditional independence and
its applications to model selection in Markov networks. *Annals of
Mathematics and Artificial Intelligence*, 88, 951-972.
`doi:10.1007/s10472-020-09690-7 <https://doi.org/10.1007/s10472-020-09690-7>`__

Reinis, Z., Pokorny, J., Basika, V., Tiserova, J., Gorican, K.,
Horakova, D., Stuchlikova, E., Havranek, T., and Hrabovsky, F. (1981).
Prognostic significance of the risk profile in the prevention of
coronary heart disease. *Bratis. lek. Listy*, 76, 137-150.

Examples
~~~~~~~~

.. code:: R

   data(Reinis)
   str(Reinis)
   ftable(Reinis, row.vars = 1:3)

   # Fit all 0-way through 6-way models using Kway()
   Reinis.gmodels <- Kway(Freq ~ smoke + mental + phys + systol + protein + family,
                          data = Reinis, family = poisson)

   # Examine fit statistics
   LRstats(Reinis.gmodels)

   # Sequential tests for k vs k+1 way effects
   anova(Reinis.gmodels, test = "Chisq")

   # Fit sequential models of joint independence
   Reinis.seqjoint <- seq_loglm(Reinis, type = "joint", prefix="joint")
   LRstats(Reinis.seqjoint)

   # Fit sequential models of conditional independence
   Reinis.seqcond <- seq_loglm(Reinis, type = "conditional", prefix = "cond")
   LRstats(Reinis.seqcond)
