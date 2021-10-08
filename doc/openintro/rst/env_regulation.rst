.. container::

   ============== ===============
   env_regulation R Documentation
   ============== ===============

   .. rubric:: American Adults on Regulation and Renewable Energy
      :name: american-adults-on-regulation-and-renewable-energy

   .. rubric:: Description
      :name: description

   Pew Research conducted a poll to find whether American adults support
   regulation or believe the private market will move the American
   economy towards renewable energy.

   .. rubric:: Usage
      :name: usage

   ::

      env_regulation

   .. rubric:: Format
      :name: format

   A data frame with 705 observations on the following variable.

   statement
      There were three possible outcomes for each person:
      ``"Regulations necessary"``,
      ``"Private marketplace will ensure"``, and ``"Don't know"``.

   .. rubric:: Details
      :name: details

   The exact statements being selected were: (1) Government regulations
   are necessary to encourage businesses and consumers to rely more on
   renewable energy sources. (2) The private marketplace will ensure
   that businesses and consumers rely more on renewable energy sources,
   even without government regulations.

   The actual sample size was 1012. However, the original data were not
   from a simple random sample; after accounting for the design, the
   equivalent sample size was about 705, which was what was used for the
   data set here to keep things simpler for intro stat analyses.

   .. rubric:: Source
      :name: source

   https://www.pewresearch.org/science/2017/05/16/public-divides-over-environmental-regulation-and-energy-policy/

   .. rubric:: Examples
      :name: examples

   ::


      table(env_regulation)
