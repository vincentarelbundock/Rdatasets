.. container::

   .. container::

      ======================== ===============
      CyberSecurityBreaches_df R Documentation
      ======================== ===============

      .. rubric:: Cybersecurity Breaches Reported to US Health
         Department
         :name: cybersecurity-breaches-reported-to-us-health-department

      .. rubric:: Description
         :name: description

      This dataset contains records of cybersecurity breaches reported
      to the US Department of Health and Human Services (HHS). Since
      October 2009, organizations in the United States that store data
      on human health are required to report incidents compromising the
      confidentiality of 500 or more patients or human subjects (45
      C.F.R. 164.408). These reports are publicly available and provide
      detailed information about the affected entities, breach types,
      and impacted individuals.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CyberSecurityBreaches_df)

      .. rubric:: Format
         :name: format

      A data frame with 1,151 observations and 9 variables:

      Name.of.Covered.Entity
         Name of the covered entity involved in the breach (character).

      State
         US state where the entity is located (factor with 52 levels).

      Covered.Entity.Type
         Type of the covered entity (factor with 4 levels).

      Individuals.Affected
         Number of individuals affected by the breach (integer).

      Breach.Submission.Date
         Date the breach was reported (Date).

      Type.of.Breach
         Type of breach (factor with 29 levels).

      Location.of.Breached.Information
         Location of the breached information (factor with 47 levels).

      Business.Associate.Present
         Indicates whether a business associate was involved (logical).

      Web.Description
         Description of the breach provided online (character).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'CyberSecurityBreaches_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a traditional data frame in R. The original content has
      not been modified in any way.

      .. rubric:: Source
         :name: source

      Cybersecurity breach data downloaded from the Office for Civil
      Rights of the US Department of Health and Human Services (HHS) on
      2015-02-26.
