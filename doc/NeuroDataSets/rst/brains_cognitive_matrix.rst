.. container::

   .. container::

      ======================= ===============
      brains_cognitive_matrix R Documentation
      ======================= ===============

      .. rubric:: BRAiNS Cohort Cognitive States Matrix
         :name: brains-cohort-cognitive-states-matrix

      .. rubric:: Description
         :name: description

      This dataset, ``brains_cognitive_matrix``, is a matrix containing
      the states and covariates of 649 participants enrolled in the
      BRAiNS cohort at the University of Kentucky's Alzheimer's Disease
      Research Center. The data includes longitudinal cognitive
      assessments and various health covariates across multiple visits.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(brains_cognitive_matrix)

      .. rubric:: Format
         :name: format

      A matrix with 6240 observations and 13 variables:

      ID
         Integer: Participant identification number

      visitno
         Integer: Visit number

      prstate
         Integer: Previous cognitive state

      custate
         Integer: Current cognitive state

      bagec
         Integer: Baseline age centered

      famhx
         Integer: Family history of dementia (0 = No, 1 = Yes)

      HBP
         Integer: History of high blood pressure (0 = No, 1 = Yes)

      apoe4
         Integer: APOE ``\varepsilon_4`` allele carrier status (0 =
         Non-carrier, 1 = Carrier)

      smk1
         Integer: Smoking status indicator 1

      smk2
         Integer: Smoking status indicator 2

      smk3
         Integer: Smoking status indicator 3

      lowed
         Integer: Low education indicator (0 = No, 1 = Yes)

      headinj
         Integer: History of head injury (0 = No, 1 = Yes)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as ``brains_cognitive_matrix`` to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package. The suffix ``matrix`` indicates that the
      dataset is a matrix. The original content has not been modified.

      .. rubric:: Source
         :name: source

      Data taken from the RRMLRfMC package version 0.4.0. Original
      study: University of Kentucky's Alzheimer's Disease Research
      Center BRAiNS cohort.
