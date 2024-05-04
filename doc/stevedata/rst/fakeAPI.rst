.. container::

   .. container::

      ======= ===============
      fakeAPI R Documentation
      ======= ===============

      .. rubric:: Hypothetical (Fake) Data on Academic Performance
         :name: hypothetical-fake-data-on-academic-performance

      .. rubric:: Description
         :name: description

      This is a hypothetical universe of schools in a given territorial
      unit, patterned off the ``apipop`` data available in the
      ``survey`` package.

      .. rubric:: Usage
         :name: usage

      ::

         fakeAPI

      .. rubric:: Format
         :name: format

      A data frame with 10000 observations on the following 8 variables.

      ``uid``
         a numeric vector as a unique identifier for schools

      ``schooltype``
         a character vector for school type. E = elementary school. M =
         middle school. H = high school

      ``county``
         a character vector for the county, named after an Ohio State
         All-American. “County” incidence is weighted by how many
         All-American honors the Ohio State player had. It's my fake
         data. You make your own if you have a problem with it.

      ``community``
         a character vector for the school's community, either rural,
         suburban, or urban.

      ``api``
         a numeric vector vector an academic performance index for the
         school

      ``meals``
         a numeric vector for the percentage of school students eligible
         for subsidized meals

      ``colgrad``
         a numeric vector for the percentage of school parents with
         college degrees

      ``fullqual``
         a numeric vector for the percentage of the school with teachers
         that are fully qualified

      ``sbase``
         a numeric vector for some base differences between schools,
         patterned off the school type means for ``api00`` in the
         ``apipop`` data.

      ``cbase``
         a numeric vector for some base differences between counties,
         randomly drawn from a uniform distribution

      ``e``
         a numeric vector for random errors

      .. rubric:: Details
         :name: details

      These data were generated for a blog post on my website.

      .. rubric:: References
         :name: references

      Miller, Steven V. 2020. "Some Parlor Tricks with Survey-Type
      Analyses in R." URL:
      http://svmiller.com/blog/2020/08/some-parlor-tricks-with-survey-type-analyses-in-r/
