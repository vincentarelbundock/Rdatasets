.. container::

   .. container::

      ========= ===============
      stanford2 R Documentation
      ========= ===============

      .. rubric:: More Stanford Heart Transplant data
         :name: more-stanford-heart-transplant-data

      .. rubric:: Description
         :name: description

      This contains the Stanford Heart Transplant data in a different
      format. The main data set is in ``heart``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         stanford2

      .. rubric:: Format
         :name: format

      ======= ==========================
      id:     ID number
      time:   survival or censoring time
      status: censoring status
      age:    in years
      t5:     T5 mismatch score
      \       
      ======= ==========================

      .. rubric:: Source
         :name: source

      LA Escobar and WQ Meeker Jr (1992), Assessing influence in
      regression analysis with censored data. *Biometrics* **48**,
      507–528. Page 519.

      .. rubric:: See Also
         :name: see-also

      ``predict.survreg``, ``heart``
