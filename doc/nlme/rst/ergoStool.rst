.. container::

   ========= ===============
   ergoStool R Documentation
   ========= ===============

   .. rubric:: Ergometrics experiment with stool types
      :name: ergometrics-experiment-with-stool-types

   .. rubric:: Description
      :name: description

   The ``ergoStool`` data frame has 36 rows and 3 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   effort
      a numeric vector giving the effort (Borg scale) required to arise
      from a stool.

   Type
      a factor with levels ``T1``, ``T2``, ``T3``, and ``T4`` giving the
      stool type.

   Subject
      an ordered factor giving a unique identifier for the subject in
      the experiment.

   .. rubric:: Details
      :name: details

   Devore (2000) cites data from an article in *Ergometrics* (1993, pp.
   519-535) on “The Effects of a Pneumatic Stool and a One-Legged Stool
   on Lower Limb Joint Load and Muscular Activity.”

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York. (Appendix A.9)

   Devore, J. L. (2000), *Probability and Statistics for Engineering and
   the Sciences (5th ed)*, Duxbury, Boston, MA.

   .. rubric:: Examples
      :name: examples

   ::

      fm1 <-
         lme(effort ~ Type, data = ergoStool, random = ~ 1 | Subject)
      anova( fm1 )
