.. container::

   .. container::

      ============================ ===============
      labor_market_discriminiation R Documentation
      ============================ ===============

      .. rubric:: Are Emily and Greg More Employable Than Lakisha and
         Jamal?
         :name: are-emily-and-greg-more-employable-than-lakisha-and-jamal

      .. rubric:: Description
         :name: description

      Original data from the experiment run by Bertrand and Mullainathan
      (2004).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         labor_market_discrimination

      .. rubric:: Format
         :name: format

      A tibble with 4870 observations of 63 variables.

      education
         Highest education, with levels of 0 = not reported; 1 = high
         school diploma; 2 = high school graduate; 3 = some college; 4 =
         college or more.

      n_jobs
         Number of jobs listed on resume.

      years_exp
         Number of years of work experience on the resume.

      honors
         Indicator variable for which 1 = resume mentions some honors.

      volunteer
         Indicator variable for which 1 = resume mentions some
         volunteering experience.

      military
         Indicator variable for which 1 = resume mentions some military
         experience.

      emp_holes
         Indicator variable for which 1 = resume mentions some
         employment holes.

      occup_specific
         1990 Census Occupation Code. See sources for a key.

      occup_broad
         Occupation broad with levels 1 = executives and managerial
         occupations, 2 = administrative supervisors, 3 = sales
         representatives, 4 = sales workers, 5 = secretaries and legal
         assistants, 6 = clerical occupations

      work_in_school
         Indicator variable for which 1 = resume mentions some work
         experience while at school

      email
         Indicator variable for which 1 = email address on applicant's
         resume.

      computer_skills
         Indicator variable for which 1 = resume mentions some computer
         skills.

      special_skills
         Indicator variable for which 1 = resume mentions some special
         skills.

      first_name
         Applicant's first name.

      sex
         Sex, with levels of 'f' = female; 'm' = male.

      race
         Race, with levels of 'b' = black; 'w' = white.

      h
         Indicator variable for which 1 = high quality resume.

      l
         Indicator variable for which 1 = low quality resume.

      call
         Indicator variable for which 1 = applicant was called back.

      city
         City, with levels of 'c' = chicago; 'b' = boston.

      kind
         Kind, with levels of 'a' = administrative; 's' = sales.

      ad_id
         Employment ad identifier.

      frac_black
         Fraction of blacks in applicant's zip.

      frac_white
         Fraction of whites in applicant's zip.

      l_med_hh_inc
         Log median household income in applicant's zip.

      frac_dropout
         Fraction of high-school dropouts in applicant's zip.

      frac_colp
         Fraction of college degree or more in applicant's zip

      l_inc
         Log per capita income in applicant's zip.

      col
         Indicator variable for which 1 = applicant has college degree
         or more.

      expminreq
         Minimum experience required, if any (in years when numeric).

      school_req
         Specific education requirement, if any. 'hsg' = high school
         graduate, 'somcol' = some college, 'colp' = four year degree or
         higher

      eoe
         Indicator variable for which 1 = ad mentions employer is 'Equal
         Opportunity Employer'.

      parent_sales
         Sales of parent company (in millions of US $).

      parent_emp
         Number of parent company employees.

      branch_sales
         Sales of branch (in millions of US $).

      branch_emp
         Number of branch employees.

      fed
         Indicator variable for which 1 = employer is a federal
         contractor.

      frac_black_emp_zip
         Fraction of blacks in employers's zipcode.

      frac_white_emp_zip
         Fraction of whites in employer's zipcode.

      l_med_hh_inc_emp_zip
         Log median household income in employer's zipcode.

      frac_dropout_emp_zip
         Fraction of high-school dropouts in employer's zipcode.

      frac_colp_emp_zip
         Fraction of college degree or more in employer's zipcode.

      l_inc_emp_zip
         Log per capita income in employer's zipcode.

      manager
         Indicator variable for which 1 = executives or managers wanted.

      supervisor
         Indicator variable for which 1 = administrative supervisors
         wanted.

      secretary
         Indicator variable for which 1 = secretaries or legal
         assistants wanted.

      off_support
         Indicator variable for which 1 = clerical workers wanted.

      sales_rep
         Indicator variable for which 1 = sales representative wanted.

      retail_sales
         Indicator variable for which 1 = retail sales worker wanted.

      req
         Indicator variable for which 1 = ad mentions any requirement
         for job.

      exp_req
         Indicator variable for which 1 = ad mentions some experience
         requirement.

      com_req
         Indicator variable for which 1 = ad mentions some communication
         skills requirement.

      educ_req
         Indicator variable for which 1 = ad mentions some educational
         requirement.

      comp_req
         Indicator variable for which 1 = ad mentions some computer
         skill requirement.

      org_req
         Indicator variable for which 1 = ad mentions some
         organizational skills requirement.

      manuf
         Indicator variable for which 1 = employer industry is
         manufacturing.

      trans_com
         Indicator variable for which 1 = employer industry is transport
         or communication.

      bank_real
         Indicator variable for which 1 = employer industry is finance,
         insurance or real estate.

      trade
         Indicator variable for which 1 = employer industry is wholesale
         or retail trade.

      bus_service
         Indicator variable for which 1 = employer industry is business
         or personal services.

      oth_service
         Indicator variable for which 1 = employer industry is health,
         education or social services.

      miss_ind
         Indicator variable for which 1 = employer industry is other or
         unknown.

      ownership
         Ownership status of employer, with levels of 'non-profit';
         'private'; 'public'

      .. rubric:: Details
         :name: details

      From the summary: "We study race in the labor market by sending
      fictitious resumes to help-wanted ads in Boston and Chicago
      newspapers. To manipulate perceived race, resumes are randomly
      assigned African-American- or White-sounding names. White names
      receive 50 percent more callbacks for interviews. Callbacks are
      also more responsive to resume quality for White names than for
      African-American ones. The racial gap is uniform across
      occupation, industry, and employer size. We also find little
      evidence that employers are inferring social class from the names.
      Differential treatment by race still appears to be prominent in
      the U. S. labor market."

      .. rubric:: Source
         :name: source

      Bertrand, Marianne, and Mullainathan, Sendhil. Replication data
      for: Are Emily and Greg More Employable Than Lakisha and Jamal? A
      Field Experiment on Labor Market Discrimination. Nashville, TN:
      American Economic Association [publisher], 2004. Ann Arbor, MI:
      Inter-university Consortium for Political and Social Research
      [distributor], 2019-12-06.
      `doi:10.3886/E116023V1 <https://doi.org/10.3886/E116023V1>`__.

      `NBER Working
      Papers <https://www.nber.org/system/files/working_papers/w9873/w9873.pdf>`__

      `1990 Census Occupation
      Codes <https://usa.ipums.org/usa/volii/occ1990.shtml>`__

      Note: The description of the variables follows closely the labels
      provided in the original dataset, with small edits for clarity.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)

         # Percent callback for typical White names and typical African-American names (table 1, p. 997)

         labor_market_discrimination %>%
           group_by(race) %>%
           summarise(call_back = mean(call))
