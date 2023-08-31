.. container::

   ========== ===============
   UStaxWords R Documentation
   ========== ===============

   .. rubric:: Number of Words in US Tax Law
      :name: UStaxWords

   .. rubric:: Description
      :name: description

   Thousands of words in US tax law for 1995 to 2015 in 10 year
   intervals. This includes income taxes and all taxes in the code
   itself (written by congress) and regulations (written by government
   administrators). For 2015 only ``EntireTaxCodeAndRegs`` is given; for
   other years, this number is broken down by income tax vs. other taxes
   and code vs. regulations.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(UStaxWords)

   .. rubric:: Format
      :name: format

   A ``data.frame`` containing:

   year
      tax year

   IncomeTaxCode
      number of words in thousands in the US income tax code

   otherTaxCode
      number of words in thousands in US tax code other than income tax

   EntireTaxCode
      number of words in thousands in the US tax code

   IncomeTaxRegulations
      number of words in thousands in US income tax regulations

   otherTaxRegulations
      number of words in thousands in US tax regulations other than
      income tax

   IncomeTaxCodeAndRegs
      number of words in thousands in both the code and regulations for
      the US income tax

   otherTaxCodeAndRegs
      number of words in thousands in both code and regulations for US
      taxes apart from income taxes.

   EntireTaxCodeAndRegs
      number of words in thousands in US tax code and regulations

   .. rubric:: Details
      :name: details

   Thousands of words in the US tax code and federal tax regulations,
   1955-2015. This is based on data from the Tax Foundation
   (``taxfoundation.org``), adjusted to eliminate an obvious
   questionable observation in ``otherTaxRegulations`` for 1965. The
   numbers of words in ``otherTaxRegulations`` was not reported directly
   by the Tax Foundation but is easily computed as the difference
   between their Income and Entire tax numbers. This series shows the
   numbers falling by 48 percent between 1965 and 1975 and by 1.5
   percent between 1995 and 2005. These are the only declines seen in
   these numbers and seem inconsistent with the common concern
   (expressed e.g., in Moody, Warcholik and Hodge, 2005) about the
   difficulties of simplifying any governmental program, because vested
   interest appear to defend almost anything. Lessig (2011) notes that
   virtually all provisions of US law that favor certain segments of
   society are set to expire after a modest number of years. These
   sunset provisions provide recurring opportunities for incumbent
   politicians to extort campaign contributions from those same segments
   to ensure the continuation of the favorable treatment.

   The decline of 48 percent in ``otherTaxRegulations`` seems more
   curious for two additional reasons: First, it was preceded by a
   tripling of ``otherTaxRegulations`` between 1955 and 1965. Second, it
   was NOT accompanied by any comparable behavior of ``otherTaxCode``.
   Instead, the latter grew each decade by between 17 and 53 percent,
   similar to but slower than the growth in ``IncomeTaxCode`` and
   ``IncomeTaxRegulations``.

   Accordingly, ``otherTaxRegulations`` for 1965 is replaced by the
   average of the numbers for 1955 and 1975, and
   ``EntireTaxRegulations`` for 1965 is comparably adjusted. This
   replaces (1322, 2960) for those two variables for 1965 with (565,
   2203). In addition, ``otherTaxCodeAndRegs`` and
   ``EntireTaxCodeAndRegulations`` are also changed from (1626, 3507) to
   (870, 2751).

   Independent of whether this adjustment is correct or not, it's clear
   that there have been roughly 3 words of regulations for each word in
   the tax code. Most of these are income tax regulations, which have
   recently contained 4.5 words for every word in code. The income tax
   code currently includes roughly 50 percent more words than other tax
   code.

   .. rubric:: Author(s)
      :name: authors

   Spencer Graves

   .. rubric:: Source
      :name: source

   `Tax Foundation: Number of Words in Internal Revenue Code and Federal
   Tax Regulations,
   1955-2005 <https://taxfoundation.org/number-words-internal-revenue-code-and-federal-tax-regulations-1955-2005>`__
   Scott Greenberg, `"Federal Tax Laws and Regulations are Now Over 10
   Million Words Long", October 08,
   2015 <https://taxfoundation.org/federal-tax-laws-and-regulations-are-now-over-10-million-words-long/>`__

   .. rubric:: References
      :name: references

   J. Scott Moody, Wendy P. Warcholik, and Scott A. Hodge (2005) "The
   Rising Cost of Complying with the Federal Income Tax", The Tax
   Foundation Special Report No. 138.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(UStaxWords)
      plot(EntireTaxCodeAndRegs/1000 ~ year, UStaxWords, 
        type='b',
        ylab='Millions of words in US tax code & regs')

      # Write to a file for Wikimedia Commons
      ## Not run: 
      svg('UStaxWords.svg')

      ## End(Not run)
      matplot(UStaxWords$year, UStaxWords[c(2:3, 5:6)]/1000,
          type='b', bty='n', ylab='',
          ylim=c(0, max(UStaxWords$EntireTaxCodeAndRegs)/1000),
          las=1, xlab="", cex.axis=2)
      lines(EntireTaxCodeAndRegs/1000~year, UStaxWords, lwd=2)
      ## Not run: 
      dev.off()

      ## End(Not run)
      # lines 1:4 = IncomeTaxCode, otherTaxCode, 
      #   IncomeTaxRegulations,
      #   and otherTaxRegulations, respectively

      ##
      ## Plotting the original numbers 
      ##      without the adjustment
      ##
      UStax. <- UStaxWords
      UStax.[2,c(6:7, 9:10)] <- c(1322, 2960, 1626, 3507)
      matplot(UStax.$year, UStax.[c(2:3, 5:6)]/1000,
            type='b', bty='n', ylab='',
            ylim=c(0, max(
                UStax.$EntireTaxCodeAndRegs)/1000),
            las=1, xlab="", cex.axis=2)
      lines(EntireTaxCodeAndRegs/1000~year, UStax., 
              lwd=2)
      # Note especially the anomalous behaviour of 
      # line 4 = otherTaxRegulations.  As noted with
      # "details" above, otherTaxRegulations could have
      # tripled between 1955 and 1965, then fallen by 48
      # percent between 1965 and 1975.  However, that
      # does not seem credible, especially since there
      # was no corresponding behavior in otherTaxCode.

      ##
      ## linear trend 
      ##
      (newWdsPerYr <- lm(EntireTaxCodeAndRegs~year, 
          UStaxWords))
      plot(UStaxWords$year, resid(newWdsPerYr))
      # Roughly 150,000 additional words added each year
      # since 1955.  
      # No indication of nonlinearity.  
      # adusted R-squared exceeds 99 percent.  

      ##
      ## linear trend with increased slope
      ## during the Reagan years
      ##
      # linear spline with knots at
      # 1981 and 1989 
      Reagan <- pmax(0, pmin(
        (UStaxWords$year-1981)/8, 1))
      plot(Reagan~year, UStaxWords, type='b')
      UStaxWords$Reagan <- Reagan

      ReaganMdl <- 
        EntireTaxCodeAndRegs~year + Reagan
      fitReagan <- lm(ReaganMdl, UStaxWords )
      summary(fitReagan)
