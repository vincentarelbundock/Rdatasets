.. container::

   .. container::

      ====== ===============
      ccdrug R Documentation
      ====== ===============

      .. rubric:: Data on Drug Arrests from the Crown Court Sentencing
         Survey
         :name: data-on-drug-arrests-from-the-crown-court-sentencing-survey

      .. rubric:: Description
         :name: description

      The ``ccdrug`` data contains data on drug arrests from the Crown
      Court Sentencing Survey between 2012 and 2015 in England and
      Wales, allowing for a look at differential sentencing rates for
      men and women, with a set of controls for features that should
      impact sentencing.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ccdrug

      .. rubric:: Format
         :name: format

      A data frame with 16973 rows and 45 variables

      custody
         Taken in to custody.

      male
         Is a male

      first_offense
         This is the first offense

      age
         Age in ten-year bins

      offense
         Offense type

      prev_convictions
         Previous convictions, in bins of None, 1-3, 4-9, or 10+

      drg_class
         Type of drug

      drg_culpability
         Level of culpability for crime

      drg_increasing_ser_other_1, drg_increasing_ser_other_3, drg_increasing_ser_other_4, drg_increasing_ser_other_5, drg_increasing_ser_other_6, drg_increasing_ser_other_7, drg_increasing_ser_other_8, drg_increasing_ser_other_9, drg_increasing_ser_other_10, drg_increasing_ser_other_11, drg_increasing_ser_other_12, drg_increasing_ser_other_13, drg_increasing_ser_other_14, drg_increasing_ser_other_15, drg_increasing_ser_other_17, drg_increasing_ser_other_18, drg_increasing_ser_other_19, drg_increasing_ser_other_20, drg_increasing_ser_other_21, drg_reducing_ser_1, drg_reducing_ser_2, drg_reducing_ser_3, drg_reducing_ser_4, drg_reducing_ser_5, drg_reducing_ser_6, drg_reducing_ser_7, drg_reducing_ser_8, drg_reducing_ser_9, drg_reducing_ser_10, drg_reducing_ser_11, drg_reducing_ser_12, drg_reducing_ser_13, drg_reducing_ser_14, drg_reducing_ser_15, drg_reducing_ser_16, drg_increasing_ser_stat_2, drg_increasing_ser_stat_3
         A set of indicators that should increase or reduce the
         likelihood of being taken into custody. See variable labels for
         specific definitions.

      .. rubric:: Details
         :name: details

      This data set is used in the *Partial Identification* chapter of
      *The Effect*.

      .. rubric:: Source
         :name: source

      Pina Sanchez, J., & Harris, L., 2020. Sentencing gender?
      Investigating the presence of gender disparities in Crown Court
      sentences. *Criminal Law Review*, 2020(1), pp. 3-28.

      .. rubric:: References
         :name: references

      Huntington-Klein. 2021. The Effect: An Introduction to Research
      Design and Causality. https://theeffectbook.net.
