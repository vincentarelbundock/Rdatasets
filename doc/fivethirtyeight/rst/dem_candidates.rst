.. container::

   .. container::

      ============== ===============
      dem_candidates R Documentation
      ============== ===============

      .. rubric:: Democratic Primary Candidates 2018
         :name: democratic-primary-candidates-2018

      .. rubric:: Description
         :name: description

      The raw data behind the stories: "We Researched Hundreds Of Races.
      Here’s Who Democrats Are Nominating"
      https://fivethirtyeight.com/features/democrats-primaries-candidates-demographics/
      and "How’s The Progressive Wing Doing In Democratic Primaries So
      Far?"
      https://fivethirtyeight.com/features/the-establishment-is-beating-the-progressive-wing-in-democratic-primaries-so-far/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         dem_candidates

      .. rubric:: Format
         :name: format

      A data frame with 811 rows representing Democratic candidates, and
      32 variables:

      candidate
         All candidates who received votes in 2018’s Democratic primary
         elections for U.S. Senate, U.S. House and governor in which no
         incumbent ran. Supplied by Ballotpedia.

      state
         The state in which the candidate ran. Supplied by Ballotpedia.

      body
         The body of government for which the candidate ran. Supplied by
         Ballotpedia.

      district_num
         If applicable, congressional district number for which the
         candidate ran. Supplied by Ballotpedia.

      office_type
         The office for which the candidate ran. Supplied by
         Ballotpedia.

      race_type
         Whether it was a “regular” or “special” election. Supplied by
         Ballotpedia.

      race_primary_election_date
         The date on which the primary was held. Supplied by
         Ballotpedia.

      primary_status
         Whether the candidate lost (“Lost”) the primary or won/advanced
         to a runoff (“Advanced”). Supplied by Ballotpedia.

      primary_runoff_status
         “None” if there was no runoff; “On the Ballot” if the candidate
         advanced to a runoff but it hasn’t been held yet; “Advanced” if
         the candidate won the runoff; “Lost” if the candidate lost the
         runoff. Supplied by Ballotpedia.

      general_status
         “On the Ballot” if the candidate won the primary or runoff and
         has advanced to November; otherwise, “None.” Supplied by
         Ballotpedia.

      partisan_lean
         The FiveThirtyEight partisan lean of the district or state in
         which the election was held. Partisan leans are calculated by
         finding the average difference between how a state or district
         voted in the past two presidential elections and how the
         country voted overall, with 2016 results weighted 75 percent
         and 2012 results weighted 25 percent.

      primary_percent
         The percentage of the vote received by the candidate in his or
         her primary. In states that hold runoff elections, we looked
         only at the first round (the regular primary). In states that
         hold all-party primaries (e.g., California), a candidate’s
         primary percentage is the percentage of the total Democratic
         vote they received. Unopposed candidates and candidates
         nominated by convention (not primary) are given a primary
         percentage of 100 but were excluded from our analysis involving
         vote share. Numbers come from official results posted by the
         secretary of state or local elections authority; if those were
         unavailable, we used unofficial election results from the New
         York Times.

      won_primary
         “Yes” if the candidate won his or her primary and has advanced
         to November; “No” if he or she lost.

      race
         “White” if we identified the candidate as non-Hispanic white;
         “Nonwhite” if we identified the candidate as Hispanic and/or
         any nonwhite race; blank if we could not identify the
         candidate’s race or ethnicity. To determine race and ethnicity,
         we checked each candidate’s website to see if he or she
         identified as a certain race. If not, we spent no more than two
         minutes searching online news reports for references to the
         candidate’s race.

      veteran
         If the candidate’s website says that he or she served in the
         armed forces, we put “Yes.” If the website is silent on the
         subject (or explicitly says he or she didn’t serve), we put
         “No.” If the field was left blank, no website was available.

      lgbtq
         If the candidate’s website says that he or she is LGBTQ
         (including indirect references like to a same-sex partner), we
         put “Yes.” If the website is silent on the subject (or
         explicitly says he or she is straight), we put “No.” If the
         field was left blank, no website was available.

      elected_official
         We used Ballotpedia, VoteSmart and news reports to research
         whether the candidate had ever held elected office before, at
         any level. We put “Yes” if the candidate has held elected
         office before and “No” if not.

      self_funder
         We used Federal Election Committee fundraising data (for
         federal candidates) and state campaign-finance data (for
         gubernatorial candidates) to look up how much each candidate
         had invested in his or her own campaign, through either
         donations or loans. We put “Yes” if the candidate donated or
         loaned a cumulative $400,000 or more to his or her own campaign
         before the primary and “No” for all other candidates.

      stem
         If the candidate identifies on his or her website that he or
         she has a background in the fields of science, technology,
         engineering or mathematics, we put “Yes.” If not, we put “No.”
         If the field was left blank, no website was available.

      obama_alum
         We put “Yes” if the candidate mentions working for the Obama
         administration or campaign on his or her website, or if the
         candidate shows up on this list of Obama administration members
         and campaign hands running for office. If not, we put “No.”

      party_support
         “Yes” if the candidate was placed on the DCCC’s Red to Blue
         list before the primary, was endorsed by the DSCC before the
         primary, or if the DSCC/DCCC aired pre-primary ads in support
         of the candidate. (Note: according to the DGA’s press
         secretary, the DGA does not get involved in primaries.) “No” if
         the candidate is running against someone for whom one of the
         above things is true, or if one of those groups specifically
         anti-endorsed or spent money to attack the candidate. If those
         groups simply did not weigh in on the race, we left the cell
         blank.

      emily_endorsed
         “Yes” if the candidate was endorsed by Emily’s List before the
         primary. “No” if the candidate is running against an
         Emily-endorsed candidate or if Emily’s List specifically
         anti-endorsed or spent money to attack the candidate. If
         Emily’s List simply did not weigh in on the race, we left the
         cell blank.

      guns_sense_candidate
         “Yes” if the candidate received the Gun Sense Candidate
         Distinction from Moms Demand Action/Everytown for Gun Safety
         before the primary, according to media reports or the
         candidate’s website. “No” if the candidate is running against
         an candidate with the distinction. If Moms Demand Action simply
         did not weigh in on the race, we left the cell blank.

      biden_endorsed
         “Yes” if the candidate was endorsed by Joe Biden before the
         primary. “No” if the candidate is running against a
         Biden-endorsed candidate or if Biden specifically anti-endorsed
         the candidate. If Biden simply did not weigh in on the race, we
         left the cell blank.

      warren_endorsed
         “Yes” if the candidate was endorsed by Elizabeth Warren before
         the primary. “No” if the candidate is running against a
         Warren-endorsed candidate or if Warren specifically
         anti-endorsed the candidate. If Warren simply did not weigh in
         on the race, we left the cell blank.

      sanders_endorsed
         “Yes” if the candidate was endorsed by Bernie Sanders before
         the primary. “No” if the candidate is running against a
         Sanders-endorsed candidate or if Sanders specifically
         anti-endorsed the candidate. If Sanders simply did not weigh in
         on the race, we left the cell blank.

      our_revolution_endorsed
         “Yes” if the candidate was endorsed by Our Revolution before
         the primary, according to the Our Revolution website. “No” if
         the candidate is running against an Our Revolution-endorsed
         candidate or if Our Revolution specifically anti-endorsed or
         spent money to attack the candidate. If Our Revolution simply
         did not weigh in on the race, we left the cell blank.

      justice_dems_endorsed
         “Yes” if the candidate was endorsed by Justice Democrats before
         the primary, according to the Justice Democrats website,
         candidate website or news reports. “No” if the candidate is
         running against a Justice Democrats-endorsed candidate or if
         Justice Democrats specifically anti-endorsed or spent money to
         attack the candidate. If Justice Democrats simply did not weigh
         in on the race, we left the cell blank.

      pccc_endorsed
         “Yes” if the candidate was endorsed by the Progressive Change
         Campaign Committee before the primary, according to the PCCC
         website, candidate website or news reports. “No” if the
         candidate is running against a PCCC-endorsed candidate or if
         the PCCC specifically anti-endorsed or spent money to attack
         the candidate. If the PCCC simply did not weigh in on the race,
         we left the cell blank.

      indivisible_endorsed
         “Yes” if the candidate was endorsed by Indivisible before the
         primary, according to the Indivisible website, candidate
         website or news reports. “No” if the candidate is running
         against an Indivisible-endorsed candidate or if Indivisible
         specifically anti-endorsed or spent money to attack the
         candidate. If Indivisible simply did not weigh in on the race,
         we left the cell blank.

      wfp_endorsed
         “Yes” if the candidate was endorsed by the Working Families
         Party before the primary, according to the WFP website,
         candidate website or news reports. “No” if the candidate is
         running against a WFP-endorsed candidate or if the WFP
         specifically anti-endorsed or spent money to attack the
         candidate. If the WFP simply did not weigh in on the race, we
         left the cell blank.

      vote_vets_endorsed
         “Yes” if the candidate was endorsed by VoteVets before the
         primary, according to the VoteVets website, candidate website
         or news reports. “No” if the candidate is running against a
         VoteVets-endorsed candidate or if VoteVets specifically
         anti-endorsed or spent money to attack the candidate. If
         VoteVets simply did not weigh in on the race, we left the cell
         blank.

      no_labels_support
         “Yes” if a No Labels-affiliated group (Citizens for a Strong
         America Inc., Forward Not Back, Govern or Go Home, United for
         Progress Inc. or United Together) spent money in support of the
         candidate in the primary. “No” if the candidate is running
         against an candidate supported by a No Labels-affiliated group
         or if a No Labels-affiliated group specifically anti-endorsed
         or spent money to attack the candidate. If No Labels simply did
         not weigh in on the race, we left the cell blank.

      .. rubric:: Note
         :name: note

      This data was also used in "We Looked At Hundreds Of Endorsements.
      Here’s Who Democrats Are Listening To" published on 2008-08-14
      https://fivethirtyeight.com/features/the-establishment-is-beating-the-progressive-wing-in-democratic-primaries-so-far/

      .. rubric:: Source
         :name: source

      Ballotpedia, New York Times, and candidate websites. See also
      https://github.com/fivethirtyeight/data/blob/master/primary-candidates-2018/README.md
