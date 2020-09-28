---
title: Mapping and Nowcasting the Covid-19 Epidemic in British Local Authorities
date: 2020-09-30 00:00:00 Z
layout: post
yw-private: true
authors:
- given: Yee Whye
  family: Teh
  url: "/people/yee-whye-teh.html"
- given: Avishkar
  family: Bhoopchand
  url: "/people/avishkar-bhoopchand.html"

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
interpreted as predictions of true transmission and incidence rates. Further
details of the limitations of the system can be found
[here](http://rs-delve.github.io/Rmap/limitations.html).


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


