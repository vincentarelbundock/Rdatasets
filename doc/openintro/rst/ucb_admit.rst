.. container::

   .. container::

      ========= ===============
      usb_admit R Documentation
      ========= ===============

      .. rubric:: ucb_admit
         :name: ucb_admit

      .. rubric:: Description
         :name: description

      Data from a study carried out by the graduate Division of the
      University of California, Berkeley in the early 1970's to evaluate
      whether there was a sex bias in graduate admissions.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ucb_admit

      .. rubric:: Format
         :name: format

      A data frame with 4526 observations on the following 3 variables.

      admit
         Was the applicant admitted to the university?

      gender
         Whether the applicant identified as male or female.

      department
         What department did the applicant apply to, noted as A through
         F for confidentiality.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)
         library(dplyr)

         plot_data <- ucb_admit |>
           count(dept, gender, admit)

         ggplot(plot_data, aes(dept, n, fill = gender)) +
           geom_col(position = "dodge") +
           facet_wrap(~admit) +
           theme_minimal() +
           labs(
             title = "Does gender discrimination play a role in college admittance?",
             x = "Department",
             y = "Number of Students",
             fill = "Gender",
             caption = "Source: UC Berkeley, 1970's"
           )
