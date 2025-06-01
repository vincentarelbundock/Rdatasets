.. container::

   .. container::

      ===================== ===============
      oasis_dementia_mri_df R Documentation
      ===================== ===============

      .. rubric:: OASIS Aging-Dementia Longitudinal MRI
         :name: oasis-aging-dementia-longitudinal-mri

      .. rubric:: Description
         :name: description

      This dataset, oasis_dementia_mri_df, is a data frame containing
      longitudinal neuroimaging and clinical data from 150 older adults
      (60-96 years) with repeated MRI scans over multiple visits. The
      study includes both nondemented and demented individuals, with 373
      total imaging sessions featuring 3-4 T1-weighted scans per
      session.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(oasis_dementia_mri_df)

      .. rubric:: Format
         :name: format

      A data frame with 373 observations and 15 variables:

      Subject.ID
         Character: Unique subject identifier

      MRI.ID
         Character: Unique MRI session identifier

      Group
         Factor with 3 levels: Diagnostic group classification

      Visit
         Integer: Visit number

      MR.Delay
         Integer: Days since first visit

      Gender
         Character: Subject gender

      Hand
         Character: Handedness

      Age
         Integer: Subject age in years

      EDUC
         Integer: Years of education

      SES
         Integer: Socioeconomic status

      MMSE
         Integer: Mini-Mental State Examination score (0-30)

      CDR
         Numeric: Clinical Dementia Rating (0-3)

      eTIV
         Integer: Estimated total intracranial volume (mm³)

      nWBV
         Numeric: Normalized whole brain volume

      ASF
         Numeric: Atlas scaling factor

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'oasis_dementia_mri_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the jointest package version 1.0. Original study:
      Marcus, D.S. et al. (2007) Open Access Series of Imaging Studies
      (OASIS): Cross-sectional MRI Data in Young, Middle Aged,
      Nondemented and Demented Older Adults. *Journal of Cognitive
      Neuroscience*, 19(9), 1498-1507.
