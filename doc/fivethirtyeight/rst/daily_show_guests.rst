.. container::

   .. container::

      ================= ===============
      daily_show_guests R Documentation
      ================= ===============

      .. rubric:: Every Guest Jon Stewart Ever Had On 'The Daily Show'
         :name: every-guest-jon-stewart-ever-had-on-the-daily-show

      .. rubric:: Description
         :name: description

      The raw data behind the story "Every Guest Jon Stewart Ever Had On
      'The Daily Show'"
      https://fivethirtyeight.com/features/every-guest-jon-stewart-ever-had-on-the-daily-show/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         daily_show_guests

      .. rubric:: Format
         :name: format

      A data frame with 2693 rows representing guests and 5 variables:

      year
         The year the episode aired

      google_knowledge_occupation
         Their occupation or office, according to Google's Knowledge
         Graph or, if they're not in there, how Stewart introduced them
         on the program.

      show
         Air date of episode. Not unique, as some shows had more than
         one guest

      group
         A larger group designation for the occupation. For instance, us
         senators, us presidents, and former presidents are all under
         "politicians"

      raw_guest_list
         The person or list of people who appeared on the show,
         according to Wikipedia. The GoogleKnowledge_Occupation only
         refers to one of them in a given row.

      .. rubric:: Source
         :name: source

      Google Knowledge Graph, The Daily Show clip library, Wikipedia.
