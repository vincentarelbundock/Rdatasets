.. container::

   ================= ===============
   rosling_responses R Documentation
   ================= ===============

   .. rubric:: Sample Responses to Two Public Health Questions
      :name: rosling_responses

   .. rubric:: Description
      :name: description

   Public health has improved and evolved, but has the public's
   knowledge changed with it? This data set explores sample responses
   for two survey questions posed by Hans Rosling during lectures to a
   wide array of well-educated audiences.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      rosling_responses

   .. rubric:: Format
      :name: format

   A data frame with 278 rows and 3 variables:

   question
      ID for the question being posed.

   response
      Noting whether the response was ``correct`` or ``incorrect``.

   prob_random_correct
      The probability the person would have guessed the answer correctly
      if they were guessing completely randomly.

   .. rubric:: Source
      :name: source

   The samples we describe are plausible based on the exact rates
   observed in larger samples. For more info on the actual rates
   observed, visit https://www.gapminder.org.

   Another relevant reference is a book by Hans Rosling, Anna Rosling
   Ronnlund, and Ola Rosling called
   `Factfulness <https://www.gapminder.org/factfulness-book/>`__.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      frac_correct <- tapply(
        rosling_responses$response == "correct",
        rosling_responses$question,
        mean
      )
      frac_correct
      n <- table(rosling_responses$question)
      n
      expected <- tapply(
        rosling_responses$prob_random_correct,
        rosling_responses$question,
        mean
      )

      # Construct confidence intervals.
      se <- sqrt(frac_correct * (1 - frac_correct) / n)
      # Lower bounds.
      frac_correct - 1.96 * se
      # Upper bounds.
      frac_correct + 1.96 * se

      # Construct Z-scores and p-values.
      z <- (frac_correct - expected) / se
      pt(z, df = n - 1)
