.. container::

   ======= ===============
   veteran R Documentation
   ======= ===============

   .. rubric:: Veterans' Administration Lung Cancer study
      :name: veterans-administration-lung-cancer-study

   .. rubric:: Description
      :name: description

   Randomised trial of two treatment regimens for lung cancer. This is a
   standard survival analysis data set.

   .. rubric:: Usage
      :name: usage

   ::

      veteran
      data(cancer, package="survival")

   .. rubric:: Format
      :name: format

   ========= =========================================
   trt:      1=standard 2=test
   celltype: 1=squamous, 2=smallcell, 3=adeno, 4=large
   time:     survival time
   status:   censoring status
   karno:    Karnofsky performance score (100=good)
   diagtime: months from diagnosis to randomisation
   age:      in years
   prior:    prior therapy 0=no, 10=yes
   \         
   ========= =========================================

   .. rubric:: Source
      :name: source

   D Kalbfleisch and RL Prentice (1980), *The Statistical Analysis of
   Failure Time Data*. Wiley, New York.
