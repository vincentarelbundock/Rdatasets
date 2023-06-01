.. container::

   ========= ===============
   Quinidine R Documentation
   ========= ===============

   .. rubric:: Quinidine Kinetics
      :name: Quinidine

   .. rubric:: Description
      :name: description

   The ``Quinidine`` data frame has 1471 rows and 14 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Subject
      a factor identifying the patient on whom the data were collected.

   time
      a numeric vector giving the time (hr) at which the drug was
      administered or the blood sample drawn. This is measured from the
      time the patient entered the study.

   conc
      a numeric vector giving the serum quinidine concentration (mg/L).

   dose
      a numeric vector giving the dose of drug administered (mg).
      Although there were two different forms of quinidine administered,
      the doses were adjusted for differences in salt content by
      conversion to milligrams of quinidine base.

   interval
      a numeric vector giving the when the drug has been given at
      regular intervals for a sufficiently long period of time to assume
      steady state behavior, the interval is recorded.

   Age
      a numeric vector giving the age of the subject on entry to the
      study (yr).

   Height
      a numeric vector giving the height of the subject on entry to the
      study (in.).

   Weight
      a numeric vector giving the body weight of the subject (kg).

   Race
      a factor with levels ``Caucasian``, ``Latin``, and ``Black``
      identifying the race of the subject.

   Smoke
      a factor with levels ``no`` and ``yes`` giving smoking status at
      the time of the measurement.

   Ethanol
      a factor with levels ``none``, ``current``, ``former`` giving
      ethanol (alcohol) abuse status at the time of the measurement.

   Heart
      a factor with levels ``No/Mild``, ``Moderate``, and ``Severe``
      indicating congestive heart failure for the subject.

   Creatinine
      an ordered factor with levels ``< 50`` < ``>= 50`` indicating the
      creatinine clearance (mg/min).

   glyco
      a numeric vector giving the alpha-1 acid glycoprotein
      concentration (mg/dL). Often measured at the same time as the
      quinidine concentration.

   .. rubric:: Details
      :name: details

   Verme et al. (1992) analyze routine clinical data on patients
   receiving the drug quinidine as a treatment for cardiac arrhythmia
   (atrial fibrillation or ventricular arrhythmias). All patients were
   receiving oral quinidine doses. At irregular intervals blood samples
   were drawn and serum concentrations of quinidine were determined.
   These data are analyzed in several publications, including Davidian
   and Giltinan (1995, section 9.3).

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York. (Appendix A.25)

   Davidian, M. and Giltinan, D. M. (1995), *Nonlinear Models for
   Repeated Measurement Data*, Chapman and Hall, London.

   Verme, C. N., Ludden, T. M., Clementi, W. A. and Harris, S. C.
   (1992), Pharmacokinetics of quinidine in male patients: A population
   analysis, *Clinical Pharmacokinetics*, **22**, 468-480.
