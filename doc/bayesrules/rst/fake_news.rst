.. container::

   .. container::

      ========= ===============
      fake_news R Documentation
      ========= ===============

      .. rubric:: A collection of 150 news articles
         :name: a-collection-of-150-news-articles

      .. rubric:: Description
         :name: description

      A dataset containing data behind the study "FakeNewsNet: A Data
      Repository with News Content, Social Context and Spatialtemporal
      Information for Studying Fake News on Social Media"
      https://arxiv.org/abs/1809.01286. The news articles in this
      dataset were posted to Facebook in September 2016, in the run-up
      to the U.S. presidential election.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         fake_news

      .. rubric:: Format
         :name: format

      A data frame with 150 rows and 6 variables:

      title
         The title of the news article

      text
         Text of the article

      url
         Hyperlink for the article

      authors
         Authors of the article

      type
         Binary variable indicating whether the article presents fake or
         real news(fake, real)

      title_words
         Number of words in the title

      text_words
         Number of words in the text

      title_char
         Number of characters in the title

      text_char
         Number of characters in the text

      title_caps
         Number of words that are all capital letters in the title

      text_caps
         Number of words that are all capital letters in the text

      title_caps_percent
         Percent of words that are all capital letters in the title

      text_caps_percent
         Percent of words that are all capital letters in the text

      title_excl
         Number of characters that are exclamation marks in the title

      text_excl
         Number of characters that are exclamation marks in the text

      title_excl_percent
         Percent of characters that are exclamation marks in the title

      text_excl_percent
         Percent of characters that are exclamation marks in the text

      title_has_excl
         Binary variable indicating whether the title of the article
         includes an exlamation point or not(TRUE, FALSE)

      anger
         Percent of words that are associated with anger

      anticipation
         Percent of words that are associated with anticipation

      disgust
         Percent of words that are associated with disgust

      fear
         Percent of words that are associated with fear

      joy
         Percent of words that are associated with joy

      sadness
         Percent of words that are associated with sadness

      surprise
         Percent of words that are associated with surprise

      trust
         Percent of words that are associated with trust

      negative
         Percent of words that have negative sentiment

      positive
         Percent of words that have positive sentiment

      text_syllables
         Number of syllables in text

      text_syllables_per_word
         Number of syllables per word in text

      .. rubric:: Source
         :name: source

      Shu, K., Mahudeswaran, D., Wang, S., Lee, D. and Liu, H. (2018)
      FakeNewsNet: A Data Repository with News Content, Social Context
      and Dynamic Information for Studying Fake News on Social Media
