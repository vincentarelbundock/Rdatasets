.. container::

   .. container::

      ====== ===============
      comics R Documentation
      ====== ===============

      .. rubric:: comics
         :name: comics

      .. rubric:: Description
         :name: description

      A data frame containing information about comic book characters
      from Marvel Comics and DC Comics.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         comics

      .. rubric:: Format
         :name: format

      A data frame with 21821 observations on the following 11
      variables.

      name
         Name of the character. May include: Real name, hero or villain
         name, alias(es) and/or which universe they live in (i.e.
         Earth-616 in Marvel's multiverse).

      id
         Status of the characters identity with levels ``Secret``,
         ``Publie``, ``⁠No Dual⁠`` and ``Unknown``.

      align
         Character's alignment with levels ``Good``, ``Bad``,
         ``Neutral`` and ``⁠Reformed Criminals⁠``.

      eye
         Character's eye color.

      hair
         Character's hair color.

      gender
         Character's gender.

      gsm
         Character's classification as a gender or sexual minority.

      alive
         Is the character dead or alive?

      appearances
         Number of comic boooks the character appears in.

      first_appear
         Date of publication for the comic book the character first
         appeared in.

      publisher
         Publisher of the comic with levels ``Marvel`` and ``DC``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)
         library(dplyr)

         # Good v Bad

         plot_data <- comics |>
           filter(align == "Good" | align == "Bad")

         ggplot(plot_data, aes(x = align, fill = align)) +
           geom_bar() +
           facet_wrap(~publisher) +
           scale_fill_manual(values = c(IMSCOL["red", "full"], IMSCOL["blue", "full"])) +
           theme_minimal() +
           labs(
             title = "Is there a balance of power",
             x = "",
             y = "Number of characters",
             fill = ""
           )
