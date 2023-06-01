.. container::

   ======= ===============
   Kershaw R Documentation
   ======= ===============

   .. rubric:: Kershaw Pitch Data
      :name: Kershaw

   .. rubric:: Description
      :name: description

   Pitch-by-pitch data for baseball pitcher Clayton Kershaw in the 2013
   season

   .. rubric:: Format
      :name: format

   A data frame with 3402 observations on the following 24 variables.

   ``BatterNumber``
      Number of batters faced so far that game

   ``Outcome``
      One of 14 possible results for a pitch (e.g. ``Ball``,
      ``Ball In Dirt``, ``Called Strike``, ...,
      ``Swinging Strike (Blocked))``

   ``Class``
      One of three classifications (``B``\ =ball, ``S``\ =strike, or
      ``X``\ =in play)

   ``Result``
      From pitcher's perspective (``Neg``\ =ball or hit,
      ``Pos``\ =strike or out)

   ``Swing``
      Did the batter swing at the pitch? (``No`` or ``Yes``)

   ``Time``
      Date and time of the pitch (format ``yyyy-mm-ddThh:mm:ssZ``)

   ``StartSpeed``
      Speed leaving the pitcher's hand (in mph)

   ``EndSpeed``
      Speed crossing home plate (in mph)

   ``HDev``
      Horizontal movement (inches)

   ``VDev``
      Vertical movement (inches)

   ``HPos``
      Horizontal position at home plate (inches from center, positive is
      catcher's right)

   ``VPos``
      Vertical position at home plate (inches above the ground)

   ``PitchType``
      Code for pitch type (``CH``\ =changeup, ``CU``\ =curve,
      ``FF``\ =fastball, or ``SL``\ =slider)

   ``Zone``
      1-9 in theoretical strike zone (upper left to lower right), 11-14
      are out of strike zone

   ``Nasty``
      A measure on a 0-100 scale of difficulty of the pitch to hit (100
      is most difficult)

   ``Count``
      Ball strike count (``0-0``, ``0-1``, ``0-2``, ``1-1``, ``1-2``,
      ``2-1``, ``2-2``, ``3-1``, or ``3-2``)

   ``BallCount``
      Number of balls before the pitch (0, 1, 2, or 3)

   ``StrikeCount``
      Number of strikes before the pitch (0, 1, or 2)

   ``Inning``
      Inning of the game

   ``InningSide``
      Portion of the inning (``bottom``\ = pitcher at home or
      ``top``\ =pitcher away)

   ``Outs``
      Number of outs when the pitch is thrown

   ``BatterHand``
      Batter's stance (``L``\ =left or ``R``\ =right)

   ``ABEvent``
      Result of the at bat (several possibilities)

   ``Batter``
      Name of the batter faced

   .. rubric:: Details
      :name: details

   Dataset includes information for 3,402 individual pitches thrown by
   Los Angeles Dodger baseball pitcher Clayton Kershaw during the 2013
   regular season when he won the Cy Young award as the best pitcher in
   the National League. Many variables are measured using Major League
   Baseball's PITCHf/x system that uses camera systems in each ballpark
   to track characteristics of each pitch thrown.

   .. rubric:: Source
      :name: source

   Data scraped from the MLB GameDay website
   (http://gd2.mlb.com/components/game/mlb/) using pitchRx
