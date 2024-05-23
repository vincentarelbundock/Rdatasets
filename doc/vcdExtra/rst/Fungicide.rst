.. container::

   .. container::

      ========= ===============
      Fungicide R Documentation
      ========= ===============

      .. rubric:: Carcinogenic Effects of a Fungicide
         :name: carcinogenic-effects-of-a-fungicide

      .. rubric:: Description
         :name: description

      Data from Gart (1971) on the carcinogenic effects of a certain
      fungicide in two strains of mice. Of interest is how the
      association between ``group`` (Control, Treated) and ``outcome``
      (Tumor, No Tumor) varies with ``sex`` and ``strain`` of the mice.

      Breslow (1976) used this data to illustrate the application of
      linear models to log odds ratios.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Fungicide)

      .. rubric:: Format
         :name: format

      The data comprise a set of four 2 x 2 tables classifying 403 mice,
      either Control or Treated and whether or not a tumor was later
      observed. The four groups represent the combinations of sex and
      strain of mice. The format is: num [1:2, 1:2, 1:2, 1:2] 5 4 74 12
      3 2 84 14 10 4 ... - attr(\*, "dimnames")=List of 4 ..$ group :
      chr [1:2] "Control" "Treated" ..$ outcome: chr [1:2] "Tumor"
      "NoTumor" ..$ sex : chr [1:2] "M" "F" ..$ strain : chr [1:2] "1"
      "2"

      .. rubric:: Details
         :name: details

      All tables have some small cells, so a continuity correction is
      recommended.

      .. rubric:: Source
         :name: source

      Gart, J. J. (1971). The comparison of proportions: a review of
      significance tests, confidence intervals and adjustments for
      stratification. *International Statistical Review*, 39, 148-169.

      .. rubric:: References
         :name: references

      Breslow, N. (1976), Regression analysis of the log odds ratio: A
      method for retrospective studies, *Biometrics*, 32(3), 409-416.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Fungicide)
         # loddsratio was moved to vcd; requires vcd_1.3-3+
         ## Not run: 
         fung.lor <- loddsratio(Fungicide, correct=TRUE)
         fung.lor
         confint(fung.lor)

         ## End(Not run)

         # visualize odds ratios in fourfold plots
         cotabplot(Fungicide, panel=cotab_fourfold)
         #  -- fourfold() requires vcd >= 1.2-10
         fourfold(Fungicide, p_adjust_method="none")
