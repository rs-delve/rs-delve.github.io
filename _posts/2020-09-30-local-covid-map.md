---
title: Mapping and Nowcasting the Covid-19 Epidemic in British Local Authorities
date: 2020-09-30 00:00:00 Z
layout: post
yw-private: true
authors:
- given: Yee Whye
  family: Teh
  url: "/people/yee-whye-teh.html"
---

Yee Whye Teh, Avishkar Bhoopchand, Peter Diggle, Bryn Elesedy, Bobby He, Michael Hutchinson, Ulrich Paquet, Jonathan Read, Nenad Tomasev, Sheheryar Zaidi

As the UK pivots to a more localised strategy to manage the Covid-19 epidemic, 
it is important to understand localised rates of transmissions and incidences. 
This can be a component of an effective monitoring system and 
allows to more quickly identify hotspots 
where there are elevated levels of transmissions. 
It can also be a useful tool for the public to understand 
where infections are growing and to adopt appropriate behaviours.


We have developed a [system](https://rs-delve.github.io/Rmap) 
to estimate localised rates of transmissions, 
and to use these to do daily short-term forecasts of 
the size of the Covid-19 epidemic in local authorities. 
<!--break-->

Our system is based on a Bayesian statistical model 
for estimating the effective reproduction number $R_t$
in individual local authorities.
Estimating $R_t$ reliably across small areas with low case counts is difficult 
because of the low information content in the data, interactions across areas, 
as well as because of sensitivities to random local events. 
Further description of our method can be found [here](https://rs-delve.github.io/Rmap/data-methods.html).

We used publicly available data on positive tests 
from the combined Pillars 1 and 2 of UK's testing strategy.
Unfortunately, due to the unclear relationship between the number of positive tests
and true incidence rates, predictions of the system cannot be directly
interpreted as predictions of true transmission and incidence rates. 
However, we believe it can be used, along with other indicators based potentially on other data sources, to build a fuller and more timely picture of the state of the Covid-19 epidemic in each local authority as it unfolds.
Further details of the limitations of the system can be found
[here](http://rs-delve.github.io/Rmap/limitations.html).

Our system complements a number of other publicly available systems for tracking the 
Covid-19 epidemic in British local authorities:
* [epiforecasts.io](https://epiforecasts.io/covid/posts/national/united-kingdom/) applies the [EpiEstim](https://cran.r-project.org/web/packages/EpiEstim/index.html) R package, based on [Cori et al](https://academic.oup.com/aje/article/178/9/1505/89262),  to national and regional positive test count data, after suitable preprocessing.
* [BDI Local Covid Tracker](https://bdi-pathogens.shinyapps.io/LocalCovidTracker/) also applies [EpiEstim](https://cran.r-project.org/web/packages/EpiEstim/index.html) to preprocessed positive test count data, at both upper-tier and lower-tier local authority levels.
* [Imperial College covid19local](https://imperialcollegelondon.github.io/covid19local/) applies the Bayesian semimechanistic model of [Flaxman et al 2020](https://www.nature.com/articles/s41586-020-2405-7) as implemented in the [epidemia](https://imperialcollegelondon.github.io/epidemia/index.html) R package to individual local authorities, using death and positive test count data.
* [PHE/Cambridge Nowcasting](https://www.mrc-bsu.cam.ac.uk/tackling-covid-19/nowcasting-and-forecasting-of-covid-19/) uses Bayesian inference on an age-specific transmission model described in [Birrell et al](https://www.medrxiv.org/content/10.1101/2020.08.24.20180737v1.full.pdf) applied to regional death count data. This was updated weekly until August 6, 2020.

There are a number of important next steps for the project:
* Evaluating the accuracy of predictions of the system using historical data, potentially using seroprevalence data.
* Extending the model to include delay distributions between infection to symptom onset and to test specimen being taken.
* Extending the model to different type of observations, including deaths, hospitalisations, seroprevalence and symptom onsets.

### Map


<style>
.map-container {
    position: relative;
    width: 1050px;
    height: 675px;
    border: 5px solid black;
    margin-left: -20%;
    text-align: center;
    overflow: visible;
}
.map-frame{
    position: relative;
    align: center;
    /*
    This height value is a bit of a hack!
    It is there to let the search box overflow into the post
    Not sure what the correct thing to do in this case is
    */
    height: 1000px;
    width: 1100px;
    overflow: visible;
    border: 0;
}
</style>

<p>
<div class="map-container">
<iframe class="map-frame" src="https://rs-delve.github.io/Rmap/map" allow="fullscreen">
</iframe>
</div>
</p>

<!-- This text is below the map. -->
Definitions for terms in the map:
*   **Case** is an infected individual who has tested positive on the given date,
under either Pillar 1 or Pillar 2 of the UK's testing strategy.
*   **Rt** denotes the reproduction number: how many secondary cases a single primary case will result in on average.
**Rt** greater than 1 implies the size of the epidemic is increasing exponentially, and less than 1 means it is shrinking.
*   **Cases (Per 100k)** denotes either the historical weekly reported number of cases under Pillars 1+2, normalised by population size,
the predicted number in the future weeks.
*   **P(Rt>1)** denotes the probability that Rt is larger than 1 given the observed case counts.


