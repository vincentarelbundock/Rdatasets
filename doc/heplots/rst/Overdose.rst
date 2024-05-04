.. container::

   .. container::

      ======== ===============
      Overdose R Documentation
      ======== ===============

      .. rubric:: Overdose of Amitriptyline
         :name: overdose-of-amitriptyline

      .. rubric:: Description
         :name: description

      Data on overdoses of the drug amitriptyline. Amitriptyline is a
      drug prescribed by physicians as an antidepressant. However, there
      are also conjectured side effects that seem to be related to the
      use of the drug: irregular heart beat, abnormal blood pressure and
      irregular waves on the electrocardiogram (ECG). This dataset
      (originally from Rudorfer, 1982) gives data on 17 patients
      admitted to hospital after an overdose of amitriptyline. The two
      response variables are: ``TCAD`` and ``AMI``. The other variables
      are predictors.

      .. rubric:: Usage
         :name: usage

      ::

         data("Overdose")

      .. rubric:: Format
         :name: format

      A data frame with 17 observations on the following 7 variables.

      ``TCAD``
         total TCAD plasma level, a numeric vector

      ``AMI``
         amount of amitriptyline present in the TCAD plasma level, a
         numeric vector

      ``Gender``
         a factor with levels ``Male`` ``Female``

      ``amount``
         amount of drug taken at time of overdose, a numeric vector

      ``BP``
         diastolic blood pressure, a numeric vector

      ``ECG_PR``
         ECG PR wave measurement, a numeric vector

      ``ECG_QRS``
         ECG QRS wave measurement, a numeric vector

      .. rubric:: Source
         :name: source

      Johnson & Wichern (2005), *Applied Multivariate Statistical
      Analysis*, Exercise 7.25, p. 426.

      .. rubric:: References
         :name: references

      Rudorfer, M. V. Cardiovascular changes and plasma drug levels
      after amitriptyline overdose. (1982). *J. Toxicology - Clinical
      Toxicology*. **19**\ (1),67-78.
      `doi:10.3109/15563658208990367 <https://doi.org/10.3109/15563658208990367>`__,
      PMID: 7154142.

      Clay Ford, "Getting started with Multivariate Multiple
      Regression",
      https://library.virginia.edu/data/articles/getting-started-with-multivariate-multiple-regression.

      ECG measurements:

      PR
         https://en.wikipedia.org/wiki/PR_interval

      QRS
         https://en.wikipedia.org/wiki/QRS_complex

      .. rubric:: Examples
         :name: examples

      ::

         data(Overdose)
         str(Overdose)
         pairs(Overdose) 

         over.mlm <- lm(cbind(TCAD, AMI) ~ Gender + amount + BP + ECG_PR + ECG_QRS, data = Overdose)
         coef(over.mlm)

         # check for outliers
         cqplot(over.mlm)

         # HE plot shows that relations of responses to predictors are essentially one-dimensional
         heplot(over.mlm)

         # canonical correlation analysis 
         if(require(candisc)) {
         cancor(cbind(TCAD, AMI) ~ as.numeric(Gender) + amount + BP + ECG_PR + ECG_QRS, data = Overdose)
         }
