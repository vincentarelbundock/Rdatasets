============ ===============
trump_tweets R Documentation
============ ===============

Trump Tweets from2009 to 2017
-----------------------------

Description
~~~~~~~~~~~

This dataset contains all tweets from Donald Trump's Twitter account
from 2009 to 2017. Additionally, the results of a sentiment analysis,
conducted on tweets from the campaign period (2015-06-17 to 2016-11-08),
are included in ``sentiment_counts``.

Usage
~~~~~

.. code:: R

   trump_tweets

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- source. Device or service used to compose tweet.

- id_str. Tweet ID.

- text. Tweet.

- created_at. Data and time tweet was tweeted.

- retweet_count. How many times tweet had been retweeted at time dataset
  was created.

- in_reply_to_user_id_str. If a reply, the user id of person being
  replied to.

- favorite_count. Number of times tweet had been favored at time dataset
  was created.

- is_retweet. A logical telling us if it is a retweet or not.

Source
~~~~~~

The Trump Twitter Archive: https://www.thetrumparchive.com/

Examples
~~~~~~~~

.. code:: R

   head(trump_tweets)
