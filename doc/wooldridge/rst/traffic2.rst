.. container::

   .. container::

      ======== ===============
      traffic2 R Documentation
      ======== ===============

      .. rubric:: traffic2
         :name: traffic2

      .. rubric:: Description
         :name: description

      Wooldridge Source: P.S. McCarthy (1994), “Relaxed Speed Limits and
      Highway Safety: New Evidence from California,” Economics Letters
      46, 173-179. Professor McCarthy kindly provided the data. Data
      loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('traffic2')

      .. rubric:: Format
         :name: format

      A data.frame with 108 observations on 48 variables:

      -  **year:** 1981 to 1989

      -  **totacc:** statewide total accidents

      -  **fatacc:** statewide fatal accidents

      -  **injacc:** statewide injury accidents

      -  **pdoacc:** property damage only accidents

      -  **ntotacc:** noninterstate total acc.

      -  **nfatacc:** noninterstate fatal acc.

      -  **ninjacc:** noninterstate injur acc.

      -  **npdoacc:** noninterstate property acc.

      -  **rtotacc:** tot. acc. on rural 65 mph roads

      -  **rfatacc:** fat. acc. on rural 65 mph roads

      -  **rinjacc:** inj. acc. on rural 65 mph roads

      -  **rpdoacc:** prp. acc. on rural 65 mph roads

      -  **ushigh:** acc. on U.S. highways

      -  **cntyrds:** acc. on county roads

      -  **strtes:** acc. on state routes

      -  **t:** time trend

      -  **tsq:** t^2

      -  **unem:** state unemployment rate

      -  **spdlaw:** =1 after 65 mph in effect

      -  **beltlaw:** =1 after seatbelt law

      -  **wkends:** # weekends in month

      -  **feb:** =1 if month is Feb.

      -  **mar:**

      -  **apr:**

      -  **may:**

      -  **jun:**

      -  **jul:**

      -  **aug:**

      -  **sep:**

      -  **oct:**

      -  **nov:**

      -  **dec:**

      -  **ltotacc:** log(totacc)

      -  **lfatacc:** log(fatacc)

      -  **prcfat:** 100*(fatacc/totacc)

      -  **prcrfat:** 100*(rfatacc/rtotacc)

      -  **lrtotacc:** log(rtotacc)

      -  **lrfatacc:** log(rfatacc)

      -  **lntotacc:** log(ntotacc)

      -  **lnfatacc:** log(nfatacc)

      -  **prcnfat:** 100*(nfatacc/ntotacc)

      -  **lushigh:** log(ushigh)

      -  **lcntyrds:** log(cntyrds)

      -  **lstrtes:** log(strtes)

      -  **spdt:** spdlaw*t

      -  **beltt:** beltlaw*t

      -  **prcfat_1:** prcfat[_n-1]

      .. rubric:: Notes
         :name: notes

      Many states have changed maximum speed limits and imposed seat
      belt laws over the past 25 years. Data similar to those in
      TRAFFIC2.RAW should be fairly easy to obtain for a particular
      state. One should combine this information with changes in a
      state’s blood alcohol limit and the passage of per se and open
      container laws.

      Used in Text: pages 378-379, 409, 443, 674, 695-696

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(traffic2)
