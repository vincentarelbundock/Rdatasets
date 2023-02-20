.. container::

   ============ ===============
   laryngoscope R Documentation
   ============ ===============

   .. rubric:: Randomized, Comparison Trial of Video vs. Standard
      Laryngoscope
      :name: randomized-comparison-trial-of-video-vs.-standard-laryngoscope

   .. rubric:: Description
      :name: description

   | This data set contains 99 adult patients with a body mass index
     between 30 and 50 kg/m2 who required orotracheal intubation for
     elective surgery. Patient demographics, airway assessment data,
     intubation success rate, time to intubation, ease of intubation,
     and occurrence of complications were recorded. The dataset is
     cleaned and complete. There are no outliers or data problems
     (**more details** available below the variable definitions).

   .. rubric:: Usage
      :name: usage

   ::

      laryngoscope

   .. rubric:: Format
      :name: format

   A data frame with 99 observations and 22 variables

   ``age``
      Age (years), numeric, range: 20-77

   ``gender``
      Gender, numeric, 0 = female; 1 = male

   ``asa``
      American Society of Anesthesiologists physical status(1-4), range:
      2-4

   ``BMI``
      Body Mass Index (kg/m^2), numeric, range: 31-61

   ``Mallampati``
      Mallampati score predicting ease of intubation 1 = Full visibility
      of tonsils, uvula and soft palate (easy intubation); 2 =
      Visibility of hard and soft palate, upper portion of tonsils and
      uvula; 3 = Soft and hard palate and base of the uvula are visible;
      4 = Only Hard Palate visible (difficult intubation), numeric,
      range: 1-4

   ``Randomization``
      Laryngoscope randomized, numeric, range: 0 = Standard Macintosh
      #4, 1 = AWS Pentaz Video

   ``attempt1_time``
      First intubation attempt time (seconds), numeric, range: 9-113

   ``attempt1_S_F``
      Successful intubation first attempt, numeric, 0 = no, 1 = yes

   ``attempt2_time``
      Second intubation attempt time (seconds), numeric, range: 11- 60

   ``attempt2_assigned_method``
      Second intubation attempt made with assigned laryngoscope,
      numeric, 0 = no, 1 = yes

   ``attempt2_S_F``
      Successful intubation second attempt, numeric, 0 = no, 1 = yes,
      numeric, range: 0 = no, 1 = yes

   ``attempt3_time``
      Third intubation attempt time (seconds), numeric, range: 15- 30

   ``attempt3_assigned_method``
      Third intubation attempt made with assigned laryngoscope, numeric,
      0 = no, 1 = yes

   ``attempt3_S_F``
      Successful intubation third attempt, numeric, 0 = no, 1 = yes,
      numeric, range: 1-1

   ``attempts``
      Number of intubation attempts, numeric, range: 1-3

   ``failures``
      Number of intubation failures, numeric, range: 0-2

   ``total_intubation_time``
      Total Intubation time (second), numeric, range: 9-100

   ``intubation_overall_S_F``
      Overall successful intubation, numeric, 0 = no, 1 = yes

   ``bleeding``
      Bleeding (trace), numeric, 0 = no, 1 = yes

   ``ease``
      Ease of tracheal intubation, 0 = extremely easy to 100 = extremely
      difficult, numeric, range: 0-100

   ``sore_throat``
      Severity of postoperative sore throat, 0 = none; 1 = mild; 2 =
      moderate; 3 = severe, numeric, range: 0- 3

   ``view``
      Cormack-Lehane grade of glottic view 0 = "not good" Cormack-
      Lehane grade 1 or 2; 1 = "good" Cormack-Lehane grade 3 or 4,
      numeric, range: 0- 1

   .. rubric:: Details
      :name: details

   | The Laryngoscope dataset was contributed by Dr. Amy Nowacki,
     Associate Professor, Cleveland Clinic. Please refer to this
     resource as: Amy S. Nowacki, 'Laryngoscope Dataset', TSHS Resources
     Portal (2017). Available at
     https://www.causeweb.org/tshs/laryngoscope/.
   | Difficult and failed tracheal intubations are among the principal
     causes of anesthetic-related mortality and morbidity. Because a
     good laryngeal view facilitates successful tracheal intubation, new
     technologies have been introduced to improve visualization. Video
     laryngoscopes, for example, often use miniature cameras to
     facilitate visualization of the laryngeal inlet with no need to
     align the oral, pharyngeal, and tracheal axes.
   | The Pentax AWS is a novel video laryngoscope, available in Japan
     since 2006, which is designed to facilitate intubation by providing
     a video image of the glottis. It incorporates a miniature video
     camera and a battery-powered, built-in LCD monitor. A disposable
     blade is attached to the base system. Incorporation of an LCD
     display makes it possible to view the glottis simultaneously with
     insertion of the endotracheal tube (ETT). In this regard, it
     differs from some other video laryngoscope designs that use
     external monitors. The Pentax AWS also differs in having a side
     channel that positions and guides the ETT. Reports suggest that the
     Pentax AWS can help intubate, but randomized data remain sparse.cr
     This study tested the hypothesis that intubation with the Pentax
     AWS would be easier and faster than with a standard Macintosh
     laryngoscope with a #4 blade.

   .. rubric:: Source
      :name: source

   These are data from a study by Abdallah et al. A Randomized
   Comparison between the Pentax AWS Video Laryngoscope and the
   Macintosh Laryngoscope in Morbidly Obese Patients. Anesthesia
   Analgesia 2011; 113: 1082-7.
