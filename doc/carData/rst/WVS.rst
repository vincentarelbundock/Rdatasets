.. container::

   === ===============
   WVS R Documentation
   === ===============

   .. rubric:: World Values Surveys
      :name: WVS

   .. rubric:: Description
      :name: description

   Data from the World Values Surveys 1995-1997 for Australia, Norway,
   Sweden, and the United States.

   .. rubric:: Usage
      :name: usage

   ::

      WVS

   .. rubric:: Format
      :name: format

   A data frame with 5381 observations on the following 6 variables.

   ``poverty``
      “Do you think that what the government is doing for people in
      poverty in this country is about the right amount, too much, or
      too little?” (ordered): ``Too Little``, ``About Right``,
      ``Too Much``

   .

   ``religion``
      Member of a religion: ``no`` or ``yes``.

   ``degree``
      Held a university degree: ``no`` or ``yes``.

   ``country``
      ``Australia``, ``Norway``, ``Sweden``, or ``USA``.

   ``age``
      in years.

   ``gender``
      ``male`` or ``female``.

   .. rubric:: References
      :name: references

   J. Fox and R. Andersen (2006) Effect displays for multinomial and
   proportional-odds logit models. *Sociological Methodology* **36**,
   225–255.

   .. rubric:: Examples
      :name: examples

   ::

      summary(WVS)
