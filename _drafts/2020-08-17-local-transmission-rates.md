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
As the UK pivots to a more localised strategy to manage the Covid-19 epidemic, 
it is important to understand localised rates of transmissions. 
This can be a component of an effective monitoring system and 
allows to more quickly identify hotspots 
where there are elevated levels of transmissions. 
It can also be a useful tool for the public to understand 
where infections are growing and to adapt their behaviour accordingly.

We have developed a [system](https://rs-delve.github.io/Rmap) to estimate localised rates of transmissions, 
and to use these to do short-term forecasts of 
incidence rates in local authorities.
The system is based on a Bayesian statistical model 
for estimating the effective reproduction number Rt 
in individual local authorities and using these to forecast incidence rates.
Estimating Rt reliably across small areas with low incidences is difficult 
because of the low information content in the data, interactions across areas, 
as well as because of sensitivities to random local events. 
Further description of our method can be found [here](https://rs-delve.github.io/Rmap/data-methods.html).

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

This text is before the map
<p>
<div class="map-container">
<iframe class="map-frame" src="https://rs-delve.github.io/Rmap/map" allow="fullscreen">
</iframe>
</div>
</p>
This text is after the map


