.. container::

   ============= ===============
   schizophrenia R Documentation
   ============= ===============

   .. rubric:: Age of Onset of Schizophrenia Data
      :name: age-of-onset-of-schizophrenia-data

   .. rubric:: Description
      :name: description

   Data on sex differences in the age of onset of schizophrenia.

   .. rubric:: Usage
      :name: usage

   ::

      data("schizophrenia")

   .. rubric:: Format
      :name: format

   A data frame with 251 observations on the following 2 variables.

   ``age``
      age at the time of diagnosis.

   ``gender``
      a factor with levels ``female`` and ``male``

   .. rubric:: Details
      :name: details

   A sex difference in the age of onset of schizophrenia was noted by
   Kraepelin (1919). Subsequently epidemiological studies of the
   disorder have consistently shown an earlier onset in men than in
   women. One model that has been suggested to explain this observed
   difference is know as the subtype model which postulates two type of
   schizophrenia, one characterised by early onset, typical symptoms and
   poor premorbid competence, and the other by late onset, atypical
   symptoms, and good premorbid competence. The early onset type is
   assumed to be largely a disorder of men and the late onset largely a
   disorder of women.

   .. rubric:: Source
      :name: source

   E. Kraepelin (1919), *Dementia Praecox and Paraphrenia*. Livingstone,
   Edinburgh.

   .. rubric:: Examples
      :name: examples

   ::


        data("schizophrenia", package = "HSAUR")
        boxplot(age ~ gender, data = schizophrenia)
