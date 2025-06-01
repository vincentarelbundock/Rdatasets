.. container::

   .. container::

      ====== ===============
      BACups R Documentation
      ====== ===============

      .. rubric:: Bronze Age Cups from Italy
         :name: bronze-age-cups-from-italy

      .. rubric:: Description
         :name: description

      Measurements on Early and Late Bronze Age ceramic cups from Italy
      analyzed by Lukesh and Howe (1978).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("BACups")

      .. rubric:: Format
         :name: format

      A data frame with 60 observations on the following 6 variables.

      ``RD``
         Rim Diameter

      ``ND``
         Neck Diameter

      ``SD``
         Shoulder Diameter

      ``H``
         Total Height

      ``NH``
         Neck Height

      ``Phase``
         Chronological Phase: Protoapennine, Subapennine

      .. rubric:: Details
         :name: details

      These data on the dimensions of Bronze Age cups from Italy are a
      subset extracted from a set published by Lukesh and Howe (1978) of
      the specimens for which full data was available. The data were
      scanned from Table A4 (Appendix A) in Baxter (1994). The
      Protoapennine cups are Early Bronze Age while the Subapennine cups
      are Late Bronze Age.

      .. rubric:: Source
         :name: source

      Baxter, M. J. 1994. *Exploratory Multivariate Analysis in
      Archaeology*. Edinburgh University Press. Edinburgh.

      Lukesh S. S. and S. Howe 1978. Protoapennine vs. Subapennine:
      Mathematical Distinction Between Two Ceramic Phases. *Journal of
      Field Archaeology* 5: 339-47.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(BACups)
         by(BACups[, -6], BACups$Phase, summary)
         plot(RD~H, BACups, pch=as.numeric(Phase))
         legend("topleft", levels(BACups$Phase), pch=1:2)
