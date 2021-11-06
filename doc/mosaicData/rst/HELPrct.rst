.. container::

   ======= ===============
   HELPrct R Documentation
   ======= ===============

   .. rubric:: Health Evaluation and Linkage to Primary Care
      :name: health-evaluation-and-linkage-to-primary-care

   .. rubric:: Description
      :name: description

   The HELP study was a clinical trial for adult inpatients recruited
   from a detoxification unit. Patients with no primary care physician
   were randomized to receive a multidisciplinary assessment and a brief
   motivational intervention or usual care, with the goal of linking
   them to primary medical care.

   .. rubric:: Usage
      :name: usage

   ::

      data(HELPrct)

   .. rubric:: Format
      :name: format

   Data frame with 453 observations on the following variables.

   -  ``age`` subject age at baseline (in years)

   -  ``anysub`` use of any substance post-detox: a factor with levels
      ``no`` ``yes``

   -  ``cesd`` Center for Epidemiologic Studies Depression measure at
      baseline (high scores indicate more depressive symptoms)

   -  ``d1`` lifetime number of hospitalizations for medical problems
      (measured at baseline)

   -  ``hospitalizations`` lifetime number of hospitalizations for
      medical problems (measured at baseline)

   -  ``daysanysub`` time (in days) to first use of any substance
      post-detox

   -  ``dayslink`` time (in days) to linkage to primary care

   -  ``drugrisk`` Risk Assessment Battery drug risk scale at baseline

   -  ``e2b`` number of times in past 6 months entered a detox program
      (measured at baseline)

   -  ``female`` 0 for male, 1 for female

   -  ``sex`` a factor with levels ``male`` ``female``

   -  ``g1b`` experienced serious thoughts of suicide in last 30 days
      (measured at baseline): a factor with levels ``no`` ``yes``

   -  ``homeless`` housing status: a factor with levels ``housed``
      ``homeless``

   -  ``i1`` average number of drinks (standard units) consumed per day,
      in the past 30 days (measured at baseline)

   -  ``i2`` maximum number of drinks (standard units) consumed per day,
      in the past 30 days (measured at baseline)

   -  ``id`` subject identifier

   -  ``indtot`` Inventory of Drug Use Consequences (InDUC) total score
      (measured at baseline)

   -  ``linkstatus`` post-detox linkage to primary care (0 = no, 1 =
      yes)

   -  ``link`` post-detox linkage to primary care: ``no`` ``yes``

   -  ``mcs`` SF-36 Mental Component Score (measured at baseline, lower
      scores indicate worse status)

   -  ``pcs`` SF-36 Physical Component Score (measured at baseline,
      lower scores indicate worse status)

   -  ``pss_fr`` perceived social support by friends (measured at
      baseline, higher scores indicate more support)

   -  ``racegrp`` race/ethnicity: levels ``black`` ``hispanic``
      ``other`` ``white``

   -  ``satreat`` any BSAS substance abuse treatment at baseline: ``no``
      ``yes``

   -  ``sexrisk`` Risk Assessment Battery sex risk score (measured at
      baseline)

   -  ``substance`` primary substance of abuse: ``alcohol`` ``cocaine``
      ``heroin``

   -  ``treat`` randomized to HELP clinic: ``no`` ``yes``

   .. rubric:: Details
      :name: details

   Eligible subjects were adults, who spoke Spanish or English, reported
   alcohol, heroin or cocaine as their first or second drug of choice,
   resided in proximity to the primary care clinic to which they would
   be referred or were homeless. Patients with established primary care
   relationships they planned to continue, significant dementia,
   specific plans to leave the Boston area that would prevent research
   participation, failure to provide contact information for tracking
   purposes, or pregnancy were excluded.

   Subjects were interviewed at baseline during their detoxification
   stay and follow-up interviews were undertaken every 6 months for 2
   years. A variety of continuous, count, discrete, and survival time
   predictors and outcomes were collected at each of these five
   occasions.

   This data set is a subset of the ``HELPmiss`` data set restricted to
   the 453 subjects who were fully observed on the ``age``, ``cesd``,
   ``d1``, ``female``, ``sex``, ``g1b``, ``homeless``, ``i1``, ``i2``,
   ``indtot``, ``mcs``, ``pcs``, ``pss_fr``, ``racegrp``, ``satreat``,
   ``substance``, ``treat``, and ``sexrisk`` variables. (There is some
   missingness in the other variables.) ``HELPmiss`` contains 17
   additional subjects with partially observed data on some of these
   baseline variables. This is also a subset of the ``HELPfull`` data
   which includes 5 timepoints and many additional variables.

   .. rubric:: Note
      :name: note

   ::

      The \code{HELPrct} data set was originally named \code{HELP} but has 
      been renamed to avoid confusion with the \code{help} function.

   .. rubric:: Source
      :name: source

   https://nhorton.people.amherst.edu/help/

   .. rubric:: References
      :name: references

   Samet JH, Larson MJ, Horton NJ, Doyle K, Winter M, and Saitz R.
   Linking alcohol and drug-dependent adults to primary medical care: A
   randomized controlled trial of a multi-disciplinary health
   intervention in a detoxification unit. *Addiction*, 2003;
   98(4):509-516.

   .. rubric:: See Also
      :name: see-also

   ``HELPmiss``, and ``HELPfull``.

   .. rubric:: Examples
      :name: examples

   ::

      data(HELPrct)

