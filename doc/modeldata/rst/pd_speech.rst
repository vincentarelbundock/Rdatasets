.. container::

   .. container::

      ========= ===============
      pd_speech R Documentation
      ========= ===============

      .. rubric:: Parkinson's disease speech classification data set
         :name: parkinsons-disease-speech-classification-data-set

      .. rubric:: Description
         :name: description

      Parkinson's disease speech classification data set

      .. rubric:: Details
         :name: details

      From the UCI ML archive, the description is "The data used in this
      study were gathered from 188 patients with PD (107 men and 81
      women) with ages ranging from 33 to 87 (65.1 p/m 10.9) at the
      Department of Neurology in Cerrahpaşa Faculty of Medicine,
      Istanbul University. The control group consists of 64 healthy
      individuals (23 men and 41 women) with ages varying between 41 and
      82 (61.1 p/m 8.9). During the data collection process, the
      microphone is set to 44.1 KHz and following the physician's
      examination, the sustained phonation of the vowel ``⁠/a/⁠`` was
      collected from each subject with three repetitions."

      The data here are averaged over the replicates.

      .. rubric:: Value
         :name: value

      ============= ============
      ``pd_speech`` a data frame
      ============= ============

      .. rubric:: Source
         :name: source

      UCI ML repository (data)
      https://archive.ics.uci.edu/ml/datasets/Parkinson%27s+Disease+Classification#,

      Sakar et al (2019), "A comparative analysis of speech signal
      processing algorithms for Parkinson’s disease classification and
      the use of the tunable Q-factor wavelet transform", *Applied Soft
      Computing*, V74, pg 255-263.

      .. rubric:: Examples
         :name: examples

      ::

         data(pd_speech)
         str(pd_speech)
