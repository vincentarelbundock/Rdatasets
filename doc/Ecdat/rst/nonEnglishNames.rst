.. container::

   =============== ===============
   nonEnglishNames R Documentation
   =============== ===============

   .. rubric:: Names with Character Set Problems
      :name: nonEnglishNames

   .. rubric:: Description
      :name: description

   A ``data.frame`` describing names containing character codes rare or
   non-existent in standard English text, e.g., with various accent
   marks that may not be coded consistently in different locales or by
   different software.

   .. rubric:: Usage
      :name: usage

   ::

      data(nonEnglishNames)

   .. rubric:: Format
      :name: format

   A ``data.frame`` with two columns:

   nonEnglish
      a character vector containing names that often have non-standard
      characters with the non-standard characters replaced by "_"

   English
      a character vector containing a standard English-character
      translation of ``nonEnglish``

   .. rubric:: See Also
      :name: see-also

   ``grepNonStandardCharacters``, ``subNonStandardCharacters``

   .. rubric:: Examples
      :name: examples

   ::

      data(nonEnglishNames)


      all.equal(ncol(nonEnglishNames), 2)
