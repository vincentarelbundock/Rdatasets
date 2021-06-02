=============== ===============
get_it_dunn_run R Documentation
=============== ===============

Get it Dunn Run, Race Times
---------------------------

Description
~~~~~~~~~~~

Get it Dunn is a small regional run that got extra attention when a
runner, Nichole Porath, made the Guiness Book of World Records for the
fastest time pushing a double stroller in a half marathon. This dataset
contains results from the 2017 and 2018 races.

Usage
~~~~~

::

   get_it_dunn_run

Format
~~~~~~

A data frame with 978 observations on the following 10 variables.

date
   Date of the run.

race
   Run distance.

bib_num
   Bib number of the runner.

first_name
   First name of the runner.

last_initial
   Initial of the runner's last name.

sex
   Sex of the runner.

age
   Age of the runner.

city
   City of residence.

state
   State of residence.

run_time_minutes
   Run time, in minutes.

Source
~~~~~~

Data were collected from GSE Timing: `2018
data <https://www.gsetiming.com/results/fitness_events/results.asp?event_type=5&event_id=718>`__,
`2017 race
data <https://www.gsetiming.com/results/fitness_events/results.asp?event_type=5&event_id=640>`__.

Examples
~~~~~~~~

::


   d <- subset(get_it_dunn_run,
       race == "5k" & date == "2018-05-12" &
           !is.na(age) & state %in% c("MN", "WI"))
   head(d)
   m <- lm(run_time_minutes ~ sex + age + state, d)
   summary(m)
   plot(m$fitted, m$residuals)
   boxplot(m$residuals ~ d$sex)
   plot(m$residuals ~ d$age)
   hist(m$residuals)

