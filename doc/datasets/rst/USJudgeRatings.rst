.. container::

   .. container::

      ============== ===============
      USJudgeRatings R Documentation
      ============== ===============

      .. rubric:: Lawyers' Ratings of State Judges in the US Superior
         Court
         :name: lawyers-ratings-of-state-judges-in-the-us-superior-court

      .. rubric:: Description
         :name: description

      Lawyers' ratings of state judges in the US Superior Court.

      .. rubric:: Usage
         :name: usage

      ::

         USJudgeRatings

      .. rubric:: Format
         :name: format

      A data frame containing 43 observations on 12 numeric variables.

      ===== ======== ========================================
      [,1]  ``CONT`` Number of contacts of lawyer with judge.
      [,2]  ``INTG`` Judicial integrity.
      [,3]  ``DMNR`` Demeanor.
      [,4]  ``DILG`` Diligence.
      [,5]  ``CFMG`` Case flow managing.
      [,6]  ``DECI`` Prompt decisions.
      [,7]  ``PREP`` Preparation for trial.
      [,8]  ``FAMI`` Familiarity with law.
      [,9]  ``ORAL`` Sound oral rulings.
      [,10] ``WRIT`` Sound written rulings.
      [,11] ``PHYS`` Physical ability.
      [,12] ``RTEN`` Worthy of retention.
      ===== ======== ========================================

      .. rubric:: Source
         :name: source

      New Haven Register, 14 January, 1977 (from John Hartigan).

      .. rubric:: Examples
         :name: examples

      ::

         require(graphics)
         pairs(USJudgeRatings, main = "USJudgeRatings data")
