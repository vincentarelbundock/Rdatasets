.. container::

   ============ ===============
   trump_tweets R Documentation
   ============ ===============

   .. rubric:: Trump Tweets from2009 to 2017
      :name: trump_tweets

   .. rubric:: Description
      :name: description

   All tweets from Donald Trump's twitter account from 2009 to 2017

   .. rubric:: Usage
      :name: usage

   ::

      trump_tweets

   .. rubric:: Format
      :name: format

   An object of class ``"data.frame"``.

   .. rubric:: Details
      :name: details

   -  source. Device or service used to compose tweet.

   -  id_str. Tweet ID.

   -  text. Tweet.

   -  created_at. Data and time tweet was tweeted.

   -  retweet_count. How many times tweet had been retweeted at time
      dataset was created.

   -  in_reply_to_user_id_str. If a reply, the user id of person being
      replied to.

   -  favorite_count. Number of times tweet had been favored at time
      dataset was created.

   -  is_retweet. A logical telling us if it is a retweet or not.

   .. rubric:: Source
      :name: source

   The Trump Twitter Archive: https://www.thetrumparchive.com/

   .. rubric:: Examples
      :name: examples

   ::

      head(trump_tweets)
