.. container::

   .. container::

      ===== ===============
      rats2 R Documentation
      ===== ===============

      .. rubric:: Rat data from Gail et al.
         :name: rat-data-from-gail-et-al.

      .. rubric:: Description
         :name: description

      48 rats were injected with a carcinogen, and then randomized to
      either drug or placebo. The number of tumors ranges from 0 to 13;
      all rats were censored at 6 months after randomization.

      .. rubric:: Usage
         :name: usage

      ::

         rats2
         data(cancer, package="survival")

      .. rubric:: Format
         :name: format

      ============ =================================
      rat:         id
      trt:         treatment,(1=drug, 0=control)
      observation: within rat
      start:       entry time
      stop:        exit time
      status:      event status, 1=tumor, 0=censored
      \            
      ============ =================================

      .. rubric:: Source
         :name: source

      MH Gail, TJ Santner, and CC Brown (1980), An analysis of
      comparative carcinogenesis experiments based on multiple times to
      tumor. *Biometrics* **36**, 255–266.
