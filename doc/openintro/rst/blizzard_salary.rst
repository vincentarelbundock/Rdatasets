.. container::

   .. container::

      =============== ===============
      blizzard_salary R Documentation
      =============== ===============

      .. rubric:: Blizzard Employee Voluntary Salary Info.
         :name: blizzard-employee-voluntary-salary-info.

      .. rubric:: Description
         :name: description

      Employee generated anonymous survey of salary information.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         blizzard_salary

      .. rubric:: Format
         :name: format

      A data frame with 466 rows and 9 variables.

      timestamp
         Time data was entered

      status
         Specifies employment status.

      current_title
         Current job title.

      current_salary
         Current salary (in USD).

      salary_type
         Frequency with levels year, hour, week.

      percent_incr
         Raise given July 2020.

      other_info
         Other information submitted by employee.

      location
         Current office of employment.

      performance_rating
         Most recent review performance rating.

      .. rubric:: Source
         :name: source

      `Bloomberg - Blizzard workers share salaries in revolt over wage
      disparities <https://www.bloomberg.com/news/articles/2020-08-03/blizzard-workers-share-salaries-in-revolt-over-wage-disparities>`__.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)
         library(dplyr)

         plot_data <- blizzard_salary |>
           mutate(annual_salary = case_when(
             salary_type == "week" ~ current_salary * 52,
             salary_type == "hour" ~ current_salary * 40 * 52,
             TRUE ~ current_salary
           ))

         ggplot(plot_data, aes(annual_salary)) +
           geom_histogram(binwidth = 25000, color = "white") +
           labs(
             title = "Current Salary of Blizzard Employees",
             x = "Salary",
             y = "Number of Employees"
           )
