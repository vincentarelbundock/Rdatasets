.. container::

   ====== ===============
   theoph R Documentation
   ====== ===============

   .. rubric:: Cohort Study of the Pharmacokinetics of Oral Theophylline
      :name: theoph

   .. rubric:: Description
      :name: description

   | Results of a Cohort Study of the Pharmacokinetics of Oral
     Theophylline, with plasma concentrations over time (**more
     details** available below the variable definitions).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      theoph

   .. rubric:: Format
      :name: format

   A data frame with 132 observations and 5 variables

   Subject
      subject id number for each participant; type: ordinal factor

   Wt
      Weight in kilograms; type: double

   Dose
      Dose in milligrams per kilogram; type: double

   Time
      Time from initial dose in hours; type: double

   conc
      Concentration of theophylline in the plasma in micrograms per
      milliliter' type: double

   .. rubric:: Details
      :name: details

   | This data set is from a pharmacokinetic study of oral dosing of the
     anti-asthma medication, theophylline, in 12 subjects over 25 hours,
     published By Dr. Robert A. Upton around 1980. The original
     publication, if any, is unclear and not cited. These data were used
     in a package named ``nlme``, and reported in Boeckmann, A.J., et
     al.Dr. Upton did publish several papers on theophylline
     pharmacokinetics around 1980-1984, and these data could have been
     from one of these.
   | Theophylline is an methylxanthine anti-asthma medication, which
     acts as a bronchodilator, with secondary effects to strengthen
     diaphragm contraction, reduce pulmonary artery pressures, and
     reduce mast cell release. It can be administered by the
     intravenous, oral, or rectal suppository routes.
   | Each subject in this Study (oral route) received a single oral dose
     of theophylline. Blood samples were taken at frequent intervals
     over the first 25 hours after dosing, and the quantity of
     theophylline in the plasma at each time point was measured in
     micrograms per milliliter.
   | Unfortunately, the theophylline plasma level in blood varies
     considerably between patients, because of differences in drug
     clearance, which is affected by body mass, age, smoking, liver and
     heart function, and viral infections. To complicate this drug
     further, it has important interactions with a number of other
     common medicines which can increase or decrease the drug level.
     Each subject in this study received a single oral dose of 300 mg of
     theophylline, which has been converted to a milligrams per kilogram
     dose. Blood samples were taken at frequent intervals over the next
     25 hours after dosing, and the quantity of theophylline in the
     plasma at each time point was measured in micrograms per milliliter
     of plasma.

   .. rubric:: Source
      :name: source

   Boeckmann, A. J., Sheiner, L. B. and Beal, S. L. (1994), NONMEM Users
   Guide: Part V, NONMEM Project Group, University of California, San
   Francisco. Note that the original data collector, Robert A. Upton, is
   not credited, nor is the original work cited.
