.. container::

   .. container::

      ==================== ===============
      USstateAbbreviations R Documentation
      ==================== ===============

      .. rubric:: Standard abbreviations for states of the United States
         :name: standard-abbreviations-for-states-of-the-united-states

      .. rubric:: Description
         :name: description

      The object returned by ``Ecfun::readUSstateAbbreviations()`` on
      May 20, 2013.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(USstateAbbreviations)

      .. rubric:: Format
         :name: format

      A ``data.frame`` containing 10 different character vectors of
      names or codes for 76 different political entities including the
      United States, the 50 states within the US, plus the District of
      Columbia, US territories and other political designation, some of
      which are obsolete but are included for historical reference.

      Name
         The standard name of the entity.

      Status
         description of status, e.g., state / commonwealth vs. island,
         territory, military mail code, etc.

      ISO, ANSI.letters, ANSI.digits, USPS, USCG, Old.GPO, AP, Other
         Alternative abbreviations used per different standards. The
         most commonly used among these may be the 2-letter codes
         officially used by the US Postal Service (``USPS``).

      .. rubric:: Details
         :name: details

      This was read from `the Wikipedia article on "List of U.S. state
      abbreviations" <https://en.wikipedia.org/wiki/List_of_U.S._state_abbreviations>`__

      .. rubric:: Source
         :name: source

      `the Wikipedia article on "List of U.S. state
      abbreviations" <https://en.wikipedia.org/wiki/List_of_U.S._state_abbreviations>`__

      .. rubric:: See Also
         :name: see-also

      ``readUSstateAbbreviations`` ``showNonASCII``
      ``grepNonStandardCharacters`` ``subNonStandardCharacters``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ##
         ## to use
         ##
         data(USstateAbbreviations)

         ##
         ## to update
         ##
         ## Not run: 
         USstateAbb2 <- readUSstateAbbreviations()

         ## End(Not run)
