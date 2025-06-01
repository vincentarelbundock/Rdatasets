.. container::

   .. container::

      ======= ===============
      spotify R Documentation
      ======= ===============

      .. rubric:: Spotify Song Data
         :name: spotify-song-data

      .. rubric:: Description
         :name: description

      A sub-sample of the Spotify song data originally collected by
      Kaylin Pavlik (kaylinquest) and distributed through the R for Data
      Science TidyTuesday project.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         spotify

      .. rubric:: Format
         :name: format

      A data frame with 350 songs (or tracks) and 23 variables:

      track_id
         unique song identifier

      title
         song name

      artist
         song artist

      popularity
         song popularity from 0 (low) to 100 (high)

      album_id
         id of the album on which the song appears

      album_name
         name of the album on which the song appears

      album_release_date
         when the album was released

      playlist_name
         Spotify playlist on which the song appears

      playlist_id
         unique playlist identifier

      genre
         genre of the playlist

      subgenre
         subgenre of the playlist

      danceability
         a score from 0 (not danceable) to 100 (danceable) based on
         features such as tempo, rhythm, etc.

      energy
         a score from 0 (low energy) to 100 (high energy) based on
         features such as loudness, timbre, entropy, etc.

      key
         song key

      loudness
         song loudness (dB)

      mode
         0 (minor key) or 1 (major key)

      speechiness
         a score from 0 (non-speechy tracks) to 100 (speechy tracks)

      acousticness
         a score from 0 (not acoustic) to 100 (very acoustic)

      instrumentalness
         a score from 0 (not instrumental) to 100 (very instrumental)

      liveness
         a score from 0 (no live audience presence on the song) to 100
         (strong live audience presence on the song)

      valence
         a score from 0 (the song is more negative, sad, angry) to 100
         (the song is more positive, happy, euphoric)

      tempo
         song tempo (beats per minute)

      duration_ms
         song duration (ms)

      .. rubric:: Source
         :name: source

      https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-01-21/spotify_songs.csv/.
