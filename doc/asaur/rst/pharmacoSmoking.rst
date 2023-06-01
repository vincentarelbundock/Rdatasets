.. container::

   =============== ===============
   pharmacoSmoking R Documentation
   =============== ===============

   .. rubric:: pharmacoSmoking
      :name: pharmacoSmoking

   .. rubric:: Description
      :name: description

   Randomized trial of triple therapy vs. patch for smoking cessation.

   .. rubric:: Usage
      :name: usage

   ::

      data("pharmacoSmoking")

   .. rubric:: Format
      :name: format

   A data frame with 125 observations on the following 14 variables.

   ``id``
      patient ID number

   ``ttr``
      Time in days until relapse

   ``relapse``
      Indicator of relapse (return to smoking)

   ``grp``
      Randomly assigned treatment group with levels ``combination`` or
      ``patchOnly``

   ``age``
      Age in years at time of randomization

   ``gender``
      ``Female`` or ``Male``

   ``race``
      ``black``, ``hispanic``, ``white``, or ``other``

   ``employment``
      ``ft`` (full-time), ``pt`` (part-time), or ``other``

   ``yearsSmoking``
      Number of years the patient had been a smoker

   ``levelSmoking``
      ``heavy`` or ``light``

   ``ageGroup2``
      Age group with levels ``21-49`` or ``50+``

   ``ageGroup4``
      Age group with levels ``21-34``, ``35-49``, ``50-64``, or ``65+``

   ``priorAttempts``
      The number of prior attempts to quit smoking

   ``longestNoSmoke``
      The longest period of time, in days, that the patient has
      previously gone without smoking

   .. rubric:: Source
      :name: source

   This data is from a clinical trial described in Steinberg et al.
   (2009)

   .. rubric:: References
      :name: references

   Steinberg, M.B. Greenhaus, S. Schmelzer, A.C. Bover, M.T., Foulds,
   J., Hoover, D.R., and Carson, J.L. (2009) Triple-combination
   pharmacotherapy for medically ill smokers: A randomized trial. Annals
   of Internal Medicine 150, 447-454.

   .. rubric:: Examples
      :name: examples

   ::

      data(pharmacoSmoking)
