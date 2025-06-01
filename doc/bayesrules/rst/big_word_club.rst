.. container::

   .. container::

      ============= ===============
      big_word_club R Documentation
      ============= ===============

      .. rubric:: Big Word Club (BWC)
         :name: big-word-club-bwc

      .. rubric:: Description
         :name: description

      Data on the effectiveness of a digital learning program designed
      by the Abdul Latif Jameel Poverty Action Lab (J-PAL) to address
      disparities in vocabulary levels among children from households
      with different income levels.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         big_word_club

      .. rubric:: Format
         :name: format

      A data frame with 818 student-level observations and 31 variables:

      participant_id
         unique student id

      treat
         control group (0) or treatment group (1)

      age_months
         age in months

      female
         whether student identifies as female

      kindergarten
         grade level, pre-school (0) or kindergarten (1)

      teacher_id
         unique teacher id

      school_id
         unique school id

      private_school
         whether school is private

      title1
         whether school has Title 1 status

      free_reduced_lunch
         percent of school that receive free / reduced lunch

      state
         school location

      esl_observed
         whether student has ESL status

      special_ed_observed
         whether student has special education status

      new_student
         whether student enrolled after program began

      distracted_a1
         student's distraction level during assessment 1 (0 = not
         distracted; 1 = mildly distracted; 2 = moderately distracted; 3
         = extremely distracted)

      distracted_a2
         same as distracted_a1 but during assessment 2

      distracted_ppvt
         same as distracted_a1 but during standardized assessment

      score_a1
         student score on BWC assessment 1

      invalid_a1
         whether student's score on assessment 1 was invalid

      score_a2
         student score on BWC assessment 2

      invalid_a2
         whether student's score on assessment 2 was invalid

      score_ppvt
         student score on standardized assessment

      score_ppvt_age
         score_ppvt adjusted for age

      invalid_ppvt
         whether student's score on standardized assessment was invalid

      t_logins_april
         number of teacher logins onto BWC system in April

      t_logins_total
         number of teacher logins onto BWC system during entire study

      t_weeks_used
         number of weeks of the BWC program that the classroom has
         completed

      t_words_learned
         teacher response to the number of words students had learned
         through BWC (0 = almost none; 1 = 1 to 5; 2 = 6 to 10)

      t_financial_struggle
         teacher response to the number of their students that have
         families that experience financial struggle

      t_misbehavior
         teacher response to frequency that student misbehavior
         interferes with teaching (0 = never; 1 = rarely; 2 =
         occasionally; 3 = frequently)

      t_years_experience
         teacher's number of years of teaching experience

      score_pct_change
         percent change in scores before and after the program

      .. rubric:: Source
         :name: source

      These data correspond to the following study: Ariel Kalil, Susan
      Mayer, Philip Oreopoulos (2020). Closing the word gap with Big
      Word Club: Evaluating the Impact of a Tech-Based Early Childhood
      Vocabulary Program. Data was obtained through the was obtained
      through the Inter-university Consortium for Political and Social
      Research (ICPSR)
      https://www.openicpsr.org/openicpsr/project/117330/version/V1/view/.
