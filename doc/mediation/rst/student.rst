======= ===============
student R Documentation
======= ===============

Hypothetical student-level data
-------------------------------

Description
~~~~~~~~~~~

The original data source is the Education Longitudinal Study of 2002. To
deal with the issue on individually identifiable information, we
generated hypothetical student-level data using a multiple imputation
method. The Education Longitudinal Study of 2002 used a two-stage sample
selection process. First, a national sample of schools was selected
using stratified probability proportional to size (PPS), and school
contacting resulted in 1,221 eligible public, Catholic, and other
private schools from a population of approximately 27,000 schools
containing 10th grade students. Of the eligible schools, 752
participated in the study. In the second stage of sample selection, a
sample of approximately 26 sophomores, from within each of the
participating public and private schools was selected. Each school was
asked to provide a list of 10th grade students, and quality assurance
(QA) checks were performed on each list that was received.

Usage
~~~~~

::

   student

Format
~~~~~~

A data matrix with 9,679 rows and 17 columns, containing no missing
values. The data are provided only for illustrative purposes and not for
inference about education effectiveness, for which the original data
source should be consulted.

SCH_ID:
   School indicator.

fight:
   Indicator variable for fight at school. 1 = fight.

attachment:
   Indicator variable for attachment to school. 1 = like.

work:
   Indicator variable for part-time job. 1 = work.

score:
   Measure of math score.

late:
   Frequency in which the student was late for school. 5 levels.

coed:
   Indicator variable for coeducation. 1 = coeducation.

smorale:
   Measure of student morale in the school. 4 levels.

gender:
   Indicator variable for gender. 1 = female.

income:
   Total family income. 13 levels.

free:
   Percent of 10th grade students receiving free lunch. 1 to 7 levels.

pared:
   Parents highest level of education. 8 levels

catholic:
   Indicator variable for catholic school. 1 = catholic school.

Source
~~~~~~

The complete student-level data is available from the data archives at
www.icpsr.umich.edu/

References
~~~~~~~~~~

United States Department of Education. National Center for Education
Statistics
