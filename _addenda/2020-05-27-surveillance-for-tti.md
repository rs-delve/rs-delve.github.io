---
title: 'TTI-TD2: Surveillance for Test, Trace, Isolate'	
date: 2020-05-27 00:00:00 Z	
layout: addendum	
authors:	
- given: Sylvia	
  family: Richardson	
  institute: 	
  url: "/people/sylvia-richardson.html"	
- given: Peter	
  family: Diggle	
  institute: 	
  url: "/people/peter-diggle.html"
abstract: 'Any TTI strategy that can only involve a fraction of the at-risk population	
  must begin with a surveillance study to establish how incidence, and therefore potential	
  disease transmission, varies between sub-populations and between individuals within	
  sub-populations. This section describes how a surveillance study might be designed	
  and analysed, taking account of patterns of heterogeneity of exposure and risk across	
  the population, and potentially drawing information from multiple data-sources.	
  Implementation of a surveillance system of this kind would require: 1) the design	
  and regular (potentially weekly) implementation of a country-wide stratified quasi-random	
  sampling scheme of antigenic diagnostic tests, to act as a “gold-standard”; 2) diagnostic	
  testing of sampled individuals; 3) real-time analysis of the resulting data to produce	
  stratum-specific predictive probability maps of incidence that can inform selection	
  of individuals for TTI follow-up and adaptation of future sampling so as to maximise	
  overall utility.  Coordination with multiple sources of non-randomised self-reported	
  symptom data on probable/possible case incidence would also be desirable, as this	
  would enable gold-standard and self-reported sources of data to be analysed together	
  to make best possible use of all relevant data-sources, thus creating an agile real-time	
  surveillance system that can be exploited to increase the efficiency of the TTI	
  process.'	
ref: TD2	
report: TTI
---

*What sort of epidemic surveillance is needed, and how it can aid TTI
strategies?*

## Introduction

In the absence of unlimited resources, the necessary first step in a TTI
strategy for COVID-19 is a system of *real-time surveillance* to provide
an understanding of the evolving pattern of population-wide variation in
disease incidence. Such a system can then inform a prioritisation of
particular individuals or groups for TTI follow-up, by helping to
identify individuals or groups of individuals who are most likely to
transmit infection.

This task is particularly challenging when, as appears to be the case
for COVID-19, a substantial (but unknown) proportion of cases are
asymptomatic or pre-symptomatic but may nevertheless be capable of
infecting others.

The remainder of this technical document (TD2) sets out a set of
principles that could guide the design of a COVID-19 surveillance system
and the analysis of the data that it provides. It then lists a range of
potential sources of data and describes strategies for study-design and
data-analysis, before discussing the subsequent progression from
surveillance to TTI.

## Principles of surveillance

In considering the design of a surveillance system, it will be important
to take into account the following. These principles apply equally to
surveillance systems aimed at monitoring the spatio-temporal evolution
of cumulative prevalence determined, for example, by antibody tests, or
of current incidence, determined by antigen tests.

  1. *Set specific objective(s)* For example, the objective may be to
  predict the pattern of variation in the current incidence of
  infectives for a COVID-19 across the UK population (sometimes called
  now-casting - using sampled data to understand the current state of
  a process that cannot be completely observed.

  2. *Agree a minimal data-set* In any resource-limited setting a
  balance needs to be struck between how much information is requested
  from each sampled individual and from how many compliant individuals
  data can be obtained. Individual-level information is useful for
  understanding individual risk-factors, but only information that is
  available country-wide is useful for predicting geographical
  variation in prevalence. For COVID-19, potentially useful covariates
  available from the most recent national census include LSOA-level
  deprivation scores and demographic summaries.

  3. *Use a consistent definition of outcome*. This requires either a
  single diagnostic to be used for case-ascertainment or (see below) a
  way of calibrating across different diagnostics.

  4. *Identify major sources of heterogeneity in risk.* In some
  sub-populations, notably care homes and hospitals, the patterns of
  exposure and risk are so different from those of the population at
  large that they are better treated as separate populations, each
  with their own surveillance system. Similarly, health workers need
  separate consideration. For the remainder of the population, it will
  be advantageous, both operationally and for statistical efficiency,
  to stratify by known sources of heterogeneity, for example by
  population density, deprivation and geographical region. Known
  individual level sources of heterogeneity, for which adjustment
  should be made at the analysis stage, include age, sex and
  ethnicity. Any residual variation in incidence can be considered as
  a proxy for all unknown, spatially or temporally structured sources
  of heterogeneity, allowance for which should also be made at the
  analysis stage.

  5. *Sample as-if-at-random.* Only a randomised sampling framework
  can guarantee unbiased predictions of incidence. A stratified random
  sample of the UK population, with strata defined by the major
  sub-population risk-groups and adjustment at analysis stage for
  individual-level risk-factors may, however, be an unattainable
  ideal.  Whilst stratification does not eliminate the potential for
  bias in a non-randomised sampling scheme, it should reduce it. It
  may therefore be possible to construct a context-specific sampling
  instrument that can be regarded as “as-if-random’’ after
  stratification and adjustment.

  6. *Choose spatial and temporal scales for analysis and for
  reporting.* In principle, incidence is likely to vary continuously
  in time and space. For reporting purposes, it may be helpful to
  aggregate results to a temporal (weekly?) and spatial (regional?)
  scale on which operational decisions can be made. To avoid
  aggregation bias, surveillance data should be recorded and analysed
  at the finest substantively relevant temporal and spatial
  resolutions. In the current context, the finest relevant temporal
  scale could be daily or weekly, depending on the diagnostic used;
  for example, self-reported symptoms may be susceptible to
  weekday/weekend artefacts. The finest relevant spatial scale is
  likely to be a Lower Layer Super Output Area (LSOA); note that
  several of the known sources of heterogeneity (ethnicity,
  deprivation) can vary substantially between adjacent
  LSOA’s. Resolution to full post-code is technically possible but
  arguably too fine as, even in lock-down, a substantial proportion of
  the population will regularly move beyond their home post-code.

  7. *Measure and report degree of uncertainty in predictions.* A
  conventional measure of statistical precision is the standard error
  of an estimate. In disease surveillance, arguably, a more relevant
  measure is a predictive probability, i.e. the probability, given the
  observed data, that the underlying process is in a specified state;
  for example, that the incidence of COVID-19 amongst 70-year-old
  white males at a particular location is at least 10%.

  8. *Take account of major public health interventions.* In any statistical model, unexplained variation in the outcome is ascribed to stochastic variation, and the bigger the stochastic variation the less precise are the associated model-based predictions. Interventions that are likely to have a major effect on incidence should be included in the statistical model as change-points.

  None of the above principles are specific to COVID-19, nor the
  statistical methods needed to analyse to resulting data. *We suggest
  that the COVID-19 epidemic could be the stimulus for creation of a
  national, real-time spatial surveillance system for emerging
  infectious diseases that would be adaptable to any future public
  health concerns*

## Data sources

We make a distinction, admittedly not always sharp, amongst three broad
types of data.

a. *Designed studies* will include measurement of a recommended
diagnostic test of current COVID-19 infection with good sensitivity and
specificity[^1], such as an RT-PCR swab-based test for COVID-19
infection. Two examples of such studies are the Imperial College REACT
study[^2] and the Oxford-ONS surveillance study[^3].

b. *Routinely recorded health outcome data* potentially useful for
surveillance can come from a variety of sources, including: the zoe
app[^4], calls to NHS Direct; indicators monitored by PHE as part of its
network of surveillance systems, such as FluSurvey, GP In Hours (GPIH)
syndromic surveillance system, GP Out of Hours (GPOH) syndromic
surveillance system, Emergency Department Syndromic Surveillance System
(EDSSS)). Symptom-based self-reported indicators typically have lower
sensitivity and specificity than diagnostic tests and may suffer from
biases.

c. *Other types of data*, such as internet searches for specific
symptoms, spikes in consumption of non-prescription medicines or
sickness absences could potentially also be brought into the
surveillance system to expand its detection of unusual events.

Data sources of types (b) and, more so, of type (c) should be used
cautiously. At a minimum, they require careful calibration against
high-quality data of type (a). Also, adding complexity to a predictive
model risks losing, rather than gaining, precision if the signal content
of the added data source is weak, and only weakly associated with the
primary outcome of interest.

## Design

Here, we assume that a method of locating an as-if-random sample of
individuals has been agreed, the choice of diagnostic has been made and
its performance characteristics are well understood. The remaining
design considerations are: the selection of strata based on combinations
of sub-population characteristics; the frequency of sampling; the
individual-level characteristics to be recorded on sampled individuals;
the sample size(s) to be taken in each stratum. With respect to the last
of these, we need either to set a performance target and derive a set of
sample sizes that will achieve this, or to set an achievable limit on
total sample size, optimise their disposition across strata and evaluate
the performance of the resulting surveillance system. Understanding the
limitations of a range of affordable designs is more useful than setting
a single performance target that is unattainable. Examples of suitable
measures of performance might be: the maximum width of a 95% predictive
interval for LSOA-level incidence within any stratum; or the ROC curve
for predicting exceedance of a specified LSOA-level incidence.

As with any sample size calculation, an initial sampling design can only
be constructed by assuming a specific statistical model for the
underlying spatio-temporal incidence surface. However, data accruing in
the early operation of the system can be used to assess the
goodness-of-fit of modelling assumptions, estimate model parameters, and
to adapt the sampling design accordingly. This will be particularly the
case if resource constraints severely limit the proportion of probable
or confirmed cases that can be followed up.

## Analysis

In a surveillance system of the kind described here, taking account of
spatial and/or temporal correlation in the underlying incidence process
can materially improve predictive precision, sometimes by an order of
magnitude[^5]. Combining a relatively small sample of data from a
designed study based on a recommended diagnostic test with a much larger
sample of routinely collected data, typically based on self-reports, can
also be a cost-effective way of making the best use of all available
data.[^6] [^7]

A suitable class of statistical models for problems of this kind is a
generalized linear mixed model[^8] with a latent spatio-temporal
Gaussian process included in the linear predictor[^9]. The appendix
gives an example of a model of this kind for the joint analysis of
designed and routinely collected data.

The end product of the surveillance system is the availability of a set
of stratum-specific space-time surfaces, adjustable for individual-level
risk-factors, that quantify the variation in disease incidence, with
associated measures of uncertainty.

## Link between surveillance and the TTI process

In incidence surveillance system can provide a useful first stage in a
TTI system.  TTI will be most cost-effective when the individuals at the
start of a TTI chain are those most likely to be infective. Also, if
surveillance and TTI use the same diagnostic, TTI-generated data can be
fed back into the surveillance system to increases its local precision.
Here we discuss two of the decision points in the TTI process where
knowledge of the spatio-temporal incidence of disease that is provided
by a surveillance system plays a role in informing the chosen course of
action: the decision to test or not an individual who has either
reported symptoms or contacted the primary health care system; and the
decision to trace or not the contacts of this individual and when to
initiate this.

Known routes of transmission of COVID-19 include transmission from
asymptomatic, pre-symptomatic and symptomatic individuals through
exhaled droplets, and environmental transmission through contaminated
surfaces. Here we focus only on person-to-person transmission.

The surveillance system described thus far estimates the probability
that an individual within any stratum is test positive (or is symptom
positive if the data source is related to symptoms). We also need an
understanding of the probability that an individual will have
transmitted infection given that they are test positive, which will
likely depend on the individual’s stratum membership and on their
measured personal attributes.

In a recent paper, Ferretti et al (2020)[^10] quantify the relative
contribution of different routes of transmission to the reproductive
number, and estimate that the main transmission routes are from
pre-symptomatic and symptomatic individuals, which altogether account
for a large fraction of transmissions. This paper also shows that
pre-symptomatic transmission is nearly sufficient for driving the
epidemic, accounting for a proportion 0.9 of the total contribution to
an R0 equal to 2.[^11] Both the incubation time and the generation time
between source and transmission are estimated to be around 5 days. This
shows: (i) that the primary focus of TTI is on “capturing” both
pre-symptomatic and symptomatic individuals; (ii) that there is a time
constraint on the effectiveness of the TTI process, which might require
contact tracing to begin before confirmation through a diagnostic test.

Symptomatic individuals can be best captured rapidly through a range of
symptom-related indicators (see details below), while pre-symptomatic
and asymptomatic individuals might be captured only through the contact
tracing process. Such individuals might also be captured through the
designed surveillance system, but unless the designed testing strategy
enrolled a substantial fraction of the whole population, focussing
contact tracing on these would miss a large fraction of the infectives.

As is the case for surveillance, the definition of a minimum dataset
needs care. However, as TTI will involve smaller numbers of individuals
who are also more likely to be cases, the argument for recording
individual characteristics is stronger. These could include age, sex,
ethnicity and occupation. It is important to note that this approach
considers only the general population, excluding special categories such
as care-home residents, hospital in-patients and health workers, and
assumes that resource constraints dictate a prioritisation of who should
be tested as the first stage of TTI.

## The testing strategy and the prioritisation of whom to test

Pragmatically, we want to maximise *the capture probability*, i.e. the
probability for an individual of being found positive in the RT-PCR swab
test *if selected to be tested:* Prob(RT-PCR+ \| selected for testing).
The steps to maximize the capture probability could be as follows:

-   Derive and agree with PHE and PH experts a list of symptom
    indicators, which encompass the most common symptoms of COVID-19 and
    are adapted to each of the routine data resources (111 calls, GPIH,
    GPOH, Zoe appl and NHSx app). Specific symptoms to COVID-19 such as
    loss of taste or smell are particularly useful as they will help to
    discriminate from influenza like symptoms;

-   For each of these sources, run a pilot study on a suitably
    stratified sample of people for whom both the set of symptoms
    indicators and the PCR test are measured.

-   Calibrate a predictive model of Prob (RT-PCR+ \| indicators) using
    the pilot data for each data source. For example, Menni et al
    (2020)[^12] used the symptoms reported in the zoe app to derive a
    symptom prediction model using stepwise logistic regression. This
    gave a sensitivity of 0.65 \[0.62; 0.67\], a specificity of 0.78
    \[0.76; 0.80\] and a ROC-AUC of 0.77 \[0.72; 0.82\]. The strongest
    predictor was loss of smell and taste. The overall Positive
    Predictive value was estimated at 0.69 \[0.66; 0.71\]. The sample
    size where both symptoms and PCR test were measured in the UK was
    15,638, with 6,452 PCR+ tests. The authors did not find notable
    differences by age and sex.

-   Improve the positive predictive value of the symptom-based
    predictive model by adding external information from: (i)
    surveillance studies that predict the stratum-specific incidence
    surfaces of COVID-19; (ii) primary care EHR records of
    co-morbidities and other risk factors of sampled individuals.

-   Derive the final predictive probability of infection for each person
    that enters the system through any one of the data sources.
    Individuals with high predictive probability of infection (e.g. a
    person having specific symptoms in an area where current incidence
    is on the rise) are more likely to be COVID-19 positive than an
    individual with low predictive probability.

-   Embed the predictive probability into the first step of the TTI
    decision process so as to optimise allocation of testing resources
    to individuals most likely to be infected. The efficacy of different
    rules could be investigated through simulations.

## The decision and timing of contact tracing

A predicted stratum-specific incidence surface provides a basis for
deciding where and when to prioritise contact-tracing follow-up, with
the ultimate goal of prioritising for follow-up those individuals most
likely to have transmitted infection. This can be combined with the
predictive probability of infection for the source individual to decide
whether to immediately start tracing their contacts or to await
confirmation through a positive test result. If the predictive
probability of the source individual is high, it might be recommended
that contact tracing is initiated immediately, since about 50% of
transmission is in the pre-symptomatic period. Waiting for the result of
the test would mean that the transmission chain is less likely to be
broken, but this needs to be balanced against the opportunity-cost of
contact-tracing individuals who subsequently test negative. Of course,
if and when test results become available more quickly, this could be
revisited. Timeliness of testing and manual contact tracing is also a
key factor, as shown in the simulation scenarios considered in section
3. See also Ferretti et al (2020)[^13], who discuss a
quasi-instantaneous contact tracing scheme based on an app.

## Discussion

Real time surveillance of incidence through surveys and TTI are two
complementary components of public health action in the face of an
emerging threat from an infectious disease. We have discussed how a
designed surveillance study can be combined with self-reported
symptom-based data to create an agile surveillance system that can track
the spatial evolution of the disease in real time. If several
self-reported symptom data sources are offered concurrently to the
population, like zoe app and NHSx app, *we recommend that they all
contain an agreed standardised minimum set of information on the
symptoms recorded*, very much along the lines of the core outcome set
which, by international agreement, is recorded in all clinical trials
(COMET). This will allow information from diverse technologies to be
meaningfully synthesised.

To be able to calibrate the link between designed diagnostic testing and
self-reported symptom data, it is necessary to have records of both
types of data on a subset of individuals. To prevent selection biases,
it would be highly desirable that at least part of this subset is
randomly chosen, rather than purely observational.

Steps in the TTI process can be informed by an agile, real-time
surveillance system so as to prioritise testing for the individuals most
likely to be infected, and to target the contact tracing accordingly.
The algorithm used for this prioritisation can be refined and improved
as the epidemic progresses, and more specific clinical characteristics
of infected individuals are discovered. Finally, the TTI process can
also feedback into the design of specific localised surveillance studies
around hotspots.

Appendix 1 focuses on real time surveillance through a combination of
designed testing studies and routine capture of self-reported symptoms
or calls to the health system. As this framework develops, considering
additional sources of data to detect unusual activity or behaviour might
be beneficial to increase the agility of the surveillance system.

## Appendix

An example of a surveillance
system combining designed and routinely collected data to reconstruct
the underlying space-time incidence data can be found in [this docment](/pdfs/2020-05-27-underlying-space-time-incidence-of-a-disease.pdf).

[^1]: The sensitivity of a test is the proportion of true positives, the
    specificity is the proportion of true negatives. For RT-PCR based
    swab tests which are self-administered, a diagnostic sensitivity of
    0.65 and specificity of 100% is used in the Oxford REACT study.

[^2]: Laurance, J. and Alford, J. (2020) Home testing for coronavirus to
    track levels of infection in the community, Imperial College London
    News, 30 April 2020, available at: [<span
    class="underline">https://www.imperial.ac.uk/news/197217/home-testing-coronavirus-track-levels-infection/</span>](https://www.imperial.ac.uk/news/197217/home-testing-coronavirus-track-levels-infection/)

[^3]: NIHR Oxford Biomedical Research Centre (2020) Large-scale COVID-19
    infection and antibody test study launched, 23 April 2019. Available
    at:
    https://oxfordbrc.nihr.ac.uk/large-scale-covid-19-infection-and-antibody-test-study-launched/

[^4]: See: [<span
    class="underline">https://covid.joinzoe.com/</span>](https://covid.joinzoe.com/)

[^5]: Fronterre, C., Amoah, B., Giorgi, E., Stanton, M.C. and Diggle,
    P.J. (2020). Design and analysis of elimination surveys for
    neglected tropical diseases. *Journal of Infectious Diseases* (doi:
    [<span
    class="underline">10.1093/infdis/jiz554</span>](https://science.sciencemag.org/content/368/6491/eabb6936))

[^6]: Giorgi, E., Sesay, S.S., Terlouw, D.J. and Diggle, P.J. (2015).
    Combining data from multiple spatially referenced prevalence surveys
    using generalized linear geostatistical models. *Journal of the
    Royal Statistical Society* A 178, 445-464 (doi: 10.1111/rssa.12069)

[^7]: Amoah, B., Giorgi, E. and Diggle, P.J. (2020). A geostatistical
    framework for combining spatially referenced disease prevalence data
    from multiple diagnostics. *Biometrics*, **76**, 158-170(doi:
    [10.1111/biom.13142](https://doi.org/10.1111/biom.13142))

[^8]: Breslow, N.E. and Clayton, D.G. (1993). Approximate inference in
    generalized linear mixed models. Journal of the American Statistical
    Association 88, 9-25.(doi: [<span class="underline">
    10.2307/2290687</span>](https://www.jstor.org/stable/2290687?seq=1#metadata_info_tab_contents))

[^9]: Diggle, P.J., Rowlingson, B. and Su, T-L. (2005). Point process
    methodology for on-line spatio-temporal disease surveillance.
    *Environmetrics*, **16**, 423-434. (doi:
    [10.1002/env.712](https://doi.org/10.1002/env.712))

[^10]: Ferretti (n10)

[^11]: Ferretti (n10), Figure 2

[^12]: Menni C et al (2020). Real-time tracking of self-reported
    symptoms to predict potential COVID-19. *Nature Medicine* (doi:
    [<span
    class="underline">10.1038/s41591-020-0916-2</span>](https://www.nature.com/articles/s41591-020-0916-2))

[^13]: Ferretti (n10)
