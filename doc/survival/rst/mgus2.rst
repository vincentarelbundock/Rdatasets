.. container::

   ===== ===============
   mgus2 R Documentation
   ===== ===============

   .. rubric:: Monoclonal gammopathy data
      :name: monoclonal-gammopathy-data

   .. rubric:: Description
      :name: description

   Natural history of 1341 sequential patients with monoclonal
   gammopathy of undetermined significance (MGUS). This is a superset of
   the ``mgus`` data, at a later point in the accrual process

   .. rubric:: Usage
      :name: usage

   ::

      mgus2
      data(cancer, package="survival")

   .. rubric:: Format
      :name: format

   A data frame with 1384 observations on the following 10 variables.

   ``id``
      subject identifier

   ``age``
      age at diagnosis, in years

   ``sex``
      a factor with levels ``F`` ``M``

   ``dxyr``
      year of diagnosis

   ``hgb``
      hemoglobin

   ``creat``
      creatinine

   ``mspike``
      size of the monoclonal serum splike

   ``ptime``
      time until progression to a plasma cell malignancy (PCM) or last
      contact, in months

   ``pstat``
      occurrence of PCM: 0=no, 1=yes

   ``futime``
      time until death or last contact, in months

   ``death``
      occurrence of death: 0=no, 1=yes

   .. rubric:: Details
      :name: details

   This is an extension of the study found in the ``mgus`` data set,
   containing enrollment through 1994 and follow-up through 1999.

   .. rubric:: Source
      :name: source

   Mayo Clinic data courtesy of Dr. Robert Kyle. All patient identifiers
   have been removed, age rounded to the nearest year, and follow-up
   times rounded to the nearest month.

   .. rubric:: References
      :name: references

   R. Kyle, T. Therneau, V. Rajkumar, J. Offord, D. Larson, M. Plevak,
   and L. J. Melton III, A long-terms study of prognosis in monoclonal
   gammopathy of undertermined significance. New Engl J Med, 346:564-569
   (2002).
