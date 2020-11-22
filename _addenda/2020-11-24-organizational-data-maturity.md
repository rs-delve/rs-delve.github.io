---
title: Organisational Data maturity
date: 2020-11-24 00:00:00 Z
layout: addendum
authors:
- given: Neil D.
  family: Lawrence
  institute: 
  url: "/people/neil-lawrence.html"
- given: Jessica
  family: Montgomery
  institute: 
  url: "/people/jessica-montgomery.html"
- given: Ulrich 
  family: Paquet
  institute: 
  url: "/people/ulrich-paquet.html"
ref: TD1
report: DATA
abstract: 
---

### Table of Contents

* [The Interface with Science](#the-interface-with-science)
* [Case study: Met Office Informatics Lab COVID-19 Pangeo Environment](#case-study-met-office-informatics-lab-covid-19-pangeo-environment)
* [Data Maturity Assessments](#data-maturity-assessments)

* [Characterising Data Maturity](#characterising-data-maturity)
    1. [Reactive](#reactive)
	2. [Repeatable](#repeatable)
	3. [Managed and Integrated](#managed-and-integrated)
	4. [Optimized](#optimized)
	5. [Transparent](#transparent)
* [Footnotes and References](#footnotes-and-references)


One challenge that the DELVE group experienced was understanding how
much resource was necessary to bring a particular data set up to the
sufficient level of data readiness for use. This resource depends a
great deal on what the data is, what its provenance is and who is
managing it. Organizational Data Maturity is about the third of these
three factors: who is managing the data.

Advances in machine learning over the last 5-10 years have generated
interest across sectors in the potential of advanced data analytics to
enhance productivity and improve decision-making within organisations.
Many companies aspire to be data driven in their decision making. But
even within these organizations, the accessibility and availability of
data may be limited. Similar challenges apply to a range of
organizations, including government departments, the health service,
local authorities and even academic fields.[^78]

In support of these aspirations, a variety of approaches to assessing
data maturity have emerged in recent years. These seek to help
organisations understand how their current data management practices
help - or hinder - the use of data in decision-making, and the
interventions that can contribute to more effective deployment of
organisational data resources.[^79] Such interventions include technical
measures (for example, adhering to data quality standards),
organisational processes (for example, to share data across teams), or
cultural change (for example, around how an organisation values or
invests in managing its data).

## The Interface with Science

This report discusses the actions needed to create data resources that
can be readily deployed in data-enabled policy analysis. The cultural
factors and operational processes that help create datasets that are
ready for such deployment also contribute to an organisation’s data
maturity and its ability to generate inter-organisational business
insights through use of data, and vice versa - data readiness and data
maturity are interlinked. One consequence of organizational data
maturity is therefore the potential to contribute evidence to scientific
analysis that can contribute to policymaking. Such analysis requires
resources at the “Band A” level of data readiness[^80], and happens
through data as an Application Programming Interface (API).[^81]

Different types of API have been developed to facilitate the use of data
to tackle COVID-19. These have varied from simply updating and
republishing publically accessible CSV files, to adding documentation
and code, to that data processing functionality being shared between
projects that use the data data, to controlling access in dedicated
cloud compute environments. As one specific interface with the
scientific community, the case study box below examines the Met Office
Informatics Lab’s API.

## Case study: Met Office Informatics Lab COVID-19 Pangeo Environment

*There is still uncertainty about the role of weather as a direct factor
in COVID-19 transmission rates, or as an indirect factor via the ways it
affects people’s behaviour. As a result, there is a thin line between
hypotheses becoming policy.*[^82] *To share weather data for
understanding the interplay between COVID-19 and environmental factors,
the Met Office instantiated a cloud API for research collaboration.*

The Met Office has world-leading weather forecasts, and as an
organization ingests millions of data observations from around the world
every day. To be useful for COVID-19 research, it was published as part
of an API that also contained ancillary information that allowed weather
data to be joined with other data sources. Such information included
so-called shape files of different geographic regions, which were
helpful to align atmospheric data to the granularity of COVID-19
reporting.

To implement the API, the Met Office Informatics Lab made hourly and
daily global gridded weather data, including air temperature,
precipitation, shortwave radiation (sunshine) and humidity
available[^83] through Microsoft Azure Blob Storage. Specific
aggregations of this data for administrative regions in the UK, Italy
and USA were included. The data interface with the broader scientific
community was through a custom[^84] Pangeo[^85] environment, which
included custom tools in Python and R, along with access to a Jupyter
Lab Integrated Development Environment from which the data could be
queried.

Data and compute access to the Pangeo environment was by request,
followed by authentication through a data scientist’s Github account. It
meant that researchers never had to copy terabytes of data to their own
machines, but run processing scripts “where the data lived”. As one
example, the DELVE Global COVID-19 Dataset[^86] includes
population-weighted weather data for every day for every country where
COVID-19 statistics are reported by the ECDC[^87].

## 

## Data Maturity Assessments

Whether “Band A” data is public, or in a controlled environment like the
case study above, or completely private within an organization, it is
the result of healthy data management. Different organizations have
different levels of data maturity, reflecting their capability in
implementing such management systems. Even within organizations,
maturity will differ between different teams and groups.

In order for data readiness to improve, it is important to assess what a
particular organization’s level is, and the action needed to improve
current practices. The table below suggests a loose framework through
which organizations could gauge their data maturity, consider how their
ways of working contribute to the ‘readiness’ of their data resources,
and better connect their aspirations for data sharing to the action
required to enable this.

To reflect the fact that a number of specific skill-sets, as well as
cultural approaches to data are required, we suggest the term *data
maturity* to reflect the ability of organizations, teams and individuals
to efficiently process data. We have created a provisional data maturity
model with five levels of increasing maturity *(i) reactive, (ii)
repeatable, (iii) managed/integrated, (iv) optimized,* and *(v)
transparent*. In the table below we summarize these different levels of
Data Maturity as five levels. Although many similar models exist[^88],
the intent of these levels is to be a starting point that should be
adapted according to the specific context that it is applied in.

|                              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Maturity Level               | Data Sharing                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| **1** Reactive               | Data sharing is not possible or ad-hoc at best.                                                                                                                                                                                                                                                                                                                                                                                                                |
| **2** Repeatable             | Some limited data service provision is possible and expected, in particular between neighboring teams. Some limited data provision to distinct teams may also be possible                                                                                                                                                                                                                                                                                      |
| **3** Managed and Integrated | Data is available through published APIs; corrections to requested data are monitored and API service quality is discussed within the team. Data security protocols are partially automated ensuring electronic access for the data is possible.                                                                                                                                                                                                               |
| **4** Optimized              | Teams provide reliable data services to other teams. The security and privacy implications of data sharing are automatically handled through privacy and security aware ecosystems.                                                                                                                                                                                                                                                                            |
| **5** Transparent            | Internal organizational data is available to external organizations with appropriate privacy and security policies. Decision making across the organisation is data-enabled, with transparent metrics that could be audited through organisational data logs. If appropriate governance frameworks are agreed, data dependent services (including AI systems) could be rapidly and securely redeployed on company data in the service of national emergencies. |

For data quality to improve, we must first empower organizations to
assess the levels of data maturity across their teams and departments.
Below we provide a set of indicators that can be used for assessing Data
Maturity. It is inspired by the “Joel test”[^89] for software
development.[^90]

## Characterising Data Maturity

In this section we consider how organisations can assess their data
maturity, by reviewing the ways in which best practice in data
management and use is embedded in teams, departments, and business
processes. These indicators are loosely themed according to the maturity
level above. In practice, these characteristics would be reviewed in
aggregate to give a holistic picture of data management across an
organisation.[^91]

### 1 Reactive

*Data sharing is not possible or ad-hoc at best.*

1.  It is difficult to identify relevant data sets and their owners.

<!-- -->

1.  It is possible to access data, but this may take significant time,
    energy and personal connections.

2.  Data is most commonly shared via ad hoc means, like attaching it to
    an email.

3.  The quality of data available means that it is often incorrect or
    incomplete.

### 2 Repeatable

*Some limited data service provision is possible and expected, in
particular between neighboring teams. Some limited data provision to
distinct teams may also be possible.*

1.  Data analysis and documentation is of sufficient quality to enable
    its replication one year later.

2.  There are standards for documentation that ensure that data is
    usable across teams.

3.  The time and effort involved in data preparation are commonly
    understood.

4.  Data is used to inform decision-making, though not always routinely.

### 3 Managed and Integrated

*Data is available through published APIs; corrections to requested data
are monitored and API service quality is discussed within the team. Data
security protocols are partially automated ensuring electronic access
for the data is possible.*

1.  Within the organisation, teams publish and share data as a supported
    output.

2.  Documentation is of sufficient quality to enable teams across the
    organisation that were not involved in its collection to use it
    directly.

3.  Procedures for data access are documented for other teams, and there
    is a way to obtain secure access to data.

### 4 Optimized

*Teams provide reliable data services to other teams. The security and
privacy implications of data sharing are automatically handled through
privacy and security aware ecosystems.*

1.  Within teams, data quality is constantly monitored, for instance
    through a dashboard. Errors could be flagged for correction.

2.  There are well-established processes to allow easy sharing of
    high-quality data across teams and track how the same datasets are
    used by multiple teams across the organisation.

3.  Data API access is streamlined by an approval process for joining
    digital security groups.

### 5 Transparent

*Internal organizational data is available to external organizations
with appropriate privacy and security policies. Decision making across
the organisation is data-enabled, with transparent metrics that could be
audited through organisational data logs. If appropriate governance
frameworks are agreed, data dependent services (including AI systems)
could be rapidly and securely redeployed on company data in the service
of national emergencies.*

1.  Data from APIs are combined in a transparent way to enable
    decision-making, which could be fully automated or through the
    organization’s management.

2.  Data generated by teams within the organisation can be used by
    people outside of the organization.

### Footnotes and References

[^78]: We will refer to these entities as *organizations* in our text
    below. To reflect the hierarchical structures of these
    organizations, we will also refer to *departments* and *teams* as
    smaller sub-units of the wider organization.

[^79]: See, for example: [<span
    class="underline">https://datamaturity.esd.org.uk</span>](https://datamaturity.esd.org.uk)
    ; [<span
    class="underline">https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/</span>](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
    ; [<span
    class="underline">https://www.cio.com/article/3077871/the-four-stages-of-the-data-maturity-model.html</span>](https://www.cio.com/article/3077871/the-four-stages-of-the-data-maturity-model.html)
    ; [<span
    class="underline">https://www.oreilly.com/content/10-signs-of-data-science-maturity/</span>](https://www.oreilly.com/content/10-signs-of-data-science-maturity/)

[^80]: Data Readiness Levels, by Neil D. Lawrence (2017)

    [<span
    class="underline">https://arxiv.org/abs/1705.02245</span>](https://arxiv.org/abs/1705.02245)

[^81]: An API is an interface that defines the mode of interaction
    between different software intermediaries. If an API to data is made
    available, it means that the data can be accessed programmatically,
    i.e. by the software directly, without the need for direct human
    intervention.

[^82]: Misconceptions about weather and seasonality must not misguide
    COVID-19 response, by Colin J. Carlson et al, in Nature
    Communications 11:4312 (2020)

    [<span
    class="underline">https://doi.org/10.1038/s41467-020-18150-z</span>](https://doi.org/10.1038/s41467-020-18150-z)

[^83]: Met Office and partners offer data and compute platform for
    COVID-19 researchers

    [<span
    class="underline">https://medium.com/informatics-lab/met-office-and-partners-offer-data-and-compute-platform-for-covid-19-researchers-83848ac55f5f</span>](https://medium.com/informatics-lab/met-office-and-partners-offer-data-and-compute-platform-for-covid-19-researchers-83848ac55f5f),
    accessed 23 October 2020

[^84]: Met Office Informatics Lab: Our new Pangeo architecture

    [<span
    class="underline">https://medium.com/informatics-lab/our-new-pangeo-architecture-bfc1b2b23658</span>](https://medium.com/informatics-lab/our-new-pangeo-architecture-bfc1b2b23658),
    accessed 11 November 2020

[^85]: A community platform for Big Data geoscience

    [<span
    class="underline">https://pangeo.io/</span>](https://pangeo.io/)

[^86]: DELVE Global COVID-19 Dataset

    [<span
    class="underline">https://rs-delve.github.io/data\_software/global-dataset.html</span>](https://rs-delve.github.io/data_software/global-dataset.html)

[^87]: European Centre for Disease Prevention and Control: COVID-19
    pandemic

    [<span
    class="underline">https://www.ecdc.europa.eu/en/covid-19-pandemic</span>](https://www.ecdc.europa.eu/en/covid-19-pandemic)

[^88]: The idea of Data Maturity is by no means unique, and many others
    exist: there is the Dell Data Maturity Model ([<span
    class="underline">https://www.cio.com/article/3077871/the-four-stages-of-the-data-maturity-model.html</span>](https://www.cio.com/article/3077871/the-four-stages-of-the-data-maturity-model.html))
    as well as many Big Data Maturity Models. Classic models like the
    Capability Maturity Model examine software processes.

[^89]: Developed to assess the quality of work produced by software
    teams, the Joel Test is Joel Spolsky’s series of 12 simple yes or no
    questions that can be used to identify areas for improvement in
    programming teams.

    [<span
    class="underline">https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/</span>](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)

[^90]: This work also builds on previous engagement between the authors
    and others working in this area, including Daniel Marcu (2013).
    Machine Translation Maturity Models. Unpublished notes.

[^91]: To achieve this, each indicator could be assessed on a Likert
    scale.
