---
layout: project
title: Aerobee 150
---

The **Aerobee 150A** is a four-fin sounding rocket approximately 9 meters long and 38 centimeters in diameter, manufactured by [Space-General Corporation][aerojet] and first flown in February, 1960. The rocket is capable of transporting 45 to 130 kilograms payloads to high altitudes (over 200 kilometers) with a stable, near vertical trajectory. The rocket is a free-flight, fin-stabilized, tower-launched, vehicle consisting of a liquid propellant sustainer and a solid propellant booster. The rocket is rolled (spun) during flight to decrease dispersion.

[![Aerobee 150A Outline diagram](drawings/aerobee-150A-outline.svg)](drawings/aerobee-150A-outline.svg)


## Mass Breakdown

--------------------------------------------------------------------------------

{% for stage in site.data.rocket.rocket.stages %}

<div class="columns">
  <div class="column is-7">

 <h3>{{ stage.name }}</h3>

{% capture totalmass %}{{ 0.0 }}{% endcapture %}

<table>
 <thead>
  <tr><th>Name</th><th style="text-align:right;padding-right:0;">Mass </th><th style="text-align:left;padding-left:0.5em;width:4.0em;">[kg]</th></tr>
 </thead>
 <tbody>
  {% for component in stage.components %}{% capture totalmass %}{{ totalmass | plus: component.mass }}{% endcapture %}
  <tr>
   <td>{{ component.name }}</td><td style="text-align:right;padding-right:0;">{{ component.mass | floor }}</td><td style="color:#888;text-align:left;padding-left:0;">.{{ component.mass | round: 3  | split: "." | last }}</td>
  </tr>
  {% for subcomponent in component.components %}{% capture totalmass %}{{ totalmass | plus: subcomponent.mass }}{% endcapture %}
   <tr>
 <td>{{ subcomponent.name }}</td><td style="text-align:right;padding-right:0;">{{ subcomponent.mass | floor }}</td><td style="color:#888;text-align:left;padding-left:0;">.{{ subcomponent.mass | round: 3  | split: "." | last }}</td>
  </tr>
  {% endfor %}
  {% endfor %}
 </tbody>
 <tfoot>
  <tr>
   <th>Totals:</th><th style="color:#000;text-align:right;padding-right:0;">{{ totalmass | floor }}</th><th style="color:#444;text-align:left;padding-left:0;">.{{ totalmass | round: 3 | split: "." | last }}</th>
  </tr>
 </tfoot>
</table>
</div></div>
{% endfor %}
