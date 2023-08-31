.. container::

   ======= ===============
   Pima.tr R Documentation
   ======= ===============

   .. rubric:: Diabetes in Pima Indian Women
      :name: Pima.tr

   .. rubric:: Description
      :name: description

   A population of women who were at least 21 years old, of Pima Indian
   heritage and living near Phoenix, Arizona, was tested for diabetes
   according to World Health Organization criteria. The data were
   collected by the US National Institute of Diabetes and Digestive and
   Kidney Diseases. We used the 532 complete records after dropping the
   (mainly missing) data on serum insulin.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      Pima.tr
      Pima.tr2
      Pima.te

   .. rubric:: Format
      :name: format

   These data frames contains the following columns:

   ``npreg``
      number of pregnancies.

   ``glu``
      plasma glucose concentration in an oral glucose tolerance test.

   ``bp``
      diastolic blood pressure (mm Hg).

   ``skin``
      triceps skin fold thickness (mm).

   ``bmi``
      body mass index (weight in kg/(height in m)\ ``^2``).

   ``ped``
      diabetes pedigree function.

   ``age``
      age in years.

   ``type``
      ``Yes`` or ``No``, for diabetic according to WHO criteria.

   .. rubric:: Details
      :name: details

   The training set ``Pima.tr`` contains a randomly selected set of 200
   subjects, and ``Pima.te`` contains the remaining 332 subjects.
   ``Pima.tr2`` contains ``Pima.tr`` plus 100 subjects with missing
   values in the explanatory variables.

   .. rubric:: Source
      :name: source

   Smith, J. W., Everhart, J. E., Dickson, W. C., Knowler, W. C. and
   Johannes, R. S. (1988) Using the ADAP learning algorithm to forecast
   the onset of *diabetes mellitus*. In *Proceedings of the Symposium on
   Computer Applications in Medical Care (Washington, 1988),* ed. R. A.
   Greenes, pp. 261–265. Los Alamitos, CA: IEEE Computer Society Press.

   Ripley, B.D. (1996) *Pattern Recognition and Neural Networks.*
   Cambridge: Cambridge University Press.
