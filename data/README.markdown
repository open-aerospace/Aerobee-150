---
layout: project-page
title: Digitized Aerobee 150 Data From Historical Sources
description: Digitized Aerobee 150 Data From Historical Sources
page: data
---

# Digitized Aerobee 150 Data From Historical Sources

Most of the primary sources are from the 1960's. They contain some really interesting charts, but not the raw data. [WebPlotDigitizer][webplot] was used to extract approximate values as CSV files.



## Aerobee 150A Coefficient of Drag vs Mach Number

![Photocopied chart: Aerobee 150A Coefficient of Drag vs Mach Number](CD.png)

> Figure 1, Appendix A from "SOUNDING ROCKETS" Pressly, E. C., et al. (pg. 58).

Rendered to:

 - [CD_wbooster.csv](CD_wbooster.csv)
 - [CD_sustainer_poweron.csv](CD_sustainer_poweron.csv)
 - [CD_sustainer_poweroff.csv](CD_sustainer_poweroff.csv)

Format:

 Column |                                Value | Units
 :----: | -----------------------------------: | :-----
    1   | Mach Number                          | Mach
    2   | Coefficient of Drag                  | dimensionless



## Aerobee 150A Center of Pressure vs Mach Number

![Photocopied chart: Aerobee 150A Center of Pressure vs Mach Number](CP.png)

> Figure 3, Appendix A from "SOUNDING ROCKETS" Pressly, E. C., et al. (pg. 60).

Rendered to:

 - [CP_wbooster.csv](CP_wbooster.csv)
 - [CP_sustainer.csv](CP_sustainer.csv)

Format:

 Column |                                Value | Units
 :----: | -----------------------------------: | :-----
    1   | Mach Number                          | Mach
    2   | Center of Pressure (from nose tip)   | inches


[webplot]: http://arohatgi.info/WebPlotDigitizer/
