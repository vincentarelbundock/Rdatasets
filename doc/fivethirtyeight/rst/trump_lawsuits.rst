.. container::

   .. container::

      ============== ===============
      trump_lawsuits R Documentation
      ============== ===============

      .. rubric:: Trump Lawsuits
         :name: trump-lawsuits

      .. rubric:: Description
         :name: description

      This folder contains the data behind the stories: 'What Trump's
      Legal Battles Tell Us About Presidential Power'
      https://fivethirtyeight.com/features/what-trumps-legal-battles-tell-us-about-presidential-power/;
      'Why It Might Be Impossible To Overturn A Presidential Pardon'
      https://fivethirtyeight.com/features/why-it-might-be-impossible-to-overturn-a-presidential-pardon/;
      'Will The Supreme Court Fast-Track Cases Involving Trump?'
      https://fivethirtyeight.com/features/will-the-supreme-court-fast-track-cases-involving-trump/;
      'Why One of Trump’s Biggest Legal Threats Is New York’s Attorney
      General'
      https://fivethirtyeight.com/features/why-one-of-trumps-biggest-legal-threats-is-new-yorks-attorney-general/;
      'Should Judges Pay Attention To Trump’s Tweets?'
      https://fivethirtyeight.com/features/should-judges-pay-attention-to-trumps-tweets/;
      'Trump Is Losing The Legal Fight Against Sanctuary Cities, But It
      May Still Pay Off Politically'
      https://fivethirtyeight.com/features/trump-is-losing-the-legal-fight-against-sanctuary-cities-but-it-may-still-pay-off-politically/;
      'Will Trump’s Latest Lawsuits Keep Congress From Investigating
      Future Presidents?'
      https://fivethirtyeight.com/features/will-trumps-latest-lawsuits-keep-congress-from-investigating-future-presidents/;

      .. rubric:: Usage
         :name: usage

      .. code:: R

         trump_lawsuits

      .. rubric:: Format
         :name: format

      A dataset with 57 rows representing lawsuits and 16 variables

      docket_number
         Current docket number

      date_filed
         Date lawsuit was originally filed

      case_name
         Case name (current)

      plaintiff
         Names of plaintiffs (if more than five, "et al" for plaintiffs
         who are not in case name)

      defendant
         Names of defendants (if more than five, "et al" for defendants
         who are not in case name)

      current_location
         Court the lawsuit is currently in front of

      previous_location
         Other courts the case has appeared before

      jurisdiction
         Where the case is being heard \| 1 = Federal; 2 = State

      judge
         Names of the judges the case is currently before

      nature
         PACER code for nature of lawsuit (Not relevant for criminal
         cases)
         https://pacer.uscourts.gov/help/faqs/what-nature-suit-code

      trump_category
         Whether the case is related to action before Trump was
         president, his personal conduct as president, or a policy
         action as president \| 1 = Case directed at pre-presidency
         action; 2 = Case directed at personal action of Trump as
         president; 3 = Case directed at policy action of Trump as
         president

      capacity
         The capacity in which Trump is implicated \| 1 = Case directed
         at Trump personally; 2 = Case directed at action of Trump
         administration; 3 = Trump as plaintiff; 4 = Trump
         administration as plaintiff; 5 = Case directed at Trump
         associate; 6 = Other

      type
         Criminal vs. civil \| 1 = Criminal; 2 = Civil

      issue
         Key topic area raised in the case (i.e. emoluments, First
         Amendment, DACA, etc). Categories created based on key policy
         topic area or legal issue. Calls are subjective and based on
         reporting and may change.

      docket_orig
         Original docket number, if case has been appealed or changed
         jurisdiction

      status
         Whether the case, or the part of the case connected to Trump,
         is ongoing. \| 1 = Case is ongoing; 2 = Case or part of case
         connected to Trump is closed

      .. rubric:: Source
         :name: source

      Approval Polls
