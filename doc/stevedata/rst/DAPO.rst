.. container::

   .. container::

      ==== ===============
      DAPO R Documentation
      ==== ===============

      .. rubric:: Determinants of Arab Public Opinion
         :name: determinants-of-arab-public-opinion

      .. rubric:: Description
         :name: description

      A reduced form of data set for reproducing an analysis on the
      determinants of Arab public opinion in seven countries toward 13
      different countries.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         DAPO

      .. rubric:: Format
         :name: format

      A data frame with 91 observations on the following variables.

      ``subjname``
         a three-character ISO code for the Arab (subject) country

      ``objname``
         an ALL-CAPS English name for the target/object country

      ``affect``
         an affect rating by the subject country to the object country

      ``capsub``
         the composite index of national capabilities (capability ratio)
         of the subject country

      ``capobj``
         the composite index of national capabilities (capability ratio)
         of the object country

      ``securtie``
         a dummy variable indicating at least an informal security tie
         between the subject and object

      ``export``
         the volume of exports from the subject to the object

      ``import``
         the volume of imports to the subject from the object

      ``subgdp``
         the gross domestic product (GDP) of the subject

      ``islam``
         a dummy variable that equals 1 if the object is a predominantly
         Muslim country

      ``west``
         a dummy variable that equals 1 if the object ia a Western
         country

      .. rubric:: Details
         :name: details

      Exact coding issues/peculiarities are best addressed by reading
      the reference article. To maximally reproduce the article's
      analyses, the user will need to create some variables. The
      information is here, but you'll need to create a variable for
      dyadic trade (and as a percentage of the subject's GDP),
      GDP-adjusted imports, a means to filter out Israel from the
      analysis, and some of the information reported in Table 1.
      However, I think this is a learning experience for students.

      .. rubric:: References
         :name: references

      Furia, Peter A. and Russell E. Lucas. 2006. "Determinants of Arab
      Public Opinion" *International Studies Quarterly* 50: 585-605.
