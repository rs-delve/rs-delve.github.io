---
title: Spatial Variations in COVID-19 Transmission Rates in UK
date: 2020-08-17 00:00:00 Z
layout: post
authors:
- given: Yee Whye
  family: Teh
  institute: University of Oxford
  url: "/people/yee-whye-teh.html"
---

Yee Whye Teh, Avishkar Bhoopchand, Peter Diggle, Bryn Elesedy, Bobby He, Michael Hutchinson, Ulrich Paquet, Jonathan Read, Nenad Tomasev, Sheheryar Zaidi, on behalf of Royal Society DELVE Initiative

## *WORK IN PROGRESS. NOT TO BE DISTRIBUTED.*

### Aim
As the UK pivots to a more localised strategy to manage the Covid-19 epidemic, it is important to understand localised rates of transmissions in individual local authorities. 
This can be an important component of an effective monitoring system and allows to more quickly identify hotspots where there are elevated levels of transmissions.

A standard measure of the rate of transmission is given by the effective reproduction number Rt.
However, estimating Rt reliably across small areas with low incidences is difficult because of the low information content in the data, as well as because of sensitivities to random local events.

### Methods

We aim to develop a Bayesian method to reliably estimate Rt across local authorities with appropriately quantified uncertainties. 

#### Data

We use publicly available Pillar 1+2 case count time series:
*   312 lower-tier local authorities (LTLA) in England, 
*   14 NHS Health Board level in Scotland, and  
*   22 Unitary local authorities in Wales

#### Model

At its core, our model uses a renewal equation formulation of epidemic dynamics within each local authority, building on the method of Cori et al (2013) (https://doi.org/10.1093/aje/kwt133). 
In addition,
*   We use a spatio-temporal Gaussian process to model correlations in effective reproduction numbers across neighbouring local authorities and across neighbouring points in time.
*   We use a cross-coupled metapopulation approach to model infections crossing local authority boundaries.


### Limitations

There are a number of limitations to our current approach, mostly due to limitations in the fidelity and detail of the publicly available data.
*   Testing capacity and regimes in the UK has changed over time. This is particularly salient in the difference between Pillar 1 and Pillar 2 tests, and in the widening application of Pillar 2 tests, initially in healthcare workers, then to key workers, and now to the wider community. 
*   Particularly, delays between infections and test results are unknown, different across Pillars 1 and 2, and across time.
*   NHS Test and Trace and outbreak investigations mean that testing is now more targeted, and, from the perspective of understanding rates of transmissions from case counts, can introduce biases.
*   Uncertainties in Rt in local authorities are high and sensitive to random local events.


### Map
<style>
.map-container {
  position: relative;
  width: 1500px;
  height: 1000px;
  margin-left: -50%;
  margin-right: -50%;
  text-align: center;
  border: 1px solid black;
}
.map-frame{
    position: relative;
    align: center;
    height: 100%;
    width: 100%;
    border: 1px dashed red;
}
</style>

This text is before the map
<div class="map-container">
    <iframe class="map-frame" src="{{ base.url | prepend: site.url }}/assets/rmap/map/index.html" allow="fullscreen">
    </iframe>
</div>

This text is after the map

### Results

* [Our approach](https://www.stats.ox.ac.uk/~teh/Rmap_time/?map=0812_6weeks)
* [Modelling each local authority separately](https://www.stats.ox.ac.uk/~teh/Rmap_time/?map=cori)
