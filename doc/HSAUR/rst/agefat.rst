.. container::

   ====== ===============
   agefat R Documentation
   ====== ===============

   .. rubric:: Total Body Composision Data
      :name: total-body-composision-data

   .. rubric:: Description
      :name: description

   Age and body fat percentage of 25 normal adults.

   .. rubric:: Usage
      :name: usage

   ::

      data("agefat")

   .. rubric:: Format
      :name: format

   A data frame with 25 observations on the following 3 variables.

   ``age``
      the age of the subject.

   ``fat``
      the body fat percentage.

   ``sex``
      a factor with levels ``female`` and ``male``.

   .. rubric:: Details
      :name: details

   The data come from a study investigating a new methods of measuring
   body composition (see Mazess et al, 1984), and give the body fat
   percentage (percent fat), age and sex for 25 normal adults aged
   between 23 and 61 years. The questions of interest are how are age
   and percent fat related, and is there any evidence that the
   relationship is different for males and females.

   .. rubric:: Source
      :name: source

   R. B. Mazess, W. W. Peppler and M. Gibbons (1984), Total body
   composition by dual-photon (153Gd) absorptiometry. *American Journal
   of Clinical Nutrition*, **40**, 834–839.

   .. rubric:: Examples
      :name: examples

   ::


        data("agefat", package = "HSAUR")
        plot(fat ~ age, data = agefat)

