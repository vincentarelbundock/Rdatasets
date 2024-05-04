.. container::

   .. container::

      ===================== ===============
      presidentialElections R Documentation
      ===================== ===============

      .. rubric:: elections for U.S. President, 1932-2016, by state
         :name: elections-for-u.s.-president-1932-2016-by-state

      .. rubric:: Description
         :name: description

      Democratic share of the presidential vote, 1932-2016, in each
      state and the District of Columbia.

      .. rubric:: Usage
         :name: usage

      ::

         data(presidentialElections)

      .. rubric:: Format
         :name: format

      ``state``
         character, name of state

      ``demVote``
         numeric, percent of the vote for president won by the
         Democratic candidate

      ``year``
         numeric, integer

      ``south``
         logical, ``TRUE`` if state is one of the 11 states of the
         former Confederacy

      .. rubric:: Note
         :name: note

      1,047 observations, unbalanced panel data in long format. Hawaii
      and Alaska contribute data from 1960 onwards the District of
      Columbia contributes data from 1964 onward; Alabama has missing
      data for 1948 and 1964.

      .. rubric:: Source
         :name: source

      David Leip's Atlas of U.S. Presidential Elections
      https://uselectionatlas.org

      .. rubric:: Examples
         :name: examples

      ::

         data(presidentialElections)
         if(require(lattice)) {
             lattice::xyplot(demVote ~ year | state,
                panel=lattice::panel.lines,
                ylab="Democratic Vote for President (percent)",
                xlab="Year",
                data=presidentialElections,
                scales=list(y=list(cex=.6),x=list(cex=.35)),
                strip=strip.custom(par.strip.text=list(cex=.6)))
         }

         ## Obama vs Kerry, except DC
         y08 <- presidentialElections$year==2008
         y04 <- presidentialElections$year==2004
         tmpData <- merge(y=presidentialElections[y08,],
                      x=presidentialElections[y04,],
                          by="state")
         tmpData <- tmpData[tmpData$state!="DC",]
         xlim <- range(tmpData$demVote.x,tmpData$demVote.y)
         col <- rep("black",dim(tmpData)[1])
         col[tmpData$south.x] <- "red"

         plot(demVote.y ~ demVote.x,
              xlab="Kerry Vote Share, 2004 (percent)",
              ylab="Obama Vote Share, 2008 (percent)",
              xlim=xlim,
              ylim=xlim,
              type="n",
              las=1,
              data=tmpData)
         abline(0,1,lwd=2,col=gray(.65))
         ols <- lm(demVote.y ~ demVote.x,
                   data=tmpData)
         abline(ols,lwd=2)   

         text(tmpData$demVote.x,
              tmpData$demVote.y,
              tmpData$state,
              col=col,
              cex=.65)
         legend(x="topleft",
                bty="n",
                lwd=c(2,2),
                col=c(gray(.65),"black"),
                legend=c("No Change from 2004","Regression"))
         legend(x="bottomright",
                bty="n",
                text.col=c("red","black"),
                legend=c("South","Non-South"))
