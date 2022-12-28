.. container::

   =============== ===============
   JobSatisfaction R Documentation
   =============== ===============

   .. rubric:: Job Satisfaction Data
      :name: job-satisfaction-data

   .. rubric:: Description
      :name: description

   Data from Petersen (1968) about the job satisfaction of 715 blue
   collar workers, selected from Danish Industry in 1968.

   .. rubric:: Usage
      :name: usage

   ::

      data("JobSatisfaction")

   .. rubric:: Format
      :name: format

   A data frame with 8 observations and 4 variables.

   Freq
      frequency.

   management
      factor indicating quality of management (bad, good).

   supervisor
      factor indicating supervisor's job satisfaction (low, high).

   own
      factor indicating worker's own job satisfaction (low, high).

   .. rubric:: Source
      :name: source

   E. B. Andersen (1991), The Statistical Analysis of Categorical Data,
   Table 5.4.

   .. rubric:: References
      :name: references

   E. B. Andersen (1991), *The Statistical Analysis of Categorical
   Data*. 2nd edition. Springer-Verlag, Berlin.

   E. Petersen (1968), *Job Satisfaction in Denmark*. (In Danish).
   Mentalhygiejnisk Forlag, Copenhagen.

   .. rubric:: Examples
      :name: examples

   ::

      data("JobSatisfaction")
      structable(~ ., data = JobSatisfaction)

      mantelhaen.test(xtabs(Freq ~ own + supervisor + management,
                            data = JobSatisfaction))
