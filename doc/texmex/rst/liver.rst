.. container::

   .. container::

      ===== ===============
      liver R Documentation
      ===== ===============

      .. rubric:: Liver related laboratory data
         :name: liver-related-laboratory-data

      .. rubric:: Description
         :name: description

      Liver related laboratory data from a randomized, blind, parallel
      group clinical trial with 4 doses of a drug.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(liver)

      .. rubric:: Format
         :name: format

      A data frame with 606 observations on the following 9 variables.

      ALP.B
         Alkaline phosphatase at baseline. A numeric vector.

      ALT.B
         Alanine aminotransferase at baseline. A numeric vector.

      AST.B
         Aspartate aminotransferase at baseline. A numeric vector.

      TBL.B
         Total bilirubin at baseline. A numeric vector.

      ALP.M
         Alkaline phosphatase after treatment. A numeric vector.

      ALT.M
         Alanine aminotransferase after treatment. A numeric vector.

      AST.M
         Aspartate aminotransferase after treatment. A numeric vector.

      TBL.M
         Total bilirubin after treatment. A numeric vector.

      dose
         The treatment group (i.e. dose group). A factor with levels
         ``A`` ``B`` ``C`` ``D``

      .. rubric:: Details
         :name: details

      Dose A is the lowest dose, dose, B the next, C the next, and D the
      highest dose. The baseline values were taken prior to any
      treatment being received, and the clinical trial had a single
      post-baseline visit.

      .. rubric:: Source
         :name: source

      AstraZeneca data on file.
