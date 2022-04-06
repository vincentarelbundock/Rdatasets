.. container::

   === ===============
   ask R Documentation
   === ===============

   .. rubric:: How important is it to ask pointed questions?
      :name: how-important-is-it-to-ask-pointed-questions

   .. rubric:: Description
      :name: description

   In this experiment, each individual was asked to be a seller of an
   iPod (a product commonly used to store music on before smart
   phones...). They participant received $10 + 5% of the sale price for
   participating. The iPod they were selling had frozen twice in the
   past inexplicably but otherwise worked fine. The prospective buyer
   starts off and then asks one of three final questions, depending on
   the seller's treatment group.

   .. rubric:: Usage
      :name: usage

   ::

      ask

   .. rubric:: Format
      :name: format

   A data frame with 219 observations on the following 3 variables.

   question_class
      The type of question: ``general``, ``pos_assumption``, and
      ``neg_assumption``.

   question
      The question corresponding to the ``question.class``

   response
      The classified response from the seller, either ``disclose`` or
      ``hide``.

   .. rubric:: Details
      :name: details

   The three possible questions:

   -  General: What can you tell me about it?

   -  Positive Assumption: It doesn't have any problems, does it?

   -  Negative Assumption: What problems does it have?

   The outcome variable is whether or not the participant discloses or
   hides the problem with the iPod.

   .. rubric:: Source
      :name: source

   Minson JA, Ruedy NE, Schweitzer ME. There *is* such a thing as a
   stupid question: Question disclosure in strategic communication.

   .. rubric:: Examples
      :name: examples

   ::


      library(dplyr)
      library(ggplot2)

      # Distribution of responses based on question type
      ask %>%
        count(question_class, response)

      # Visualize relative frequencies of responses based on question type
      ggplot(ask, aes(x = question_class, fill = response)) +
        geom_bar(position = "fill")

      # Perform chi-square test
      (test <- chisq.test(table(ask$question_class, ask$response)))

      # Check the test's assumption around sufficient expected observations
      # per table cell.
      test$expected
