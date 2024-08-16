.. container::

   .. container::

      ====== ===============
      school R Documentation
      ====== ===============

      .. rubric:: College Scorecard: School Data
         :name: college-scorecard-school-data

      .. rubric:: Description
         :name: description

      Information about institutions in the U.S. College Scorecard
      dataset. The uses the most recent report for each institution. The
      ``school`` dataset can be used to filter the ``scorecard``
      dataset. Join the two datasets using the ``id`` column.

      The data set contain only colleges that participate in Title IV
      federal financial aid programs. In the tidy data set, column names
      have been changed for readability and consistency.

      You can find the original data set at the U.S. Department of
      Education's `College Scorecard
      website <https://collegescorecard.ed.gov/data/>`__. The code for
      the data transformation process is available at
      https://github.com/gadenbuie/scorecard-db.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         school

      .. rubric:: Format
         :name: format

      A data frame with 11,300 rows and 25 variables. Original column
      names from the source dataset are noted in parenthesis.

      ``id``
         ``⁠[integer]⁠`` A unique identifier for each institution.
         (``UNITID``)

      ``name``
         ``⁠[character]⁠`` Institution name. (``INSTNM``)

      ``city``
         ``⁠[character]⁠`` City. (``CITY``)

      ``state``
         ``⁠[character]⁠`` State postcode. (``STABBR``)

      ``zip``
         ``⁠[character]⁠`` ZIP code. (``ZIP``)

      ``latitude``
         ``⁠[numeric]⁠`` Latitude. (``LATITUDE``)

      ``longitude``
         ``⁠[numeric]⁠`` Longitude. (``LONGITUDE``)

      ``url``
         ``⁠[character]⁠`` URL for institution's homepage. (``INSTURL``)

      ``deg_predominant``
         ``⁠[factor]⁠`` Predominant undergraduate degree awarded.
         (``PREDDEG``)

      ``deg_highest``
         ``⁠[factor]⁠`` Highest degree awarded. (``HIGHDEG``)

      ``control``
         ``⁠[factor]⁠`` Control of institution (IPEDS). (``CONTROL``)

      ``locale_type``
         ``⁠[factor]⁠`` Locale of institution. (``LOCALE``)

      ``locale_size``
         ``⁠[factor]⁠`` Locale of institution. (``LOCALE``)

      ``adm_req_test``
         ``⁠[factor]⁠`` Test score requirements for admission.
         (``ADMCON7``)

      ``is_hbcu``
         ``⁠[logical]⁠`` Flag for Historically Black College and
         University. (``HBCU``)

      ``is_pbi``
         ``⁠[logical]⁠`` Flag for predominantly black institution.
         (``PBI``)

      ``is_annhi``
         ``⁠[logical]⁠`` Flag for Alaska Native Native Hawaiian serving
         institution. (``ANNHI``)

      ``is_tribal``
         ``⁠[logical]⁠`` Flag for tribal college and university.
         (``TRIBAL``)

      ``is_aanapii``
         ``⁠[logical]⁠`` Flag for Asian American Native American Pacific
         Islander-serving institution. (``AANAPII``)

      ``is_hsi``
         ``⁠[logical]⁠`` Flag for Hispanic-serving institution. (``HSI``)

      ``is_nanti``
         ``⁠[logical]⁠`` Flag for Native American non-tribal institution.
         (``NANTI``)

      ``is_only_men``
         ``⁠[logical]⁠`` Flag for men-only college. (``MENONLY``)

      ``is_only_women``
         ``⁠[logical]⁠`` Flag for women-only college. (``WOMENONLY``)

      ``is_only_distance``
         ``⁠[logical]⁠`` Flag for distance-education-only education.
         (``DISTANCEONLY``)

      ``religious_affiliation``
         ``⁠[factor]⁠`` Religious affiliation of the institution.
         (``RELAFFIL``)

      .. rubric:: References
         :name: references

      https://collegescorecard.ed.gov/data/
