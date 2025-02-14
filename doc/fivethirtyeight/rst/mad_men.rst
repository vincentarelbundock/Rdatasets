.. container::

   .. container::

      ======= ===============
      mad_men R Documentation
      ======= ===============

      .. rubric:: "Mad Men" Is Ending. What's Next For The Cast?
         :name: mad-men-is-ending.-whats-next-for-the-cast

      .. rubric:: Description
         :name: description

      The raw data behind the story ""Mad Men" Is Ending. What's Next
      For The Cast?"
      https://fivethirtyeight.com/features/mad-men-is-ending-whats-next-for-the-cast/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         mad_men

      .. rubric:: Format
         :name: format

      A data frame with 248 rows representing performers on TV shows and
      15 variables:

      performer
         The name of the actor, according to IMDb. This is not a unique
         identifier - two performers appeared in more than one program

      show
         The television show where this actor appeared in more than half
         the episodes

      show_start
         The year the television show began

      show_end
         The year the television show ended, "PRESENT" if the show
         remains on the air as of May 10.

      status
         Why the actor is no longer on the program: "END" if the show
         has concluded, "LEFT" if the show remains on the air.

      charend
         The year the character left the show. Equal to "Show End" if
         the performer stayed on until the final season.

      years_since
         2015 minus CharEnd

      num_lead
         The number of leading roles in films the performer has appeared
         in since and including "CharEnd", according to OpusData

      num_support
         The number of leading roles in films the performer has appeared
         in since and including "CharEnd", according to OpusData

      num_shows
         The number of seasons of television of which the performer
         appeared in at least half the episodes since and including
         "CharEnd", according to OpusData

      score
         #LEAD + #Shows + 0.25*(#SUPPORT)

      score_div_y
         "Score" divided by "Years Since"

      lead_notes
         The list of films counted in #LEAD

      support_notes
         The list of films counted in #SUPPORT

      show_notes
         The seasons of shows counted in #Shows

      .. rubric:: Source
         :name: source

      IMDB https://imdb.com
