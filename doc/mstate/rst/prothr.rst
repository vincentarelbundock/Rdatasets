.. container::

   ==================== ===============
   Liver cirrhosis data R Documentation
   ==================== ===============

   .. rubric:: Abnormal prothrombin levels in liver cirrhosis
      :name: Liver+20cirrhosis+20data

   .. rubric:: Description
      :name: description

   A data frame of 488 liver cirrhosis patients from a randomized
   clinical trial concerning prednisone treatment in these patients. The
   dataset is in long format. The included variables are

   id
      Patient identification number

   from
      Starting state

   to
      Receiving state

   trans
      Transition number

   Tstart
      Starting time

   Tstop
      Transition time

   status
      Status variable; 1=transition, 0=censored

   treat
      Treatment; factor with levels "Placebo", "Prednisone"

   .. rubric:: Format
      :name: format

   A data frame, see ``data.frame``.

   .. rubric:: Details
      :name: details

   This data was kindly provided by Per Kragh Andersen. It was
   introduced in Andersen, Borgan, Gill & Keiding (1993), Example
   1.3.12, and used as illustration for computation of transition
   probabilities in multi-state models, see Sections IV.4 (Example
   IV.4.4) and VII.2 (Example VII.2.10).

   .. rubric:: References
      :name: references

   Andersen PK, Borgan O, Gill RD, Keiding N (1993). *Statistical Models
   Based on Counting Processes*. Springer, New York.
