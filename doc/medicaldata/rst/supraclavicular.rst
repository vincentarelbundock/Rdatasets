.. container::

   =============== ===============
   supraclavicular R Documentation
   =============== ===============

   .. rubric:: Study of Supraclavicular Anesthesia
      :name: supraclavicular

   .. rubric:: Description
      :name: description

   | This data set contains 103 patients who were scheduled to undergo
     an upper extremity procedure suitable for supraclavicular
     anesthesia. Patients were randomly assigned to either (1) combined
     group-ropivacaine and mepivacaine mixture; or (2) sequential
     group-mepivacaine followed by ropivacaine. A number of demographic
     and post-op pain medication variables (fentanyl, alfentanil,
     midazolam) were collected. The primary outcome is time to 4-nerve
     sensory block onset. The dataset is cleaned and relatively
     complete. There are no outliers or data problems (**more details**
     available below the variable definitions).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      supraclavicular

   .. rubric:: Format
      :name: format

   A data frame with 103 observations and 17 variables

   ``subject``
      Subject ID, numeric, range: 1-103

   ``group``
      Anesthetic group, numeric, 1 = Mixture; 2 = Sequential

   ``gender``
      Gender, numeric, 1 = Male; 0= Female

   ``bmi``
      Body mass index (kg/m^2), numeric, range:19-43.5

   ``age``
      Age (years), numeric, range:18-74

   ``fentanyl``
      Fentanyl pain medication (micrograms), numeric, range: 0-250.0

   ``alfentanil``
      Alfentanil pain medication (milligrams), numeric, range: 0-4.3

   ``midazolam``
      Midazolam hypnotic-sedative medication, numeric, range: 0-9.0

   ``onset_sensory``
      Time to 4 nerve sensory block onset or, if onset_sensory block
      failed the observed worst outcome of minutes for any patient (50
      minutes), numeric, range: 0-50.0

   ``onset_first_sensory``
      Time to first sensory block in minutes, or if block failed, a
      value of 15 minutes, numeric, range: 6-15.0

   ``onset_motor``
      Time to complete motor block or, if motor block failed, the
      observed worst outcome of minutes for any patient (50 minutes),
      numeric, range: 1-50.0

   ``nerve_block_censor``
      block failed, numeric, 0 = nerve block succeeded, 1 = block failed
      (censored)

   ``med_duration``
      Time from the onset of 4 nerve sensory block until the first
      request for an analgesic medication (hours), numeric, range:
      0-48.0

   ``med_censor``
      Patients who did not take an analgesic were censored at 48 hours,
      numeric, 0 = nerve succeeded, 1 = block failed (censored)

   ``vps_rest``
      Maximum postop verbal pain score (at rest), on 11 point Likert
      scale (0-10), numeric, range: 0-10

   ``vps_movement``
      Maximum postop verbal pain score (with movement), on 11 point
      Likert scale (0-10), numeric, range: 0-10

   ``opioid_total``
      Total opioid consumption in milligrams, numeric, range: 0-225.0

   .. rubric:: Details
      :name: details

   | The choice of anesthetic technique combined with a suitable plan
     for postoperative analgesia can facilitate early discharge, improve
     patient comfort, and increase overall satisfaction. Patients having
     painful procedures who undergo general anesthesia have a 2- to
     5-fold greater risk of unplanned overnight admissions compared with
     those having regional anesthesia. Regional anesthetic techniques
     and peripheral nerve blocks are especially favored for surgeries on
     the extremities. Both rapid onset of the block and prolonged
     postoperative analgesia are desired characteristics of regional
     anesthesia.
   | The choice of local anesthetics or combinations thereof can greatly
     influence the effectiveness of the block, onset time, duration of
     postoperative analgesia, need for opioid use, and patient
     satisfaction. Mepivacaine and ropivacaine are commonly used in
     peripheral nerve blocks, their drawbacks being a short duration
     with 1.5% mepivacaine and a delayed onset with 0.5% ropivacaine. An
     ideal local anesthetic with high potency, low toxicity, rapid
     onset, and prolonged duration does not exist yet. Investigators
     have therefore tried mixtures of local anesthetics in an attempt to
     combine their advantages with conflicting results. A potential
     problem is that mixing drugs dilutes the effects of each. Thus, a
     mixture of a rapid-onset drug such as mepivacaine with a
     long-acting one such as ropivacaine may well result in slower onset
     than mepivacaine alone and shorter duration of action than
     ropivacaine alone. In contrast, sequential administration of the
     same amounts of the same drugs may preserve the desirable features
     of each.
   | Objective: This study investigates whether sequential
     supraclavicular injection of 1.5% mepivacaine followed 90 seconds
     later by 0.5% ropivacaine provides a quicker onset and a longer
     duration of analgesia than an equidose combination of the 2 local
     anesthetics.

   .. rubric:: Source
      :name: source

   These are data from a study by Roberman et al. 'Combined Versus
   Sequential Injection of Mepivacaine and Ropivacaine for
   Supraclavicular Nerve Blocks'. Reg Anesth Pain Med 2011; 36:145-50.
