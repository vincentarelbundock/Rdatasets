.. container::

   .. container::

      ============= ===============
      tenth_circuit R Documentation
      ============= ===============

      .. rubric:: For A Trump Nominee, Neil Gorsuch’s Record Is
         Surprisingly Moderate On Immigration
         :name: for-a-trump-nominee-neil-gorsuchs-record-is-surprisingly-moderate-on-immigration

      .. rubric:: Description
         :name: description

      The raw data behind the story "For A Trump Nominee, Neil Gorsuch’s
      Record Is Surprisingly Moderate On Immigration"
      https://fivethirtyeight.com/features/for-a-trump-nominee-neil-gorsuchs-record-is-surprisingly-moderate-on-immigration/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         tenth_circuit

      .. rubric:: Format
         :name: format

      A data frame with 954 rows representing cases and 13 variables:

      title
         Name of the case

      date
         Date of decision

      federalreporter_cit
         Case citation, as listed in the Federal Reporter Series

      westlaw_cit
         Case citation, Westlaw format

      issue
         Issue number, in cases divided into multiple issues

      weight
         Weight per issue (total weight per case equals one)

      judge1
         Name of first judge

      judge2
         Name of second judge

      judge3
         Name of third judge

      vote1_liberal
         Vote of first judge. 1 = liberal, 0 = conservative.

      vote2_liberal
         Vote of second judge. 1 = liberal, 0 = conservative.

      vote3_liberal
         Vote of third judge. 1 = liberal, 0 = conservative.

      category
         Category of case, immigration or discrimination

      .. rubric:: Note
         :name: note

      In immigration cases, partial relief to immigration petitioner is
      coded as liberal because the petitioner typically seeks just one
      core remedy (e.g., withholding of removal, adjustment of status,
      or asylum); in discrimination cases, partial relief is coded as
      multiple issues because the plaintiff often seeks separate
      remedies under multiple claims (e.g., disparate treatment,
      retaliation, etc.) and different sources of law.

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/tree/master/tenth-circuit
