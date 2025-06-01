.. container::

   .. container::

      ======================= ===============
      myocardialinfarction_df R Documentation
      ======================= ===============

      .. rubric:: Streptokinase Therapy in AMI
         :name: streptokinase-therapy-in-ami

      .. rubric:: Description
         :name: description

      This dataset, myocardialinfarction_df, is a data frame containing
      information from 33 clinical trials comparing intravenous
      streptokinase versus placebo or no therapy in patients
      hospitalized for acute myocardial infarction. It includes data on
      treatment outcomes between intervention and control groups.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(myocardialinfarction_df)

      .. rubric:: Format
         :name: format

      A data frame with 33 observations and 6 variables:

      trial
         Trial identifier (character vector)

      year
         Year of publication (integer vector)

      ai
         Number of events in treatment group (integer vector)

      n1i
         Total number of participants in treatment group (integer
         vector)

      ci
         Number of events in control group (integer vector)

      n2i
         Total number of participants in control group (integer vector)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'myocardialinfarction_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the metadat package version 1.2-0. Original
      publication: Lau J, Antman EM, Jimenez-Silva J, Kupelnick B,
      Mosteller F, Chalmers TC (1992). "Cumulative meta-analysis of
      therapeutic trials for myocardial infarction." New England Journal
      of Medicine, 327(4):248-254.
