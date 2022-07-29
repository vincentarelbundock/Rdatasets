.. container::

   ======== ===============
   ncaa_rpi R Documentation
   ======== ===============

   .. rubric:: ncaa_rpi
      :name: ncaa_rpi

   .. rubric:: Description
      :name: description

   Wooldridge Source: Data on NCAA men’s basketball teams, collected by
   Weizhao Sun for a senior seminar project in sports economics at
   Michigan State University, Spring 2017. He used various sources,
   including www.espn.com and
   www.teamrankings.com/ncaa-basketball/rpi-ranking/rpi-rating-by-team.
   Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('ncaa_rpi')

   .. rubric:: Format
      :name: format

   A data.frame with 336 observations on 14 variables:

   -  **team:** Name

   -  **year:** Year

   -  **conference:** Conference

   -  **postrpi:** Post Rank

   -  **prerpi:** Preseason Rank

   -  **postrpi_1:** Post Rank 1 yr ago

   -  **postrpi_2:** Post Rank 2 yrs ago

   -  **recruitrank:** Recruits Rank

   -  **wins:** Number of games won

   -  **losses:** Number of games lost

   -  **winperc:** Winning Percentage

   -  **tourney:** Tournament dummy

   -  **coachexper:** Coach Experience

   -  **power5:** PowerFive Dummy

   .. rubric:: Notes
      :name: notes

   This is a nice example of how multiple regression analysis can be
   used to determine whether rankings compiled by experts – the
   so-called pre-season RPI in this case – provide additional
   information beyond what we can obtain from widely available data
   bases. A simple and interesting question is whether, once the
   previous year’s post-season RPI is controlled for, does the
   pre-season RPI – which is supposed to add information on recruiting
   and player development – help to predict performance (such as win
   percentage or making it to the NCAA men’s basketball tournament). For
   the binary outcome that indicates making it to the NCAA tournament, a
   probit or logit model can be used for courses that introduce more
   advanced methods. There are some other interesting variables, such as
   coaching experience, that can be included, too.

   Used in Text: not used

   .. rubric:: Source
      :name: source

   http://www.cengage.com/c/introductory-econometrics-a-modern-approach-7e-wooldridge

   .. rubric:: Examples
      :name: examples

   ::

       str(ncaa_rpi)
