.. container::

   .. container::

      ========= ===============
      AddHealth R Documentation
      ========= ===============

      .. rubric:: Adolescent Mental Health Data
         :name: adolescent-mental-health-data

      .. rubric:: Description
         :name: description

      This data was taken from the National Longitudinal Study of
      Adolescent Health. It is a cross-sectional sample of participants
      from grades 7–12, described and analyzed by Warne (2014).

      .. rubric:: Format
         :name: format

      A data frame with 4344 observations on the following 3 variables.

      ``grade``
         an ordered factor with levels ``7`` < ``8`` < ``9`` < ``10`` <
         ``11`` < ``12``

      ``depression``
         a numeric vector

      ``anxiety``
         a numeric vector

      .. rubric:: Details
         :name: details

      ``depression`` is the response to the question "In the last month,
      how often did you feel depressed or blue?"

      ``anxiety`` is the response to the question "In the last month,
      how often did you have trouble relaxing?"

      The responses for ``depression`` and ``anxiety`` were recorded on
      a 5-point Likert scale, with categories
      ``0="Never", 1="Rarely", 2="Occasionally", 3="Often", 4="Every day"``

      .. rubric:: Source
         :name: source

      Warne, R. T. (2014). A primer on Multivariate Analysis of Variance
      (MANOVA) for Behavioral Scientists. *Practical Assessment,
      Research & Evaluation*, 19 (1).
      https://scholarworks.umass.edu/pare/vol19/iss1/17/

      .. rubric:: Examples
         :name: examples

      ::

         data(AddHealth)

         if(require(dplyr) & require(ggplot2)) {
         # find means & std.errors by grade
         means <- AddHealth |>
         group_by(grade) |>
           summarise(
             n = n(),
             dep_se = sd(depression, na.rm = TRUE) / sqrt(n),
             anx_se = sd(anxiety, na.rm = TRUE) / sqrt(n),
             depression = mean(depression),
             anxiety = mean(anxiety) ) |> 
           relocate(depression, anxiety, .after = grade) |>
           print()
           
         # plot means with std.error bars
         ggplot(data = means, aes(x = anxiety, y = depression, 
         color = grade)) +
           geom_point(size = 3) +
           geom_errorbarh(aes(xmin = anxiety - anx_se, 
                              xmax = anxiety + anx_se)) +
           geom_errorbar(aes(ymin = depression - dep_se, 
                             ymax = depression + dep_se)) +
           geom_line(aes(group = 1), linewidth = 1.5) +
           geom_label(aes(label = grade), 
                      nudge_x = -0.015, nudge_y = 0.02) +
           scale_color_discrete(guide = "none") +
           theme_bw(base_size = 15)
         }

         # fit mlm
         AH.mod <- lm(cbind(anxiety, depression) ~ grade, data=AddHealth)

         car::Anova(AH.mod)
         summary(car::Anova(AH.mod))

         heplot(AH.mod, hypotheses="grade.L", 
                fill=c(TRUE, FALSE),
                level = 0.4)
