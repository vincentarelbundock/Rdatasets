======= ===============
malaria R Documentation
======= ===============

Malaria Vaccine Trial
---------------------

Description
~~~~~~~~~~~

Volunteer patients were randomized into one of two experiment groups
where they would receive an experimental vaccine or a placebo. They were
subsequently exposed to a drug-sensitive strain of malaria and observed
to see whether they came down with an infection.

Usage
~~~~~

::

   malaria

Format
~~~~~~

A data frame with 20 observations on the following 2 variables.

treatment
   Whether a person was given the experimental ``vaccine`` or a
   ``placebo``.

outcome
   Whether the person got an ``infection`` or ``no infection``.

Details
~~~~~~~

In this study, volunteer patients were randomized into one of two
experiment groups: 14 patients received an experimental vaccine or 6
patients received a placebo vaccine. Nineteen weeks later, all 20
patients were exposed to a drug-sensitive malaria virus strain; the
motivation of using a drug-sensitive strain of virus here is for ethical
considerations, allowing any infections to be treated effectively.

Source
~~~~~~

Lyke et al. 2017. PfSPZ vaccine induces strain-transcending T cells and
durable protection against heterologous controlled human malaria
infection. PNAS 114(10):2711-2716. doi:
`10.1073/pnas.1615324114 <https://doi.org/10.1073/pnas.1615324114>`__.

Examples
~~~~~~~~

::


   library(dplyr)

   # Calculate conditional probabilities of infection after vaccine/placebo
   malaria %>%
     count(treatment, outcome) %>%
     group_by(treatment) %>%
     mutate(prop = n / sum(n))

   # Fisher's exact text
   fisher.test(table(malaria))
