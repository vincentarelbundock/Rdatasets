.. container::

   ========= ===============
   gapminder R Documentation
   ========= ===============

   .. rubric:: Gapminder data
      :name: gapminder

   .. rubric:: Description
      :name: description

   Excerpt of the Gapminder data on life expectancy, GDP per capita, and
   population by country.

   .. rubric:: Usage
      :name: usage

   ::

      gapminder

   .. rubric:: Format
      :name: format

   The main data frame ``gapminder`` has 1704 rows and 6 variables:

   country
      factor with 142 levels

   continent
      factor with 5 levels

   year
      ranges from 1952 to 2007 in increments of 5 years

   lifeExp
      life expectancy at birth, in years

   pop
      population

   gdpPercap
      GDP per capita (US$, inflation-adjusted)

   The supplemental data frame ``gapminder_unfiltered`` was not filtered
   on ``year`` or for complete data and has 3313 rows.

   .. rubric:: Source
      :name: source

   https://www.gapminder.org/data/

   .. rubric:: See Also
      :name: see-also

   ``country_colors`` for a nice color scheme for the countries

   .. rubric:: Examples
      :name: examples

   ::

      str(gapminder)
      head(gapminder)
      summary(gapminder)
      table(gapminder$continent)
      aggregate(lifeExp ~ continent, gapminder, median)
      plot(lifeExp ~ year, gapminder, subset = country == "Cambodia", type = "b")
      plot(lifeExp ~ gdpPercap, gapminder, subset = year == 2007, log = "x")

      if (require("dplyr")) {
        gapminder %>%
          filter(year == 2007) %>%
          group_by(continent) %>%
          summarise(lifeExp = median(lifeExp))

        # how many unique countries does the data contain, by continent?
        gapminder %>%
          group_by(continent) %>%
          summarize(n_obs = n(), n_countries = n_distinct(country))

        # by continent, which country experienced the sharpest 5-year drop in
        # life expectancy and what was the drop?
        gapminder %>%
          group_by(continent, country) %>%
          select(country, year, continent, lifeExp) %>%
          mutate(le_delta = lifeExp - lag(lifeExp)) %>%
          summarize(worst_le_delta = min(le_delta, na.rm = TRUE)) %>%
          filter(min_rank(worst_le_delta) < 2) %>%
          arrange(worst_le_delta)
      }
