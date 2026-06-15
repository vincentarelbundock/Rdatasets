======= ===============
ADHD_df R Documentation
======= ===============

ADHD Symptom Checklist for Children Aged 6–8 Years
--------------------------------------------------

Description
~~~~~~~~~~~

This dataset, ADHD_df, is a data frame containing ADHD symptom ratings
for 355 children aged 6 to 8 years from the Children's Attention Project
(CAP) cohort (Silk et al. 2019). The sample consists of 146 children
diagnosed with ADHD and 209 without a diagnosis. Symptoms were assessed
through structured interviews with parents using the NIMH Diagnostic
Interview Schedule for Children IV (DISC-IV) (Shaffer et al. 2000). The
checklist includes 18 items: 9 Inattentive (I) and 9
Hyperactive/Impulsive (HI). Each symptom item is binary coded (1 =
present, 0 = absent), providing a comprehensive assessment of ADHD
symptomatology in young children.

Usage
~~~~~

.. code:: R

   data(ADHD_df)

Format
~~~~~~

A data frame with 355 observations and 19 variables:

group
   Group indicator (integer: 1 = ADHD diagnosis, 0 = no diagnosis)

avoid
   Avoids tasks requiring sustained mental effort (integer: 0 or 1)

closeatt
   Fails to give close attention to details (integer: 0 or 1)

distract
   Easily distracted by extraneous stimuli (integer: 0 or 1)

forget
   Forgetful in daily activities (integer: 0 or 1)

instruct
   Fails to follow through on instructions (integer: 0 or 1)

listen
   Does not seem to listen when spoken to directly (integer: 0 or 1)

loses
   Loses things necessary for tasks or activities (integer: 0 or 1)

org
   Difficulty organizing tasks and activities (integer: 0 or 1)

susatt
   Difficulty sustaining attention in tasks or play (integer: 0 or 1)

blurts
   Blurts out answers before questions are completed (integer: 0 or 1)

fidget
   Fidgets with hands or feet or squirms in seat (integer: 0 or 1)

interrupt
   Interrupts or intrudes on others (integer: 0 or 1)

motor
   Acts as if driven by a motor (integer: 0 or 1)

quiet
   Difficulty playing or engaging quietly in leisure activities
   (integer: 0 or 1)

runs
   Runs about or climbs excessively in inappropriate situations
   (integer: 0 or 1)

seat
   Leaves seat in situations when remaining seated is expected (integer:
   0 or 1)

talks
   Talks excessively (integer: 0 or 1)

turn
   Difficulty waiting turn (integer: 0 or 1)

Details
~~~~~~~

The dataset name has been kept as ADHD_df to avoid confusion with other
datasets in the R ecosystem. This naming convention helps distinguish
this dataset as part of the NeuroDataSets package and assists users in
identifying its specific characteristics. The suffix df indicates that
the dataset is a data frame. The original content has not been modified.

Source
~~~~~~

Data taken from the bgms package version 0.1.6.1
