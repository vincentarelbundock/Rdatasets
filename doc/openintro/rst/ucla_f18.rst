.. container::

   ======== ===============
   ucla_f18 R Documentation
   ======== ===============

   .. rubric:: UCLA courses in Fall 2018
      :name: ucla_f18

   .. rubric:: Description
      :name: description

   List of all courses at UCLA during Fall 2018.

   .. rubric:: Usage
      :name: usage

   ::

      ucla_f18

   .. rubric:: Format
      :name: format

   A data frame with 3950 observations on the following 14 variables.

   year
      Year the course was offered

   term
      Term the course was offered

   subject
      Subject

   subject_abbr
      Subject abbreviation, if any

   course
      Course name

   course_num
      Course number, complete

   course_numeric
      Course number, numeric only

   seminar
      Boolean for if this is a seminar course

   ind_study
      Boolean for if this is some form of independent study

   apprenticeship
      Boolean for if this is an apprenticeship

   internship
      Boolean for if this is an internship

   honors_contracts
      Boolean for if this is an honors contracts course

   laboratory
      Boolean for if this is a lab

   special_topic
      Boolean for if this is any of the special types of courses listed

   .. rubric:: Source
      :name: source

   https://sa.ucla.edu/ro/public/soc, retrieved 2018-11-22.

   .. rubric:: Examples
      :name: examples

   ::

      nrow(ucla_f18)
      table(ucla_f18$special_topic)
      subset(ucla_f18, is.na(course_numeric))
      table(subset(ucla_f18, !special_topic)$course_numeric < 100)
      elig_courses <-
        subset(ucla_f18, !special_topic & course_numeric < 100)
      set.seed(1)
      ucla_textbooks_f18 <-
        elig_courses[sample(nrow(elig_courses), 100), ]
      tmp <- order(
        ucla_textbooks_f18$subject,
        ucla_textbooks_f18$course_numeric
      )
      ucla_textbooks_f18 <- ucla_textbooks_f18[tmp, ]
      rownames(ucla_textbooks_f18) <- NULL
      head(ucla_textbooks_f18)
