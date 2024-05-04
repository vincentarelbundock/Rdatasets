.. container::

   .. container::

      ======= ===============
      ad_data R Documentation
      ======= ===============

      .. rubric:: Alzheimer's disease data
         :name: alzheimers-disease-data

      .. rubric:: Description
         :name: description

      Alzheimer's disease data

      .. rubric:: Details
         :name: details

      Craig-Schapiro et al. (2011) describe a clinical study of 333
      patients, including some with mild (but well-characterized)
      cognitive impairment as well as healthy individuals. CSF samples
      were taken from all subjects. The goal of the study was to
      determine if subjects in the early states of impairment could be
      differentiated from cognitively healthy individuals. Data
      collected on each subject included:

      -  Demographic characteristics such as age and gender

      -  Apolipoprotein E genotype

      -  Protein measurements of Abeta, Tau, and a phosphorylated
         version of Tau (called pTau)

      -  Proteinmeasurements of 124 exploratory biomarkers, and

      -  Clinical dementia scores

      For these analyses, we have converted the scores to two classes:
      impaired and healthy. The goal of this analysis is to create
      classification models using the demographic and assay data to
      predict which patients have early stages of disease.

      .. rubric:: Value
         :name: value

      =========== ========
      ``ad_data`` a tibble
      =========== ========

      .. rubric:: Source
         :name: source

      Kuhn, M., Johnson, K. (2013) *Applied Predictive Modeling*,
      Springer.

      Craig-Schapiro R, Kuhn M, Xiong C, Pickering EH, Liu J, Misko TP,
      et al. (2011) Multiplexed Immunoassay Panel Identifies Novel CSF
      Biomarkers for Alzheimer's Disease Diagnosis and Prognosis. PLoS
      ONE 6(4): e18850.

      .. rubric:: Examples
         :name: examples

      ::

         data(ad_data)
         str(ad_data)
