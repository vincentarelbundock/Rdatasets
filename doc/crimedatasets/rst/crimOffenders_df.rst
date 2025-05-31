.. container::

   .. container::

      ================ ===============
      crimOffenders_df R Documentation
      ================ ===============

      .. rubric:: Criminal Offenders Screened in Florida
         :name: criminal-offenders-screened-in-florida

      .. rubric:: Description
         :name: description

      This dataset contains information on criminal offenders who were
      screened in Florida during 2013-2014.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(crimOffenders_df)

      .. rubric:: Format
         :name: format

      A data frame with 5,855 observations and 16 variables:

      age
         Age of the offender (numeric).

      juv_fel_count
         Number of juvenile felonies committed (numeric).

      decile_score
         COMPAS score decile (numeric).

      juv_misd_count
         Number of juvenile misdemeanors committed (numeric).

      juv_other_count
         Number of other juvenile convictions (numeric).

      v_decile_score
         Predicted decile score of the offender (numeric).

      priors_count
         Number of prior crimes committed (numeric).

      sex
         Gender of the offender (factor with levels 'Female' and
         'Male').

      two_year_recid
         Recidivism within two years (factor with levels 'Yes' and
         'No').

      race
         Race of the offender (factor with levels 'White', 'Black',
         'Hispanic', 'Asian', 'Other', 'Native').

      c_jail_in
         Date of entry into jail (normalized between 0 and 1, numeric).

      c_jail_out
         Date of release from jail (normalized between 0 and 1,
         numeric).

      c_offense_date
         Date the offense was committed (numeric).

      screening_date
         Date the offender was screened (numeric).

      in_custody
         Date the offender was placed in custody (numeric, normalized
         between 0 and 1).

      out_custody
         Date the offender was released from custody (numeric,
         normalized between 0 and 1).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'crimOffenders_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a traditional data frame in R. The original content has
      not been modified in any way.

      .. rubric:: Source
         :name: source

      Data collected from criminal offenders screened in Florida during
      2013-2014.
