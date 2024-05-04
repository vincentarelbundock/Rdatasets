.. container::

   .. container::

      ======= ===============
      rhDNase R Documentation
      ======= ===============

      .. rubric:: rhDNASE data set
         :name: rhdnase-data-set

      .. rubric:: Description
         :name: description

      Results of a randomized trial of rhDNase for the treatment of
      cystic fibrosis.

      .. rubric:: Usage
         :name: usage

      ::

         rhDNase
         data(rhDNase, package="survival")

      .. rubric:: Format
         :name: format

      A data frame with 767 observations on the following 8 variables.

      ``id``
         subject id

      ``inst``
         enrolling institution

      ``trt``
         treatment arm: 0=placebo, 1= rhDNase

      ``entry.dt``
         date of entry into the study

      ``end.dt``
         date of last follow-up

      ``fev``
         forced expriatory volume at enrollment, a measure of lung
         capacity

      ``ivstart``
         days from enrollment to the start of IV antibiotics

      ``ivstop``
         days from enrollment to the cessation of IV antibiotics

      .. rubric:: Details
         :name: details

      In patients with cystic fibrosis, extracellular DNA is released by
      leukocytes that accumulate in the airways in response to chronic
      bacterial infection. This excess DNA thickens the mucus, which
      then cannot be cleared from the lung by the cilia. The
      accumulation leads to exacerbations of respiratory symptoms and
      progressive deterioration of lung function. At the time of this
      study more than 90% of cystic fibrosis patients eventually died of
      lung disease.

      Deoxyribonuclease I (DNase I) is a human enzyme normally present
      in the mucus of human lungs that digests extracellular DNA.
      Genentech, Inc. cloned a highly purified recombinant DNase I
      (rhDNase or Pulmozyme) which when delivered to the lungs in an
      aerosolized form cuts extracellular DNA, reducing the
      viscoelasticity of airway secretions and improving clearance. In
      1992 the company conducted a randomized double-blind trial
      comparing rhDNase to placebo. Patients were then monitored for
      pulmonary exacerbations, along with measures of lung volume and
      flow. The primary endpoint was the time until first pulmonary
      exacerbation; however, data on all exacerbations were collected
      for 169 days.

      The definition of an exacerbation was an infection that required
      the use of intravenous (IV) antibiotics. Subjects had 0–5 such
      episodes during the trial, those with more than one have multiple
      rows in the data set, those with none have NA for the IV start and
      end times. A few subjects were infected at the time of enrollment,
      subject 173 for instance has a first infection interval of -21 to
      7. We do not count this first infection as an "event", and the
      subject first enters the risk set at day 7. Subjects who have an
      event are not considered to be at risk for another event during
      the course of antibiotics, nor for an additional 6 days after they
      end. (If the symptoms reappear immediately after cessation then
      from a medical standpoint this would not be a new infection.)

      This data set reproduces the data in Therneau and Grambsch, it
      does not exactly reproduce those in Therneau and Hamilton due to
      data set updates.

      .. rubric:: References
         :name: references

      T. M. Therneau and P. M. Grambsch, Modeling Survival Data:
      Extending the Cox Model, Springer, 2000.

      T. M. Therneau and S.A. Hamilton, rhDNase as an example of
      recurrent event analysis, Statistics in Medicine, 16:2029-2047,
      1997.

      .. rubric:: Examples
         :name: examples

      ::

         # Build the start-stop data set for analysis, and
         #  replicate line 2 of table 8.13 in the book
         first <- subset(rhDNase, !duplicated(id)) #first row for each subject
         dnase <- tmerge(first, first, id=id, tstop=as.numeric(end.dt -entry.dt))

         # Subjects whose fu ended during the 6 day window are the reason for
         #  this next line
         temp.end <- with(rhDNase, pmin(ivstop+6, end.dt-entry.dt))
         dnase <- tmerge(dnase, rhDNase, id=id,
                                infect=event(ivstart),
                                end=  event(temp.end))
         # toss out the non-at-risk intervals, and extra variables
         #  3 subjects had an event on their last day of fu, infect=1 and end=1
         dnase <- subset(dnase, (infect==1 | end==0), c(id:trt, fev:infect))
         agfit <- coxph(Surv(tstart, tstop, infect) ~ trt + fev, cluster=id,
                          data=dnase)
