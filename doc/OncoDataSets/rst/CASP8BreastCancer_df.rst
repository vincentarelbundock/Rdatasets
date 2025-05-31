.. container::

   .. container::

      ==================== ===============
      CASP8BreastCancer_df R Documentation
      ==================== ===============

      .. rubric:: CASP8 Polymorphism and Breast Cancer Risk
         :name: casp8-polymorphism-and-breast-cancer-risk

      .. rubric:: Description
         :name: description

      This dataset, CASP8BreastCancer_df, is a data frame containing
      results from 4 case-control studies examining the association
      between the CASP8 -652 6N del promoter polymorphism and breast
      cancer risk. The dataset includes information on the presence or
      absence of the polymorphism in both cases (breast cancer patients)
      and controls, with different genotypic combinations analyzed.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CASP8BreastCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 4 observations and 7 variables:

      study
         Study identifier (character).

      bc.ins.ins
         Number of breast cancer cases with the ins/ins genotype
         (integer).

      bc.ins.del
         Number of breast cancer cases with the ins/del genotype
         (integer).

      bc.del.del
         Number of breast cancer cases with the del/del genotype
         (integer).

      ct.ins.ins
         Number of control cases with the ins/ins genotype (integer).

      ct.ins.del
         Number of control cases with the ins/del genotype (integer).

      ct.del.del
         Number of control cases with the del/del genotype (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'CASP8BreastCancer_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The original content has not been modified in any
      way.

      .. rubric:: Source
         :name: source

      Data taken from the metadat package. Frank, B., Rigas, S. H.,
      Bermejo, J. L., Wiestler, M., Wagner, K., Hemminki, K., Reed, M.
      W., Sutter, C., Wappenschmidt, B., Balasubramanian, S. P., Meindl,
      A., Kiechle, M., Bugert, P., Schmutzler, R. K., Bartram, C. R.,
      Justenhoven, C., Ko, Y.-D., Brüning, T., Brauch, H., Hamann, U.,
      Pharoah, P. P. D., Dunning, A. M., Pooley, K. A., Easton, D. F.,
      Cox, A. & Burwinkel, B. (2008). The CASP8 -652 6N del promoter
      polymorphism and breast cancer risk: A multicenter study. Breast
      Cancer Research and Treatment, 111(1), 139-144.
      https://doi.org/10.1007/s10549-007-9752-z
