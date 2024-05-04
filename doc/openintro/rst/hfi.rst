.. container::

   .. container::

      === ===============
      hfi R Documentation
      === ===============

      .. rubric:: Human Freedom Index
         :name: human-freedom-index

      .. rubric:: Description
         :name: description

      The Human Freedom Index is a report that attempts to summarize the
      idea of "freedom" through a bunch of different variables for many
      countries around the globe. It serves as a rough objective measure
      for the relationships between the different types of freedom -
      whether it's political, religious, economical or personal freedom
      - and other social and economic circumstances. The Human Freedom
      Index is an annually co-published report by the Cato Institute,
      the Fraser Institute, and the Liberales Institut at the Friedrich
      Naumann Foundation for Freedom.

      .. rubric:: Usage
         :name: usage

      ::

         hfi

      .. rubric:: Format
         :name: format

      A data frame with 1458 observations on the following 123
      variables.

      year
         Year

      ISO_code
         ISO code of country

      countries
         Name of country

      region
         Region where country is located

      pf_rol_procedural
         Procedural justice

      pf_rol_civil
         Civil justice

      pf_rol_criminal
         Criminal justice

      pf_rol
         Rule of law

      pf_ss_homicide
         Homicide

      pf_ss_disappearances_disap
         Disappearances

      pf_ss_disappearances_violent
         Violent conflicts

      pf_ss_disappearances_organized
         Violent conflicts

      pf_ss_disappearances_fatalities
         Terrorism fatalities

      pf_ss_disappearances_injuries
         Terrorism injuries

      pf_ss_disappearances
         Disappearances, conflict, and terrorism

      pf_ss_women_fgm
         Female genital mutilation

      pf_ss_women_missing
         Missing women

      pf_ss_women_inheritance_widows
         Inheritance rights for widows

      pf_ss_women_inheritance_daughters
         Inheritance rights for daughters

      pf_ss_women_inheritance
         Inheritance

      pf_ss_women
         Women's security

      pf_ss
         Security and safety

      pf_movement_domestic
         Freedom of domestic movement

      pf_movement_foreign
         Freedom of foreign movement

      pf_movement_women
         Women's movement

      pf_movement
         Freedom of movement

      pf_religion_estop_establish
         Freedom to establish religious organizations

      pf_religion_estop_operate
         Freedom to operate religious organizations

      pf_religion_estop
         Freedom to establish and operate religious organizations

      pf_religion_harassment
         Harassment and physical hostilities

      pf_religion_restrictions
         Legal and regulatory restrictions

      pf_religion
         Religious freedom

      pf_association_association
         Freedom of association

      pf_association_assembly
         Freedom of assembly

      pf_association_political_establish
         Freedom to establish political parties

      pf_association_political_operate
         Freedom to operate political parties

      pf_association_political
         Freedom to establish and operate political parties

      pf_association_prof_establish
         Freedom to establish professional organizations

      pf_association_prof_operate
         Freedom to operate professional organizations

      pf_association_prof
         Freedom to establish and operate professional organizations

      pf_association_sport_establish
         Freedom to establish educational, sporting, and cultural
         organizations

      pf_association_sport_operate
         Freedom to operate educational, sporting, and cultural
         organizations

      pf_association_sport
         Freedom to establish and operate educational, sporting, and
         cultural organizations

      pf_association
         Freedom to associate and assemble with peaceful individuals or
         organizations

      pf_expression_killed
         Press killed

      pf_expression_jailed
         Press jailed

      pf_expression_influence
         Laws and regulations that influence media content

      pf_expression_control
         Political pressures and controls on media content

      pf_expression_cable
         Access to cable/satellite

      pf_expression_newspapers
         Access to foreign newspapers

      pf_expression_internet
         State control over internet access

      pf_expression
         Freedom of expression

      pf_identity_legal
         Legal gender

      pf_identity_parental_marriage
         Parental rights in marriage

      pf_identity_parental_divorce
         Parental rights after divorce

      pf_identity_parental
         Parental rights

      pf_identity_sex_male
         Male-to-male relationships

      pf_identity_sex_female
         Female-to-female relationships

      pf_identity_sex
         Same-sex relationships

      pf_identity_divorce
         Divor

      pf_identity
         Identity and relationships

      pf_score
         Personal Freedom (score)

      pf_rank
         Personal Freedom (rank)

      ef_government_consumption
         Government consumption

      ef_government_transfers
         Transfers and subsidies

      ef_government_enterprises
         Government enterprises and investments

      ef_government_tax_income
         Top marginal income tax rate - Top marginal income tax rates

      ef_government_tax_payroll
         Top marginal income tax rate - Top marginal income and payroll
         tax rate

      ef_government_tax
         Top marginal tax rate

      ef_government
         Size of government

      ef_legal_judicial
         Judicial independence

      ef_legal_courts
         Impartial courts

      ef_legal_protection
         Protection of property rights

      ef_legal_military
         Military interference in rule of law and politics

      ef_legal_integrity
         Integrity of the legal system

      ef_legal_enforcement
         Legal enforcement of contracts

      ef_legal_restrictions
         Regulatory restrictions on the sale of real property

      ef_legal_police
         Reliability of police

      ef_legal_crime
         Business costs of crime

      ef_legal_gender
         Gender adjustment

      ef_legal
         Legal system and property rights

      ef_money_growth
         Money growth

      ef_money_sd
         Standard deviation of inflation

      ef_money_inflation
         Inflation - most recent year

      ef_money_currency
         Freedom to own foreign currency bank account

      ef_money
         Sound money

      ef_trade_tariffs_revenue
         Tariffs - Revenue from trade taxes (percentage of trade sector)

      ef_trade_tariffs_mean
         Tariffs - Mean tariff rate

      ef_trade_tariffs_sd
         Tariffs - Standard deviation of tariffs rates

      ef_trade_tariffs
         Tariffs

      ef_trade_regulatory_nontariff
         Regulatory trade barriers - Nontariff trade barriers

      ef_trade_regulatory_compliance
         Regulatory trade barriers - Compliance costs of importing and
         exporting

      ef_trade_regulatory
         Regulatory trade barriers

      ef_trade_black
         Black-market exchange rates

      ef_trade_movement_foreign
         Controls of the movement of capital and people - Foreign
         ownership/investment restrictions

      ef_trade_movement_capital
         Controls of the movement of capital and people - Capital
         controls

      ef_trade_movement_visit
         Controls of the movement of capital and people - Freedom of
         foreigners to visit

      ef_trade_movement
         Controls of the movement of capital and people

      ef_trade
         Freedom to trade internationally

      ef_regulation_credit_ownership
         Credit market regulations - Ownership of banks

      ef_regulation_credit_private
         Credit market regulations - Private sector credit

      ef_regulation_credit_interest
         Credit market regulations - Interest rate controls/negative
         real interest rates

      ef_regulation_credit
         Credit market regulation

      ef_regulation_labor_minwage
         Labor market regulations - Hiring regulations and minimum wage

      ef_regulation_labor_firing
         Labor market regulations - Hiring and firing regulations

      ef_regulation_labor_bargain
         Labor market regulations - Centralized collective bargaining

      ef_regulation_labor_hours
         Labor market regulations - Hours regulations

      ef_regulation_labor_dismissal
         Labor market regulations - Dismissal regulations

      ef_regulation_labor_conscription
         Labor market regulations - Conscription

      ef_regulation_labor
         Labor market regulation

      ef_regulation_business_adm
         Business regulations - Administrative requirements

      ef_regulation_business_bureaucracy
         Business regulations - Bureaucracy costs

      ef_regulation_business_start
         Business regulations - Starting a business

      ef_regulation_business_bribes
         Business regulations - Extra payments/bribes/favoritism

      ef_regulation_business_licensing
         Business regulations - Licensing restrictions

      ef_regulation_business_compliance
         Business regulations - Cost of tax compliance

      ef_regulation_business
         Business regulation

      ef_regulation
         Economic freedom regulation score

      ef_score
         Economic freedom score

      ef_rank
         Economic freedom rank

      hf_score
         Human freedom score

      hf_rank
         Human freedom rank

      hf_quartile
         Human freedom quartile

      .. rubric:: Details
         :name: details

      This dataset contains information from Human Freedom Index reports
      from 2008-2016.

      .. rubric:: Source
         :name: source

      Ian Vasquez and Tanja Porcnik, The Human Freedom Index 2018: A
      Global Measurement of Personal, Civil, and Economic Freedom
      (Washington: Cato Institute, Fraser Institute, and the Friedrich
      Naumann Foundation for Freedom, 2018).
      https://www.cato.org/sites/cato.org/files/human-freedom-index-files/human-freedom-index-2016.pdf.
      https://www.kaggle.com/gsutters/the-human-freedom-index.
