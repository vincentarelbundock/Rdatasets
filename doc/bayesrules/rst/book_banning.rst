.. container::

   .. container::

      ============ ===============
      book_banning R Documentation
      ============ ===============

      .. rubric:: Book Banning Data
         :name: book-banning-data

      .. rubric:: Description
         :name: description

      The book banning data was collected by Fast and Hegland as part of
      a course project at St Olaf College, and distributed with
      "Broadening Your Statistical Horizons" by Legler and Roback. This
      data set includes the features and outcomes for 931 book
      challenges (ie. requests to ban a book) made in the US between
      2000 and 2010. Information on the books being challenged and the
      characteristics of these books were collected from the American
      Library Society. State-level demographic information and political
      leanings were obtained from the US Census Bureau and Cook
      Political Report, respectively. Due to an outlying large number of
      challenges, book challenges made in the state of Texas were
      omitted.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         book_banning

      .. rubric:: Format
         :name: format

      A data frame with 931 rows and 17 variables. Each row represents a
      single book challenge within the given state and date.

      title
         title of book being challenged

      book_id
         identifier for the book

      author
         author of the book

      date
         date of the challenge

      year
         year of the challenge

      removed
         whether or not the challenge was successful (the book was
         removed)

      explicit
         whether the book was challenged for sexually explicit material

      antifamily
         whether the book was challenged for anti-family material

      occult
         whether the book was challenged for occult material

      language
         whether the book was challenged for inapropriate language

      lgbtq
         whether the book was challenged for LGBTQ material

      violent
         whether the book was challenged for violent material

      state
         US state in which the challenge was made

      political_value_index
         Political Value Index of the state (negative = leans
         Republican, 0 = neutral, positive = leans Democrat)

      median_income
         median income in the state, relative to the average state
         median income

      hs_grad_rate
         high school graduation rate, in percent, relative to the
         average state high school graduation rate

      college_grad_rate
         college graduation rate, in percent, relative to the average
         state college graduation rate

      .. rubric:: Source
         :name: source

      Shannon Fast and Thomas Hegland (2011). Book Challenges: A
      Statistical Examination. Project for Statistics 316-Advanced
      Statistical Modeling, St. Olaf College. Julie Legler and Paul
      Roback (2019). Broadening Your Statistical Horizons: Generalized
      Linear Models and Multilevel Models.
      https://bookdown.org/roback/bookdown-bysh/.
      https://github.com/proback/BeyondMLR/blob/master/data/bookbanningNoTex.csv/
