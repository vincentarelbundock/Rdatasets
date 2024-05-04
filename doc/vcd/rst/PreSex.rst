.. container::

   .. container::

      ====== ===============
      PreSex R Documentation
      ====== ===============

      .. rubric:: Pre-marital Sex and Divorce
         :name: pre-marital-sex-and-divorce

      .. rubric:: Description
         :name: description

      Data from Thornes & Collard (1979), reported in Gilbert (1981), on
      pre- and extra-marital sex and divorce.

      .. rubric:: Usage
         :name: usage

      ::

         data("PreSex")

      .. rubric:: Format
         :name: format

      A 4-dimensional array resulting from cross-tabulating 1036
      observations on 4 variables. The variables and their levels are as
      follows:

      == =============== =================
      No Name            Levels
      1  MaritalStatus   Divorced, Married
      2  ExtramaritalSex Yes, No
      3  PremaritalSex   Yes, No
      4  Gender          Women, Men
      == =============== =================

      .. rubric:: Source
         :name: source

      Michael Friendly (2000), Visualizing Categorical Data:
      http://euclid.psych.yorku.ca/ftp/sas/vcd/catdata/marital.sas

      .. rubric:: References
         :name: references

      G. N. Gilbert (1981), *Modelling Society: An Introduction to
      Loglinear Analysis for Social Researchers*. Allen and Unwin,
      London.

      B. Thornes & J. Collard (1979), *Who Divorces?*. Routledge &
      Kegan, London.

      M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
      Cary, NC.

      .. rubric:: Examples
         :name: examples

      ::

         data("PreSex")

         ## Mosaic display for Gender and Premarital Sexual Experience
         ## (Gender Pre)
         mosaic(margin.table(PreSex, c(3,4)), 
                         main = "Gender and Premarital Sex")

         ## (Gender Pre)(Extra)
         mosaic(margin.table(PreSex, c(2,3,4)), 
                expected = ~Gender * PremaritalSex + ExtramaritalSex ,
                main = "PreMaritalSex*Gender +Sex")

         ## (Gender Pre Extra)(Marital)
         mosaic(PreSex,
                expected = ~Gender*PremaritalSex*ExtramaritalSex + MaritalStatus,
                main = "PreMarital*ExtraMarital + MaritalStatus")

         ## (GPE)(PEM)
         mosaic(PreSex, 
                expected = ~ Gender * PremaritalSex * ExtramaritalSex
                             + MaritalStatus * PremaritalSex * ExtramaritalSex,
                main = "G*P*E + P*E*M")
