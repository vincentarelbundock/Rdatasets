.. container::

   .. container::

      ========= ===============
      smartpill R Documentation
      ========= ===============

      .. rubric:: Prospective Cohort Study of Intestinal Transit using a
         SmartPill to Compare Trauma Patients to Healthy Volunteers
         :name: prospective-cohort-study-of-intestinal-transit-using-a-smartpill-to-compare-trauma-patients-to-healthy-volunteers

      .. rubric:: Description
         :name: description

      | This study evaluated gastric emptying, small bowel transit time,
        and total intestinal transit time in 8 critically ill trauma
        patients. These data were compared with those obtained in 87
        healthy volunteers from a separate trial. Data were obtained
        with a motility capsule that wirelessly transmitted pH,
        pressure, and temperature to a recorder attached to each
        subject's abdomen. Transit times were available for almost all
        patients, however, pH, pressure and temperature data is missing
        for all critically ill patients and sparsely missing for the
        healthy volunteers (**more details** available below the
        variable definitions)

      .. rubric:: Usage
         :name: usage

      .. code:: R

         smartpill

      .. rubric:: Format
         :name: format

      A data frame with 95 obsrvations and 22 variables

      ``Group``
         Study group, numeric, 0 = Critically Ill Trama Patient, 1 =
         Healthy Volunteer

      ``Gender``
         Gender, numeric, range: 0 = Female, 1 = Male

      ``Race``
         Race, numeric, 1 = White, 2 = Black, 3 = Asian/Pacific
         Islander, 4 = Hispanic, 5 = Other

      ``Height``
         Height (centimeters), numeric, range: 132.1-193.0

      ``Weight``
         Weight (kilograms), numeric, range: 44.9-127.0

      ``Age``
         Age (years), numeric, range: 18.0-72.0

      ``GE.Time``
         Gastric Emptying Time is time from ingestion to gastric
         emptying (hours), numeric, range: 1.7-74.3

      ``SB.Time``
         Small Bowel Transit Time is time from gastric emptying to
         ileocecal junction (hours), numeric, range: 1.8-13.8

      ``C.Time``
         Colonic Transit Time is time from ileocecal junction to body
         exit (hours), numeric, range: 0.7-118.9

      ``WG.Time``
         Whole Gut Time is time from ingestion to body exit (hours),
         numeric, range: 6.0-816.0

      ``S.Contractions``
         Stomach contractions are counted if the peak amplitude of the
         contraction is over 10 mmHg and under 300 mmHg, numeric, range:
         47.0-1665.0

      ``S.Sum.of.Amplitudes``
         Stomach sum of amplitudes (mm Hg), numeric, range:
         655.6-33800.3

      ``S.Mean.Peak.Amplitude``
         Stomach mean peak amplitude is the sum of amplitudes divided by
         number of contractions (mm Hg), numeric, range: 4.6-43.4

      ``S.Mean.pH``
         Stomach mean pH is the average pH over the whole recording time
         in the stomach with normal ~ 1.5-3.5, numeric, range: 1.5-5.9

      ``SB.Contractions``
         Small Bowel contractions are counted if the peak amplitude of
         the contraction is over 10 mmHg and under 300 mmHg, numeric,
         range: 223.0-2375.0

      ``SB.Sum.of.Amplitudes``
         Small Bowel sum of amplitudes (mm Hg), numeric,
         range:3899.4-41122.5

      ``SB.Mean.Peak.Amplitude``
         Small Bowell mean peak amplitude is the sum of amplitudes
         divided by number of contractions (mm Hg), numeric, range:
         15.0-27.9

      ``SB.Mean.pH``
         Small Bowel mean pH is the average pH over the whole recording
         time in the small bowel, normal ~ 6-7.4, numeric, range:
         4.7-8.6

      ``Colon.Contractions``
         Colon contractions are counted if the peak amplitude of the
         contraction is over 10 mmHg and under 300 mmHg, numeric, range:
         41.0-2672.0

      ``Colon.Sum.of.Amplitudes``
         Colon sum of amplitudes (mm Hg), numeric, range:1872.6-117707.5

      ``C.Mean.Peak.Amplitude``
         Colon mean peak amplitude is the sum of amplitudes divided by
         number of contractions (mm Hg), numeric, range: 32.8- 64.2

      ``C.Mean.pH``
         Colon mean pH is the average pH over the whole recording time
         in the colon, normal ~ 5-7-6.7, numeric, range: 3.9-8.1

      .. rubric:: Details
         :name: details

      | The Smart Pill dataset was contributed by Dr. Amy Nowacki,
        Associate Professor, Cleveland Clinic. Please refer to this
        resource as: Amy S. Nowacki, 'Smart Pill Dataset', TSHS
        Resources Portal (2017). Available at
        https://www.causeweb.org/tshs/smart-pill/.
      | Delayed gastric emptying is a well-known problem in critically
        ill patients and is associated with feeding disturbances and
        inadequate nutrition. However, evaluating gastrointestinal
        function remains challenging in critically ill patients who are
        mechanically ventilated. Many tests that are practical and
        accurate under standardized, controlled conditions often fail in
        the critical care setting. For example, the consensus
        recommendations for gastric emptying scintigraphy are
        impractical in intubated patients because they recommend
        low-fat, egg white meal with imaging at 0, 1, 2, and 4 hours
        after meal ingestion. Another test, the lactulose hydrogen
        breath test, relies on prompt bacterial breakdown of lactulose
        in the colon; however, changes in bacterial flora - which are
        presumably common in critical care patients - can produce false
        transit times.
      | The 13C-octanoic acid breath test was reported as successful
        when used bedside to measure gastric emptying. However,
        manometry only assesses the upper gastrointestinal function,
        mainly esophagus, stomach, and proximal small bowel. Finally,
        video capsule technology has been used to determine small bowel
        transit time and pathomorphology in critically ill patients,
        although inadequate battery lifespan of the capsule
        (approximately 8-10 hours) could prevent complete examination in
        some cases.
      | An alternative technique, wireless capsule technology, may be
        useful for evaluating gastrointestinal motility in critical care
        patients. A newly developed motility capsule for assessing
        gastric emptying in patients with suspected gastroparesis has
        been available since 2006. It is a wireless capsule that
        transmits pH, pressure, and temperature.
      | This study describes the first use of a novel motility capsule
        to compare gastric emptying and small bowel transit times in
        critically ill trauma patients with intracranial hemorrhage with
        times recorded previously in healthy volunteers. Secondly, this
        study compares critically ill patients and volunteers on
        whole-gut transit time.

      .. rubric:: Source
         :name: source

      Rauch et al. 'Use of Wireless Utility Capsule to Determine Gastric
      Emptying and Small Intestinal Transit Times in Critically Ill
      Trauma Patients'. Journal of Critical Care 2012; 27(5):
      534.e7-534.e12.
