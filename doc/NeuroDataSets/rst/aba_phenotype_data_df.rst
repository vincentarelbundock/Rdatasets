.. container::

   .. container::

      ===================== ===============
      aba_phenotype_data_df R Documentation
      ===================== ===============

      .. rubric:: Allen Brain Atlas Phenotype Data
         :name: allen-brain-atlas-phenotype-data

      .. rubric:: Description
         :name: description

      This dataset, aba_phenotype_data_df, is a data frame containing
      brain tissue phenotype measurements from the Allen Brain Atlas
      Aging, Dementia, and TBI study. The data includes
      immunohistochemistry markers for microglia and astrocytes across
      377 brain samples, intended for correlation analyses with
      expression data.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(aba_phenotype_data_df)

      .. rubric:: Format
         :name: format

      A data frame with 377 observations and 4 variables:

      structure_acronym.x
         Character: Brain structure acronym

      ihc_iba1_ffpe
         Numeric: IBA1 immunohistochemistry measurement (microglia
         marker)

      ihc_gfap_ffpe
         Numeric: GFAP immunohistochemistry measurement (astrocyte
         marker)

      id
         Character: Sample identification code

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'aba_phenotype_data_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix 'df' indicates that the dataset
      is a data frame. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the BRETIGEA package version 1.0.3. Original data
      from: Allen Brain Atlas Aging, Dementia, and TBI study.
