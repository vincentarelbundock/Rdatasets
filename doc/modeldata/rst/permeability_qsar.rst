.. container::

   .. container::

      ================= ===============
      permeability_qsar R Documentation
      ================= ===============

      .. rubric:: Predicting permeability from chemical information
         :name: predicting-permeability-from-chemical-information

      .. rubric:: Description
         :name: description

      A quantitative structure-activity relationship (QSAR) data set to
      predict when a molecule can permeate cells.

      .. rubric:: Details
         :name: details

      This pharmaceutical data set was used to develop a model for
      predicting compounds' permeability. In short, permeability is the
      measure of a molecule's ability to cross a membrane. The body, for
      example, has notable membranes between the body and brain, known
      as the blood-brain barrier, and between the gut and body in the
      intestines. These membranes help the body guard critical regions
      from receiving undesirable or detrimental substances. For an
      orally taken drug to be effective in the brain, it first must pass
      through the intestinal wall and then must pass through the
      blood-brain barrier in order to be present for the desired
      neurological target. Therefore, a compound's ability to permeate
      relevant biological membranes is critically important to
      understand early in the drug discovery process. Compounds that
      appear to be effective for a particular disease in research
      screening experiments, but appear to be poorly permeable may need
      to be altered in order improve permeability, and thus the
      compound's ability to reach the desired target. Identifying
      permeability problems can help guide chemists towards better
      molecules.

      Permeability assays such as PAMPA and Caco-2 have been developed
      to help measure compounds' permeability (Kansy et al, 1998). These
      screens are effective at quantifying a compound's permeability,
      but the assay is expensive labor intensive. Given a sufficient
      number of compounds that have been screened, we could develop a
      predictive model for permeability in an attempt to potentially
      reduce the need for the assay. In this project there were 165
      unique compounds; 1107 molecular fingerprints were determined for
      each. A molecular fingerprint is a binary sequence of numbers that
      represents the presence or absence of a specific molecular
      sub-structure. The response is highly skewed, the predictors are
      sparse (15.5% are present), and many predictors are strongly
      associated.

      Columns:

      -  ``permeability``: numeric

      -  ``chem_fp_0001`` - ``chem_fp_1107``: numeric

      .. rubric:: Value
         :name: value

      ===================== ============
      ``permeability_qsar`` a data frame
      ===================== ============

      .. rubric:: Source
         :name: source

      Kuhn, Max, and Kjell Johnson. *Applied predictive modeling*. New
      York: Springer, 2013.

      .. rubric:: Examples
         :name: examples

      ::

         data(permeability_qsar)
         str(permeability_qsar)
