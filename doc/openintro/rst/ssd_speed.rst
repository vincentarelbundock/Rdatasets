.. container::

   .. container::

      ========= ===============
      ssd_speed R Documentation
      ========= ===============

      .. rubric:: SSD read and write speeds
         :name: ssd-read-and-write-speeds

      .. rubric:: Description
         :name: description

      User submitted data on 1TB solid state drives (SSD).

      .. rubric:: Usage
         :name: usage

      ::

         ssd_speed

      .. rubric:: Format
         :name: format

      A data frame with 54 rows and 7 variables.

      brand
         Brand name of the drive.

      model
         Model name of the drive.

      samples
         Number of user submitted benchmarks.

      form_factor
         Physical form of the drive with levels ``2.5``, ``m.2``, and
         ``mSATA``.

      nvme
         If a drive uses the *nvme* protocol this value is 1, 0 if it
         does not.

      read
         Average read speed from user benchmarks in MB/s.

      write
         Average write speed from user benchmarks in MB/s.

      .. rubric:: Source
         :name: source

      `UserBenchmark <https://ssd.userbenchmark.com/>`__, retrieved
      September 1, 2020.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)
         library(dplyr)

         ssd_speed %>%
           count(form_factor)

         ssd_speed %>%
           filter(form_factor != "mSATA") %>%
           ggplot(aes(x = read, y = write, color = form_factor)) +
           geom_point() +
           labs(
             title = "Average read vs. write speed of SSDs",
             x = "Read speed (MB/s)",
             y = "Write speed (MB/s)"
           ) +
           facet_wrap(~form_factor, ncol = 1, scales = "free") +
           guides(color = FALSE)
