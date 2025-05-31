.. container::

   .. container::

      =============== ===============
      rearrests_table R Documentation
      =============== ===============

      .. rubric:: Rearrests of Juvenile Felons
         :name: rearrests-of-juvenile-felons

      .. rubric:: Description
         :name: description

      This dataset contains information on rearrests of juvenile felons
      based on the type of court in which they were tried. The data
      originates from a sample of juveniles convicted of felony in
      Florida in 1987, with matched pairs formed using criteria such as
      age and the number of previous offenses. The dataset provides
      counts of rearrests for juveniles, categorized by adult and
      juvenile courts. This data is useful for analyzing rearrest rates
      and judicial outcomes for juveniles convicted of felonies.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(rearrests_table)

      .. rubric:: Format
         :name: format

      A table with 2 rows and 2 columns:

      Adult court
         Number of rearrests (numeric) and no rearrests (numeric) in
         adult court.

      Juvenile court
         Number of rearrests (numeric) and no rearrests (numeric) in
         juvenile court.

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'rearrests_table' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'table' indicates that the
      dataset is a contingency table in R, representing the counts of
      rearrests by court type. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      Agresti, 1996. Data on rearrests of juvenile felons in Florida,
      1987.
