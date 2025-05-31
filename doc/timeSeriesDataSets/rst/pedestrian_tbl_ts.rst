.. container::

   .. container::

      ================= ===============
      pedestrian_tbl_ts R Documentation
      ================= ===============

      .. rubric:: Pedestrian Counts in the City of Melbourne
         :name: pedestrian-counts-in-the-city-of-melbourne

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'pedestrian_tbl_ts' to avoid
      confusion with other packages in the R ecosystem from which
      datasets have been sourced. The suffix 'tbl_ts' indicates that
      this dataset is a tibble-based time series object. This naming
      convention helps distinguish this dataset as part of the
      'timeseriesdatasets' package and assists users in identifying its
      specific characteristics. The original content of the dataset has
      not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(pedestrian_tbl_ts)

      .. rubric:: Format
         :name: format

      A 'tbl_ts' object with 66,037 rows and 5 columns:

      Sensor
         Identifier for the sensor used to count pedestrians.

      Date_Time
         Date and time of the pedestrian count (POSIXct format).

      Date
         Date of the pedestrian count (Date format).

      Time
         Time of the pedestrian count (Time format).

      Count
         Number of pedestrians counted.

      .. rubric:: Details
         :name: details

      This dataset contains pedestrian count data collected from various
      sensors located throughout the city of Melbourne. The data
      includes information on the date and time of each count as well as
      the number of pedestrians detected.

      .. rubric:: Source
         :name: source

      City of Melbourne, Australia.
