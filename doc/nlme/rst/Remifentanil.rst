.. container::

   ============ ===============
   Remifentanil R Documentation
   ============ ===============

   .. rubric:: Pharmacokinetics of Remifentanil
      :name: Remifentanil

   .. rubric:: Description
      :name: description

   Intravenous infusion of remifentanil (a strong analgesic) in
   different rates over varying time periods was applied to a total of
   65 patients. Concentration measurements of remifentanil were taken
   along with several covariates resulting in the ``Remifentanil`` data
   frame with 2107 rows and 12 columns.

   .. rubric:: Usage
      :name: usage

   ::

      data("Remifentanil", package = "nlme")

   .. rubric:: Format
      :name: format

   This data frame (of class ``"groupedData"``, specifically
   ``"nfnGroupedData"``) contains the following columns:

   ``ID``:
      numerical (patient) IDs.

   ``Subject``:
      an ``ordered`` factor with 65 levels (of the ``ID``\ s): ``30`` <
      ``21`` < ``25`` < ``23`` < ``29`` < ... ... < ``36`` < ``6`` <
      ``5`` < ``10`` < ``9``.

   ``Time``:
      time from beginning of infusion in minutes (``numeric``).

   ``conc``:
      remifentanil concentration in [ng / ml] (numeric).

   ``Rate``:
      infusion rate in [µg / min].

   ``Amt``:
      amount of remifentanil given in the current time interval in [µg].

   ``Age``:
      age of the patient in years.

   ``Sex``:
      gender of the patient, a ``factor`` with levels ``Female`` and
      ``Male``.

   ``Ht``:
      height of the patient in cm.

   ``Wt``:
      weight of the patient in kg.

   ``BSA``:
      body surface area (DuBois and DuBois 1916):
      ``%     BSA := Wt^{0.425} \cdot Ht^{0.725} \cdot 0.007184``.

   ``LBM``:
      lean body mass (James 1976), with slightly different formula for
      men ``LBM_m := 1.1  Wt - 128 (Wt/Ht)^2``, and women
      ``LBM_f := 1.07 Wt - 148 (Wt/Ht)^2``.

   .. rubric:: Author(s)
      :name: authors

   of this help page: Niels Hagenbuch and Martin Maechler, SfS ETH
   Zurich.

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000). *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York.

   .. rubric:: References
      :name: references

   Minto CF, Schnider TW, Egan TD, Youngs E, Lemmens HJM, Gambus PL,
   Billard V, Hoke JF, Moore KHP, Hermann DJ, Muir KT, Mandema JW,
   Shafer SL (1997). Influence of age and gender on the pharmacokinetics
   and pharmacodynamics of remifentanil: I. Model development.
   *Anesthesiology* **86** 1, 10–23.
   https://pubs.asahq.org/anesthesiology/article/86/1/10/35947/Influence-of-Age-and-Gender-on-the

   Charles F. Minto, Thomas W. Schnider and Steven L. Shafer (1997).
   Pharmacokinetics and Pharmacodynamics of Remifentanil: II. Model
   Application. *Anesthesiology* **86** 1, 24–33.
   https://pubs.asahq.org/anesthesiology/article/86/1/24/35925/Pharmacokinetics-and-Pharmacodynamics-of

   .. rubric:: Examples
      :name: examples

   ::

      plot(Remifentanil, type = "l", lwd = 2) # shows the 65 patients' remi profiles

      ## The same on  log-log  scale  (*more* sensible for modeling ?):
      plot(Remifentanil, type = "l", lwd = 2, scales = list(log=TRUE))

      str(Remifentanil)
      summary(Remifentanil)

      plot(xtabs(~Subject, Remifentanil))
      summary(unclass(table(Remifentanil$Subject)))
      ## between 20 and 54 measurements per patient (median: 24; mean: 32.42)

      ## Only first measurement of each patient :
      dim(Remi.1 <- Remifentanil[!duplicated(Remifentanil[,"ID"]),]) #  65 x 12

      LBMfn <- function(Wt, Ht, Sex) ifelse(Sex == "Female",
                                              1.07 * Wt - 148*(Wt/Ht)^2,
                                              1.1  * Wt - 128*(Wt/Ht)^2)
      with(Remi.1,
          stopifnot(all.equal(BSA, Wt^{0.425} * Ht^{0.725} * 0.007184, tol = 1.5e-5),
                    all.equal(LBM, LBMfn(Wt, Ht, Sex),                 tol = 7e-7)
      ))

      ## Rate: typically  3 µg / kg body weight, but :
      sunflowerplot(Rate ~ Wt, Remifentanil)
      abline(0,3, lty=2, col=adjustcolor("black", 0.5))
