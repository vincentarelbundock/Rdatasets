.. container::

   =========== ===============
   ResumeNames R Documentation
   =========== ===============

   .. rubric:: Are Emily and Greg More Employable Than Lakisha and
      Jamal?
      :name: ResumeNames

   .. rubric:: Description
      :name: description

   Cross-section data about resume, call-back and employer information
   for 4,870 fictitious resumes.

   .. rubric:: Usage
      :name: usage

   ::

      data("ResumeNames")

   .. rubric:: Format
      :name: format

   A data frame containing 4,870 observations on 27 variables.

   name
      factor indicating applicant's first name.

   gender
      factor indicating gender.

   ethnicity
      factor indicating ethnicity (i.e., Caucasian-sounding vs.
      African-American sounding first name).

   quality
      factor indicating quality of resume.

   call
      factor. Was the applicant called back?

   city
      factor indicating city: Boston or Chicago.

   jobs
      number of jobs listed on resume.

   experience
      number of years of work experience on the resume.

   honors
      factor. Did the resume mention some honors?

   volunteer
      factor. Did the resume mention some volunteering experience?

   military
      factor. Does the applicant have military experience?

   holes
      factor. Does the resume have some employment holes?

   school
      factor. Does the resume mention some work experience while at
      school?

   email
      factor. Was the e-mail address on the applicant's resume?

   computer
      factor. Does the resume mention some computer skills?

   special
      factor. Does the resume mention some special skills?

   college
      factor. Does the applicant have a college degree or more?

   minimum
      factor indicating minimum experience requirement of the employer.

   equal
      factor. Is the employer EOE (equal opportunity employment)?

   wanted
      factor indicating type of position wanted by employer.

   requirements
      factor. Does the ad mention some requirement for the job?

   reqexp
      factor. Does the ad mention some experience requirement?

   reqcomm
      factor. Does the ad mention some communication skills requirement?

   reqeduc
      factor. Does the ad mention some educational requirement?

   reqcomp
      factor. Does the ad mention some computer skills requirement?

   reqorg
      factor. Does the ad mention some organizational skills
      requirement?

   industry
      factor indicating type of employer industry.

   .. rubric:: Details
      :name: details

   Cross-section data about resume, call-back and employer information
   for 4,870 fictitious resumes sent in response to employment
   advertisements in Chicago and Boston in 2001, in a randomized
   controlled experiment conducted by Bertrand and Mullainathan (2004).
   The resumes contained information concerning the ethnicity of the
   applicant. Because ethnicity is not typically included on a resume,
   resumes were differentiated on the basis of so-called “Caucasian
   sounding names” (such as Emily Walsh or Gregory Baker) and “African
   American sounding names” (such as Lakisha Washington or Jamal Jones).
   A large collection of fictitious resumes were created and the
   pre-supposed ethnicity (based on the sound of the name) was randomly
   assigned to each resume. These resumes were sent to prospective
   employers to see which resumes generated a phone call from the
   prospective employer.

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Bertrand, M. and Mullainathan, S. (2004). Are Emily and Greg More
   Employable Than Lakisha and Jamal? A Field Experiment on Labor Market
   Discrimination. *American Economic Review*, **94**, 991–1013.

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``

   .. rubric:: Examples
      :name: examples

   ::

      data("ResumeNames")
      summary(ResumeNames)
      prop.table(xtabs(~ ethnicity + call, data = ResumeNames), 1)
