.. container::

   .. container::

      ===== ===============
      nafld R Documentation
      ===== ===============

      .. rubric:: Non-alcohol fatty liver disease
         :name: non-alcohol-fatty-liver-disease

      .. rubric:: Description
         :name: description

      Data sets containing the data from a population study of
      non-alcoholic fatty liver disease (NAFLD). Subjects with the
      condition and a set of matched control subjects were followed
      forward for metabolic conditions, cardiac endpoints, and death.

      .. rubric:: Usage
         :name: usage

      ::

         nafld1
                nafld2
                nafld3
         data(nafld, package="survival")

      .. rubric:: Format
         :name: format

      ``nafld1`` is a data frame with 17549 observations on the
      following 10 variables.

      ``id``
         subject identifier

      ``age``
         age at entry to the study

      ``male``
         0=female, 1=male

      ``weight``
         weight in kg

      ``height``
         height in cm

      ``bmi``
         body mass index

      ``case.id``
         the id of the NAFLD case to whom this subject is matched

      ``futime``
         time to death or last follow-up

      ``status``
         0= alive at last follow-up, 1=dead

      ``nafld2`` is a data frame with 400123 observations and 4
      variables containing laboratory data

      ``id``
         subject identifier

      ``days``
         days since index date

      ``test``
         the type of value recorded

      ``value``
         the numeric value

      ``nafld3`` is a data frame with 34340 observations and 3 variables
      containing outcomes

      ``id``
         subject identifier

      ``days``
         days since index date

      ``event``
         the endpoint that occurred

      .. rubric:: Details
         :name: details

      The primary reference for the NAFLD study is Allen (2018). The
      incidence of non-alcoholic fatty liver disease (NAFLD) has been
      rising rapidly in the last decade and it is now one of the main
      drivers of hepatology practice Tapper2018. It is essentially the
      presence of excess fat in the liver, and parallels the ongoing
      obesity epidemic. Approximately 20-25% of NAFLD patients will
      develop the inflammatory state of non-alcoholic steatohepatitis
      (NASH), leading to fibrosis and eventual end-stage liver disease.
      NAFLD can be accurately diagnosed by MRI methods, but NASH
      diagnosis currently requires a biopsy.

      The current study constructed a population cohort of all adult
      NAFLD subjects from 1997 to 2014 along with 4 potential controls
      for each case. To protect patient confidentiality all time
      intervals are in days since the index date; none of the dates from
      the original data were retained. Subject age is their integer age
      at the index date, and the subject identifier is an arbitrary
      integer. As a final protection, we include only a 90% random
      sample of the data. As a consequence analyses results will not
      exactly match the original paper.

      There are 3 data sets: ``nafld1`` contains baseline data and has
      one observation per subject, ``nafld2`` has one observation for
      each (time dependent) continuous measurement, and ``nafld3`` has
      one observation for each yes/no outcome that occured.

      .. rubric:: Source
         :name: source

      Data obtained from the author.

      .. rubric:: References
         :name: references

      AM Allen, TM Therneau, JJ Larson, A Coward, VK Somers and PS
      Kamath, Nonalcoholic Fatty Liver Disease Incidence and Impact on
      Metabolic Burden and Death: A 20 Year Community Study, Hepatology
      67:1726-1736, 2018.
