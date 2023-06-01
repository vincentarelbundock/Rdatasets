.. container::

   ==== ===============
   jobs R Documentation
   ==== ===============

   .. rubric:: JOBS II data
      :name: jobs

   .. rubric:: Description
      :name: description

   Job Search Intervention Study (JOBS II). JOBS II is a randomized
   field experiment that investigates the efficacy of a job
   trainingintervention on unemployed workers. The program is designed
   to not only increase reemploymentamong the unemployed but also
   enhance the mental health of the job seekers. In the JOBS IIfield
   experiment, 1,801 unemployed workers received a pre-screening
   questionnaire and were thenrandomly assigned to treatment and control
   groups. Those in the treatment group participatedin job-skills
   workshops. In the workshops, respondents learned job-search skills
   and coping strategiesfor dealing with setbacks in the job-search
   process. Those in the control condition receiveda booklet describing
   job-search tips. In follow-up interviews, the two key outcome
   variables weremeasured; a continuous measure of depressive symptoms
   based on the Hopkins Symptom Checklist,and a binary variable,
   representing whether the respondent had become employed.

   .. rubric:: Usage
      :name: usage

   ::

      jobs

   .. rubric:: Format
      :name: format

   A data matrix with 899 rows and 17 columns, containing no missing
   values. The data are provided only for illustrative purposes and not
   for inference about program efficacy, for which the original data
   source should be consulted.

   econ_hard:
      Level of economic hardship pre-treatment with values from 1 to 5.

   depress1:
      Measure of depressive symptoms pre-treatment.

   sex:
      Indicator variable for sex. 1 = female

   age:
      Age in years.

   occp:
      Factor with seven categories for various occupations.

   marital:
      Factor with five categories for marital status.

   nonwhite:
      Indicator variable for race. 1 = nonwhite.

   educ:
      Factor with five categories for educational attainment.

   income:
      Factor with five categories for level of income.

   job_seek:
      A continuous scale measuring the level of job-search self-efficacy
      with values from 1 to 5. The mediator variable.

   depress2:
      Measure of depressive symptoms post-treatment.

   work1:
      Indicator variable for employment. 1 = employed.

   job_dich:
      The job_seek measure recoded into two categories of high and low.
      1 = high job search self-efficacy.

   job_disc:
      The job_seek measure recoded into four categories from lowest to
      highest.

   treat:
      Indicator variable for whether participant was randomly selected
      for the JOBS II training program. 1 = assignment to participation.

   comply:
      Indicator variable for whether participant actually participated
      in the JOBS II program. 1 = participation.

   control:
      Indicator variable for whether participant was randomly selected
      to not participate in the JOBS II training program. 1 =
      non-participation.

   .. rubric:: Source
      :name: source

   The complete JOBS II data is available from the data archives at
   www.icpsr.umich.edu/

   .. rubric:: References
      :name: references

   Vinokur, A. and Schul, Y. (1997). Mastery and inoculation against
   setbacks as active ingredients in the jobs intervention for the
   unemployed. Journal of Consulting and Clinical Psychology
   65(5):867-77.
