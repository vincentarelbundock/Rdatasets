.. container::

   .. container::

      ============= ===============
      H_USMortality R Documentation
      ============= ===============

      .. rubric:: Mortality Rates in US by Cause and Gender
         :name: mortality-rates-in-us-by-cause-and-gender

      .. rubric:: Description
         :name: description

      These datasets record mortality rates across all ages in the USA
      by cause of death, sex, and rural/urban status, 2011–2013. The two
      datasets represent the national aggregate rates and the
      region-wise rates for each administrative region under the
      Department of Health and Human Services (HHS).

      .. rubric:: Usage
         :name: usage

      ::

         USMortality
         USRegionalMortality

      .. rubric:: Format
         :name: format

      ``USRegionalMortality`` is a data frame with 400 observations on
      the following 6 variables.

      ``Region``
         A factor specifying HHS Region. See details.

      ``Status``
         A factor with levels ``Rural`` and ``Urban``

      ``Sex``
         A factor with levels ``Female`` and ``Male``

      ``Cause``
         Cause of death. A factor with levels ``Alzheimers``,
         ``Cancer``, ``Cerebrovascular diseases``, ``Diabetes``,
         ``Flu and pneumonia``, ``Heart disease``,
         ``Lower respiratory``, ``Nephritis``, ``Suicide``, and
         ``Unintentional injuries``

      ``Rate``
         Age-adjusted death rate per 100,000 population

      ``SE``
         Standard error for the rate

      ``USMortality`` is a data frame with 40 observations, containing
      the same variables with the exception of ``Region``.

      .. rubric:: Details
         :name: details

      The region-wise data give estimated rates separately for each of
      10 HHS regions. The location of the regional offices and their
      coverage area, available from
      https://www.hhs.gov/about/agencies/iea/regional-offices/index.html,
      is given below.

      HHS Region 01 - Boston:
         Connecticut, Maine, Massachusetts, New Hampshire, Rhode Island,
         and Vermont

      HHS Region 02 - New York:
         New Jersey, New York, Puerto Rico, and the Virgin Islands

      HHS Region 03 - Philadelphia:
         Delaware, District of Columbia, Maryland, Pennsylvania,
         Virginia, and West Virginia

      HHS Region 04 - Atlanta:
         Alabama, Florida, Georgia, Kentucky, Mississippi, North
         Carolina, South Carolina, and Tennessee

      HHS Region 05 - Chicago:
         Illinois, Indiana, Michigan, Minnesota, Ohio, and Wisconsin

      HHS Region 06 - Dallas:
         Arkansas, Louisiana, New Mexico, Oklahoma, and Texas

      HHS Region 07 - Kansas City:
         Iowa, Kansas, Missouri, and Nebraska

      HHS Region 08 - Denver:
         Colorado, Montana, North Dakota, South Dakota, Utah, and
         Wyoming

      HHS Region 09 - San Francisco:
         Arizona, California, Hawaii, Nevada, American Samoa,
         Commonwealth of the Northern Mariana Islands, Federated States
         of Micronesia, Guam, Marshall Islands, and Republic of Palau

      HHS Region 10 - Seattle:
         Alaska, Idaho, Oregon, and Washington

      .. rubric:: References
         :name: references

      Rural Health Reform Policy Research Center. \_Exploring Rural and
      Urban Mortality Differences_, August 2015 Bethesda, MD.
      https://ruralhealth.und.edu/projects/health-reform-policy-research-center/rural-urban-mortality

      .. rubric:: Examples
         :name: examples

      ::

         dotplot(reorder(Cause, Rate) ~ Rate | Status,
                 data = USMortality, groups = Sex, grid = FALSE,
                 par.settings = simpleTheme(pch = 16), auto.key = list(columns = 2),
                 scales = list(x = list(log = TRUE, equispaced.log = FALSE)))
         dotplot(reorder(Cause, Rate):Sex ~ Rate | Status,
                 data = USRegionalMortality, groups = Sex, auto.key = FALSE,
                 scales = list(x = list(log = TRUE, equispaced.log = FALSE)))
