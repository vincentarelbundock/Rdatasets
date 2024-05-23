.. container::

   .. container::

      ======= ===============
      myeloid R Documentation
      ======= ===============

      .. rubric:: Acute myeloid leukemia
         :name: acute-myeloid-leukemia

      .. rubric:: Description
         :name: description

      This simulated data set is based on a trial in acute myeloid
      leukemia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         myeloid
         data(cancer, package="survival")

      .. rubric:: Format
         :name: format

      A data frame with 646 observations on the following 9 variables.

      ``id``
         subject identifier, 1-646

      ``trt``
         treatment arm A or B

      ``sex``
         f=female, m=male

      ``flt3``
         mutations of the FLT3 gene, a factor with levels of A, B, C

      ``futime``
         time to death or last follow-up

      ``death``
         1 if ``futime`` is a death, 0 for censoring

      ``txtime``
         time to hematropetic stem cell transplant

      ``crtime``
         time to complete response

      ``rltime``
         time to relapse of disease

      .. rubric:: Details
         :name: details

      This data set is used to illustrate multi-state survival curves.
      It is based on the actual study in the reference below. A subset
      of subjects was de-identifed, reordered, and then all of the time
      values randomly perturbed.

      Mutations in the FLT3 domain occur in about 1/3 of AML patients,
      the additional agent in treatment arm B was presumed to target
      this anomaly. All subjects had a FLT mutation, either internal
      tandem duplications (ITD) (divided into low vs high) +- mutations
      in the TKD domain, or TKD mutations only. This was a
      stratification factor for treatment assignment in the study. The
      levels of A, B, C correspond to increasing severity of the
      mutation burden.

      .. rubric:: References
         :name: references

      Le-Rademacher JG, Peterson RA, Therneau TM, Sanford BL, Stone RM,
      Mandrekar SJ. Application of multi-state models in cancer clinical
      trials. Clin Trials. 2018 Oct; 15 (5):489-498

      .. rubric:: Examples
         :name: examples

      .. code:: R

         coxph(Surv(futime, death) ~ trt + flt3, data=myeloid)
         # See the mstate vignette for a more complete analysis
