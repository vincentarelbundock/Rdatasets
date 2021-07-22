=========== ===============
antibiotics R Documentation
=========== ===============

Pre-existing conditions in 92 children
--------------------------------------

Description
~~~~~~~~~~~

Pre-existing medical conditions of 92 children involved in a study on
the optimal duration of antibiotic use in treatment of tracheitis, which
is an upper respiratory infection.

Usage
~~~~~

::

   antibiotics

Format
~~~~~~

A data frame with 92 observations, each representing a child, on the
following variable.

condition
   Pre-existing medical condition.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(antibiotics, aes(x = condition)) +
     geom_bar() +
     labs(x = "Conidition", y = "Count",
          title = "Pre-existing coniditions of children",
          subtitle = "in antibiotic use study") +
     coord_flip()
