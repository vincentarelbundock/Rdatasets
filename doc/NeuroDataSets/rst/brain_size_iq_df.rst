.. container::

   .. container::

      ================ ===============
      brain_size_iq_df R Documentation
      ================ ===============

      .. rubric:: Brain Size and IQ Study Data
         :name: brain-size-and-iq-study-data

      .. rubric:: Description
         :name: description

      This dataset, brain_size_iq_df, is a data frame containing
      neurocognitive measurements from a study examining relationships
      between brain size, gender, and intelligence. The data include 40
      right-handed psychology students with no neurological history,
      selected based on extreme Scholastic Aptitude Test scores.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(brain_size_iq_df)

      .. rubric:: Format
         :name: format

      A data frame with 40 observations and 7 variables:

      ID
         Numeric: Participant identification number

      GENDER
         Factor with 2 levels: Participant's gender (Male/Female)

      FSIQ
         Numeric: Full Scale IQ score

      VIQ
         Numeric: Verbal IQ score

      PIQ
         Numeric: Performance IQ score

      MRI
         Numeric: Brain size measurement from MRI (in cubic cm)

      IQDI
         Factor with 2 levels: IQ group classification (High/Low)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'brain_size_iq_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the sur package version 1.0.4. Original study:
      Willerman, L., Schultz, R., Rutledge, J.N. and Bigler, E.D. (1991)
      In Vivo Brain Size and Intelligence. *Intelligence*, 15, 223-228.
