.. container::

   ===================== ===============
   healthcare_law_survey R Documentation
   ===================== ===============

   .. rubric:: Pew Research Center poll on health care, including
      question variants
      :name: pew-research-center-poll-on-health-care-including-question-variants

   .. rubric:: Description
      :name: description

   For example, Pew Research Center conducted a survey with the
   following question: "As you may know, by 2014 nearly all Americans
   will be required to have health insurance. People who do not buy
   insurance will pay a penalty while people who cannot afford it will
   receive financial help from the government. Do you approve or
   disapprove of this policy?" For each randomly sampled respondent, the
   statements in brackets were randomized: either they were kept in the
   order given above, or the two statements were reversed.

   .. rubric:: Usage
      :name: usage

   ::

      healthcare_law_survey

   .. rubric:: Format
      :name: format

   A data frame with 1503 observations on the following 2 variables.

   order
      a factor with levels ``cannot_afford_second`` ``penalty_second``

   response
      a factor with levels ``approve`` ``disapprove`` ``other``

   .. rubric:: Source
      :name: source

   www.people-press.org/2012/03/26/public-remains-split-on-health-care-bill-opposed-to-mandate/.
   Sample sizes for each polling group are approximate.

   .. rubric:: Examples
      :name: examples

   ::



      healthcare_law_survey
