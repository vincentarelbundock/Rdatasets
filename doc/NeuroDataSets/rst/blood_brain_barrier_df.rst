.. container::

   .. container::

      ====================== ===============
      blood_brain_barrier_df R Documentation
      ====================== ===============

      .. rubric:: Blood-Brain Barrier
         :name: blood-brain-barrier

      .. rubric:: Description
         :name: description

      This dataset, blood_brain_barrier_df, is a data frame containing
      experimental measurements from a rat study investigating
      sugar-infusion methods for temporary blood-brain barrier
      disruption. The barrier's protective function was assessed through
      multiple biological markers.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(blood_brain_barrier_df)

      .. rubric:: Format
         :name: format

      A data frame with 34 observations and 9 variables:

      Brain
         Integer: Brain tissue measurement (units?)

      Liver
         Integer: Liver tissue measurement (units?)

      Time
         Numeric: Experimental time measurement (hours)

      Treatment
         Factor with 2 levels: Experimental treatment groups

      Days
         Integer: Observation period (days)

      Sex
         Factor with 2 levels: Animal sex (Male/Female)

      Weight
         Integer: Subject weight (grams)

      Loss
         Numeric: Physiological loss measurement

      Tumor
         Integer: Tumor presence indicator (0/1)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'blood_brain_barrier_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the Sleuth3 package version 1.0-6. Original
      reference: Ramsey, F.L. and Schafer, D.W. (2013) *The Statistical
      Sleuth: A Course in Methods of Data Analysis* (3rd ed), Cengage
      Learning.
