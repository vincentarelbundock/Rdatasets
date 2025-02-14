.. container::

   .. container::

      ================== ===============
      tennis_events_time R Documentation
      ================== ===============

      .. rubric:: Why Some Tennis Matches Take Forever
         :name: why-some-tennis-matches-take-forever

      .. rubric:: Description
         :name: description

      The raw data behind the story "Why Some Tennis Matches Take
      Forever"
      https://fivethirtyeight.com/features/why-some-tennis-matches-take-forever/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         tennis_events_time

      .. rubric:: Format
         :name: format

      A data frame with 205 rows representing tournaments and 5
      variables:

      tournament
         Name of event

      surface
         Court surface used at the event

      sec_added
         Seconds added per point for this event on this surface in years
         shown, from regression model controlling for players, year and
         other factors

      year_start
         Start year for data used from this tournament in regression

      year_end
         End year for data used from this tournament in regression

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/tree/master/tennis-time

      .. rubric:: See Also
         :name: see-also

      ``tennis_players_time`` and ``tennis_serve_time``
