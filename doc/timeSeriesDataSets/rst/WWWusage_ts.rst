.. container::

   .. container::

      =========== ===============
      WWWusage_ts R Documentation
      =========== ===============

      .. rubric:: Internet Usage per Minute
         :name: internet-usage-per-minute

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'WWWusage_ts' to avoid
      confusion with other datasets in the R ecosystem from which data
      have been sourced. The suffix 'ts' indicates that this dataset is
      a time series object. This naming convention helps distinguish
      this dataset as part of the 'timeseriesdatasets' package and
      assists users in identifying its specific characteristics. The
      original content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(WWWusage_ts)

      .. rubric:: Format
         :name: format

      A 'ts' object with 100 observations:

      time
         Time series from 1 to 100 minutes.

      value
         Internet usage per minute (in MB).

      .. rubric:: Details
         :name: details

      This dataset contains data on internet usage per minute from 1 to
      100 minutes. The values are measured in megabytes (MB).

      .. rubric:: Source
         :name: source

      The dataset is part of the R datasets package.
