.. container::

   .. container::

      ============= ===============
      african_coups R Documentation
      ============= ===============

      .. rubric:: Modeling Coups in Africa, 1960 to 1975 (1982)
         :name: modeling-coups-in-africa-1960-to-1975-1982

      .. rubric:: Description
         :name: description

      A data set on modeling coups in Africa using data from the period
      between 1960 and 1975 (1982). These data offer a partial
      replication of Jackman (1978).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         african_coups

      .. rubric:: Format
         :name: format

      A data frame with the following 11 variables.

      ``iso3c``
         a three-character ISO code for state identification

      ``country``
         an English country name

      ``jci``
         Jackman's (1978) coup index from 1960 to 1975

      ``tmis``
         Johnson et al.'s (1984) total military involvement score

      ``agperc``
         an estimate of the percentage of the country's labor force in
         agriculture and animal husbandry

      ``indperc``
         an estimate of the percentage of the country's labor force in
         industry

      ``literacy_cnts``
         an estimate of countrywide literacy from around 1965

      ``literacy_ba``
         another estimate of countrywide literacy from around 1965

      ``leperc``
         an estimate of the size of the largest ethnic group, as a
         percentage

      ``partydom``
         the percentage of the vote received by the largest party in the
         country prior to independence

      ``turnout``
         the turnout (as a percentage) at the independence referendum

      .. rubric:: Details
         :name: details

      Data exist for instructional purposes, especially about modeling
      interactions. Reading Jackman (1978) and Johnson et al. (1984)
      will provide more information about the data and hypotheses. There
      was a follow-up symposium on this in 1986 in *American Political
      Science Review* that may be an interesting read and provide even
      more context about what's at stake in this debate.

      English country names are country names from around the time of
      publication. Take note of older names of "Dahomey", "Swaziland",
      "Upper Volta", and "Zaire." The three-character ISO codes are
      current, mostly for ease of doing other things with the data.
      However, this comes with the acknowledgment that Dahomey and Zaire
      used to have different ISO codes under their older names. Both
      codes for Dahomey (``DHY``) and Zaire (``ZAR``) were retired in
      1977 and 1997, respectively.

      Ideally, I'd have Morrison's (1972) *Black Africa*, but I do not.
      I have a copy of a 1989 update, though. That's what I consulted in
      constructing this data set.

      Jackman (1978) is deceptively opaque on what he's doing for the
      ethnic group variable and arguably misleads on what his turnout
      variable is actually from. In the case of the ethnic group
      variable, it's the difference between saying the largest ethnic
      group in Rwanda is 98% of the population versus 80% of the
      population. In short, it's the difference of saying whether there
      are any Tutsi at all in the country. Basically, I'm uncertain with
      what he's doing with what Morrison et al. (1989) define as "ethnic
      clusters".

      Mercifully, the coup variables come from a replication by Johnson
      et al. (1984). Based on Morrison et al.'s (1989) updated data,
      it's not clear how Jackman could've derived some of these
      estimates using the formula he said he used. For example, Benin
      should have a score of 39 based on the information in Table 2.10
      (p. 373 in Morrison et al. (1989)). Cameroon should have a 1 and
      not a 2, per Table 5.10 (p. 399). My comments here work under the
      assumption that Morrison et al. are adding information and not
      revising information in the second edition of the *Black Africa*
      handbook.

      To be more precise, both the Jackman coup index and total military
      involvement variables are directly copied from Table 2 in Johnson
      et al. (1984) on p. 627. Missingness in the Jackman coup index
      variable communicates the country was not included in his original
      study, but was included in the Johnson et al. replication.

      Related: the agricultural variable is a midway point between
      columns B and columns C in Table 3.11 of Morrison et al. (1989). I
      do not think this is too far removed from what Jackman was looking
      at in an older version of the same data, but there will be slight
      differences. It's the difference of "these variables came from
      1966" versus "this is an imputation of 1960 to 1970". The latter
      is what I offer here. I can only do so much here.

      To continue this theme of the opacity in trying to reconstruct the
      data, it seems Jackman (1978, p. 1265) misleads the reader a bit
      in saying that the social mobilization index incorporates the
      percentage of the labor force that is not employed in agriculture.
      He seems to have meant that he's using the percentage of the labor
      force that is employed in industry. Otherwise, the summary
      statistics he reports could not be reproduced or reasonably
      approximated by way of Morrison et al. (1989). This industry
      percentage variable comes from Table 3.14 in Morrison et al.
      (1989) and is likewise a midway point between 1960 and 1970.

      The literacy variables have suffices communicating where I
      obtained them. The Cross-National Time Series Database has a
      variable effectively communicating this information that I was
      using first in trying to recreate these data. These data come from
      1965 in that data set. Jackman and Johnson et al. are assuredly
      using Morrison's almanac. That information is in Table 4.11 of
      Morrison et al. (1989), though it's possible the estimates
      contained therein are slightly different than what was reported in
      the first edition. I cannot know for sure.

      Ethiopia is conspicuously missing in the party dominance variable.
      That's by design, and apparently its omission warranted ample
      discussion both by Jackman (1978) and Johnson et al. (1984).
      Johnson et al. (1984, fns. 4,5) argue it's a curious choice that
      can situationally influence the results that Jackman reports, but
      there are also lots of other choices made by Jackman (1978) that
      can influence these results.

      I am 99.9% sure the turnout variable is Table 5.9 in Morrison et
      al. (1989). Jackman (1978) says this is from *before* independence
      but I'm confident he meant it was the turnout at the independence
      referendum.

      .. rubric:: References
         :name: references

      Jackman, Robert W. 1978. "The Predictability of Coups d'etat: A
      Model with African Data." *American Political Science Review*
      72(4): 1262-75.

      Jackman, Robert W., Rosemary H. T. O'Kane, Thomas H. Johnson, Pat
      McGowan, and Robert O. Slater. 1986. "Explaining African Coups
      d'Etat." *American Political Science Review* 80(1): 225-49.

      Johnson, Thomas H., Robert O. Slater, and Pat McGowan. 1984.
      "Explaining African Military Coups d'Etat, 1960-1982." *American
      Political Science Review* 78(3): 622-40.

      Morrison, Donald George, Robert Cameron Mitchell, and John Naber
      Paden. 1989. *Black Africa: A Comparative Handbook* (2nd ed.). New
      York, NY: The Free Press.
