.. container::

   .. container::

      ==================== ===============
      epilepsy_drug_qol_df R Documentation
      ==================== ===============

      .. rubric:: SANAD Epilepsy Drug Treatment Quality of Life Study
         :name: sanad-epilepsy-drug-treatment-quality-of-life-study

      .. rubric:: Description
         :name: description

      This dataset, epilepsy_drug_qol_df, is a data frame containing
      quality of life measurements from the SANAD randomized controlled
      trial comparing carbamazepine and lamotrigine in 544 epilepsy
      patients. QoL assessments were collected at baseline, 3 months, 1
      year and 2 years using validated instruments.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(epilepsy_drug_qol_df)

      .. rubric:: Format
         :name: format

      A data frame with 1,852 observations and 9 variables:

      id
         Integer: Patient identification number

      with.time
         Numeric: Time to withdrawal/discontinuation (days)

      trt
         Factor with 2 levels: Treatment group
         (carbamazepine/lamotrigine)

      with.status
         Integer: Withdrawal status indicator

      time
         Numeric: Assessment time point (days since baseline)

      anxiety
         Numeric: Anxiety score (from QoL measure)

      depress
         Numeric: Depression score (from QoL measure)

      aep
         Numeric: Adverse effects profile score

      with.status2
         Numeric: Alternative withdrawal coding

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'epilepsy_drug_qol_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the joineRML package version 0.4.7. Original
      study: Marson, A.G., et al. (2007) The SANAD study of
      effectiveness of carbamazepine, gabapentin, lamotrigine,
      oxcarbazepine, or topiramate for treatment of partial epilepsy: an
      unblinded randomised controlled trial. *The Lancet*, 369(9566),
      1000-1015.
