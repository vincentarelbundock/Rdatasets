.. container::

   .. container::

      ================= ===============
      BreastCancerWI_df R Documentation
      ================= ===============

      .. rubric:: Breast Cancer Wisconsin (Diagnostic)
         :name: breast-cancer-wisconsin-diagnostic

      .. rubric:: Description
         :name: description

      This dataset, BreastCancerWI_df, is a data frame containing
      diagnostic information for 569 patients with breast cancer. The
      data includes features computed from digitized images of fine
      needle aspirates (FNA) of breast masses, as well as a diagnosis
      label indicating whether the mass is malignant or benign.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(BreastCancerWI_df)

      .. rubric:: Format
         :name: format

      A data frame with 569 observations and 31 variables:

      diagnosis
         Diagnosis of the breast mass: malignant or benign (factor with
         2 levels).

      radius_mean
         Mean radius of the mass (numeric).

      texture_mean
         Mean texture of the mass (numeric).

      perimeter_mean
         Mean perimeter of the mass (numeric).

      area_mean
         Mean area of the mass (numeric).

      smoothness_mean
         Mean smoothness of the mass (numeric).

      compactness_mean
         Mean compactness of the mass (numeric).

      concavity_mean
         Mean concavity of the mass (numeric).

      concave_points_mean
         Mean number of concave points on the mass contour (numeric).

      symmetry_mean
         Mean symmetry of the mass (numeric).

      fractal_dimension_mean
         Mean fractal dimension of the mass (numeric).

      radius_sd
         Standard deviation of the radius (numeric).

      texture_sd
         Standard deviation of the texture (numeric).

      perimeter_sd
         Standard deviation of the perimeter (numeric).

      area_sd
         Standard deviation of the area (numeric).

      smoothness_sd
         Standard deviation of the smoothness (numeric).

      compactness_sd
         Standard deviation of the compactness (numeric).

      concavity_sd
         Standard deviation of the concavity (numeric).

      concave_points_sd
         Standard deviation of the number of concave points (numeric).

      symmetry_sd
         Standard deviation of the symmetry (numeric).

      fractal_dimension_sd
         Standard deviation of the fractal dimension (numeric).

      radius_peak
         Worst (peak) value of the radius (numeric).

      texture_peak
         Worst (peak) value of the texture (numeric).

      perimeter_peak
         Worst (peak) value of the perimeter (numeric).

      area_peak
         Worst (peak) value of the area (numeric).

      smoothness_peak
         Worst (peak) value of the smoothness (numeric).

      compactness_peak
         Worst (peak) value of the compactness (numeric).

      concavity_peak
         Worst (peak) value of the concavity (numeric).

      concave_points_peak
         Worst (peak) number of concave points (numeric).

      symmetry_peak
         Worst (peak) value of the symmetry (numeric).

      fractal_dimension_peak
         Worst (peak) value of the fractal dimension (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'BreastCancerWI_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The original content has not been modified in any
      way.

      .. rubric:: Source
         :name: source

      Data taken from the cases package. Original documentation
      available at:
      https://archive.ics.uci.edu/ml/datasets/breast+cancer+wisconsin+(diagnostic).
