---
title: Spatial Variations in COVID-19 Transmission Rates in UK
date: 2020-09-25 00:00:00 Z
layout: post
authors:
- given: Yee Whye
  family: Teh
  institute: University of Oxford
  url: "/people/yee-whye-teh.html"
- given: Bobby
  family: He
  institute: University of Oxford
  url: "/people/bobby-he.html"
---

Yee Whye Teh, Avishkar Bhoopchand, Peter Diggle, Bryn Elesedy, Bobby He, Michael Hutchinson, Ulrich Paquet, Jonathan Read, Nenad Tomasev, Sheheryar Zaidi, on behalf of Royal Society DELVE Initiative

## *WORK IN PROGRESS. NOT TO BE DISTRIBUTED.*

### Aim
Local interventions are playing an increasingly important role in the UK's strategy to contain the Covid-19 pandemic. As such, it is crucial for national and local policy makers as well as health protection teams that precise, accurate and timely predictions of Covid-19 incidences and transmission rates are available at a fine local level. 

Obtaining such predictions has proven a challenging problem, not least due to the prevalence of asymptomatic Covid-19 transmissions, as well as logistical issues involved in the testing system. In addition, low case counts at a local level further confound the inference for Covid-19 transmission rates, adding unwelcome uncertainty. 

To address these concerns, we have developed a [system](https://rs-delve.github.io/Rmap) that leans on shared statistical strength across geographic location and time, in order to estimate localised rates of transmissions 
and predict short-term forecasts of incidence rates in local authorities. To alleviate the aforementioned problems, our model introduces spatiotemporal dependencies between reproduction numbers across neighbouring localities, in order to smooth estimates of $R_t$ across localities and time. Our system is based on a Bayesian statistical model, and we have incorporated several computational considerations to improve the efficiency of our posterior simulation. As a result, we are able to provide daily updates of $R_t$ predictions and incidence rates across local authorities in Great Britain, which will be displayed at our publicly available [website](https://rs-delve.github.io/Rmap). Further information about our method can be found [here](https://rs-delve.github.io/Rmap/data-methods.html).

We hope that our model and website will be of interest to researchers, policy makers and the public alike, to help identify upcoming local outbreaks and to aid in the containment of Covid-19.


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

Below is an interactive snapshot of our [website](https://rs-delve.github.io/Rmap), displaying in map form the predicted $R_t$, incidence rates and probability that $R_t>1$ across local authorities in Great Britain.
<p>
<div class="map-container">
<iframe class="map-frame" src="https://rs-delve.github.io/Rmap/map" allow="fullscreen">
</iframe>
</div>
</p>
This text is after the map


