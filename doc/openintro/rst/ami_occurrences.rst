.. container::

   .. container::

      =============== ===============
      ami_occurrences R Documentation
      =============== ===============

      .. rubric:: Acute Myocardial Infarction (Heart Attack) Events
         :name: acute-myocardial-infarction-heart-attack-events

      .. rubric:: Description
         :name: description

      This data set is simulated but contains realistic occurrences of
      AMI in NY City.

      .. rubric:: Usage
         :name: usage

      ::

         ami_occurrences

      .. rubric:: Format
         :name: format

      A data frame with 365 observations on the following variable.

      ami
         Number of daily occurrences of heart attacks in NY City.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)

         ggplot(ami_occurrences, mapping = aes(x = ami)) +
           geom_bar() +
           labs(
             x = "Acute Myocardial Infarction events",
             y = "Count",
             title = "Acute Myocardial Infarction events in NYC"
           )
