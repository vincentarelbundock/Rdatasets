.. container::

   .. container::

      ============ ===============
      uk_serial_df R Documentation
      ============ ===============

      .. rubric:: Serial Killers of the UK (1828 - 2015)
         :name: serial-killers-of-the-uk-1828---2015

      .. rubric:: Description
         :name: description

      This dataset contains information about the serial killers in the
      UK, including their name, number of kills, years active, and the
      population during their time. It provides a historical view of
      some of the most infamous serial killers in the United Kingdom.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(uk_serial_df)

      .. rubric:: Format
         :name: format

      A data frame with 62 observations and 8 variables:

      number_of_kills
         Total number of murders committed by the serial killer
         (integer).

      years
         The years during which the serial killer was active (factor).

      name
         Name of the serial killer (character).

      aka
         Known aliases of the serial killer (character).

      year_start
         The first year the serial killer was active (integer).

      year_end
         The last year the serial killer was active (integer).

      date_of_first_kill
         The date when the serial killer committed their first murder
         (factor).

      population_million
         Population in millions at the time the serial killer was active
         (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'uk_serial_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a data frame. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      https://www.murderuk.com/
