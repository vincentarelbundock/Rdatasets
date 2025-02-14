.. container::

   .. container::

      =============== ===============
      police_killings R Documentation
      =============== ===============

      .. rubric:: Where Police Have Killed Americans In 2015
         :name: where-police-have-killed-americans-in-2015

      .. rubric:: Description
         :name: description

      The raw data behind the story "Where Police Have Killed Americans
      In 2015"
      https://fivethirtyeight.com/features/where-police-have-killed-americans-in-2015/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         police_killings

      .. rubric:: Format
         :name: format

      A data frame with 467 rows representing People who died from
      interactions with police and 34 variables:

      name
         Name of deceased

      age
         Age of deceased

      gender
         Gender of deceased

      raceethnicity
         Race/ethnicity of deceased

      month
         Month of killing

      day
         Day of incident

      year
         Year of incident

      streetaddress
         Address/intersection where incident occurred

      city
         City where incident occurred

      state
         State where incident occurred

      latitude
         Latitude, geocoded from address

      longitude
         Longitude, geocoded from address

      state_fp
         State FIPS code

      county_fp
         County FIPS code

      tract_ce
         Tract ID code

      geo_id
         Combined tract ID code

      county_id
         Combined county ID code

      namelsad
         Tract description

      lawenforcementagency
         Agency involved in incident

      cause
         Cause of death

      armed
         How/whether deceased was armed

      pop
         Tract population

      share_white
         Share of pop that is non-Hispanic white

      share_black
         Share of pop that is black (alone, not in combination)

      share_hispanic
         Share of pop that is Hispanic/Latino (any race)

      p_income
         Tract-level median personal income

      h_income
         Tract-level median household income

      county_income
         County-level median household income

      comp_income
         'h_income' / 'county_income'

      county_bucket
         Household income, quintile within county

      nat_bucket
         Household income, quintile nationally

      pov
         Tract-level poverty rate (official)

      urate
         Tract-level unemployment rate

      college
         Share of 25+ pop with BA or higher

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/tree/master/police-killings
