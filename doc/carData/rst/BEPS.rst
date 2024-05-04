.. container::

   .. container::

      ==== ===============
      BEPS R Documentation
      ==== ===============

      .. rubric:: British Election Panel Study
         :name: british-election-panel-study

      .. rubric:: Description
         :name: description

      These data are drawn from the 1997-2001 British Election Panel
      Study (BEPS).

      .. rubric:: Usage
         :name: usage

      ::

         BEPS

      .. rubric:: Format
         :name: format

      A data frame with 1525 observations on the following 10 variables.

      ``vote``
         Party choice: ``Conservative``, ``Labour``, or
         ``Liberal Democrat``

      ``age``
         in years

      ``economic.cond.national``
         Assessment of current national economic conditions, 1 to 5.

      ``economic.cond.household``
         Assessment of current household economic conditions, 1 to 5.

      ``Blair``
         Assessment of the Labour leader, 1 to 5.

      ``Hague``
         Assessment of the Conservative leader, 1 to 5.

      ``Kennedy``
         Assessment of the leader of the Liberal Democrats, 1 to 5.

      ``Europe``
         an 11-point scale that measures respondents' attitudes toward
         European integration. High scores represent ‘Eurosceptic’
         sentiment.

      ``political.knowledge``
         Knowledge of parties' positions on European integration, 0 to
         3.

      ``gender``
         ``female`` or ``male``.

      .. rubric:: References
         :name: references

      J. Fox and R. Andersen (2006) Effect displays for multinomial and
      proportional-odds logit models. *Sociological Methodology* **36**,
      225–255.

      .. rubric:: Examples
         :name: examples

      ::

         summary(BEPS)
