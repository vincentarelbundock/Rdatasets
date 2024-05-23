.. container::

   .. container::

      ========== ===============
      mm_randhie R Documentation
      ========== ===============

      .. rubric:: Data from the RAND Health Insurance Experiment (HIE)
         :name: data-from-the-rand-health-insurance-experiment-hie

      .. rubric:: Description
         :name: description

      These are data from the RAND Health Insurance Experiment (HIE).
      People who have read *Mastering 'Metrics* should recognize these
      data. They're featured prominently in that book and the authors'
      discussion of random assignment and experiments.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         mm_randhie

      .. rubric:: Format
         :name: format

      The data are a list of two data frames (or "tibbles"). The first
      is the baseline data.

      ``plantype``
         the plan coverage of the respondent, as a factor

      ``age``
         the age of the respondent

      ``blackhisp``
         whether the respondent is not white

      ``cholest``
         the cholesterol level of the respondent (in ``mg/dl``)

      ``educper``
         the education-level of the respondent

      ``female``
         whether the respondent is a woman

      ``ghindx``
         a general health index

      ``hosp``
         was the respondent hospitalized last year?

      ``income1cpi``
         the family/household income of the respondent, adjusted for
         inflation

      ``mhi``
         a mental health index

      ``systol``
         the systolic blood pressure level of the respondent (in
         ``mm HG``)

      The second is the outcome data.

      ``plantype``
         the plan coverage of the respondent, as a factor

      ``ftf``
         the number of face-to-face visits for the respondent

      ``out_inf``
         the total of out-patient expenses for the respondent

      ``totadm``
         the number of hospital admissions for the respondent

      ``tot_inf``
         the total health expenses for the respondent

      .. rubric:: Details
         :name: details

      Data are already cleaned in a way that facilitates an easy
      replication of Table 1.3 and a partial replication of Table 1.4 in
      *Mastering 'Metrics*. Check the book's website for more
      information. I want to note that my treatment of the data leans
      heavily on Jeff Arnold's treatment of it. Check
      https://jrnold.github.io/masteringmetrics/ for more information.
      Future updates to the data may pursue a more exhaustive
      replication. I will only note these data are a mess and the
      authors of *Mastering 'Metrics* do not do a great job annotating
      code.

      .. rubric:: Source
         :name: source

      RAND Health Insurance Experiment.
