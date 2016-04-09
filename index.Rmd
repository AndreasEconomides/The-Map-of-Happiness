---
title       : The Map of Happiness
subtitle    : how life satisfaction varies around the globe
author      : Andrew Eco
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo: logo.png
output: html_document
---

## Introduction

# The Map of Happiness

This presentation was created as part of the peer assessment Course Project of the Developing Data Products course on Coursera, which is part of the Data Science specialization.

the Course Project consists of:

* a Shiny application data product
* a Slidify/R-Presentation that explains what the Shiny application does

I decided to build an application which visualizes the results of the most recent "World Happiness Report", published in 2016. I was interested in creating an interactive map of the world that demonstrates in which parts of the planet people tend to be more satisfied with their lives. Colouring gives a general idea of what countries tend to provide the highest and lowest quality of life, while moving the mouseover a specific country outputs the "Happiness Score" for that country.

--- .class #id 

## The Data

The Data has been downloaded from the official World Happiness Report website: http://worldhappiness.report

The World Happiness Report is a landmark survey of the state of global happiness. The first report was published in 2012, the second in 2013, and the third in 2015. The World Happiness Report 2016 Update, which ranks 156 countries by their happiness levels, was released today in Rome in advance of UN World Happiness Day, March 20th. Leading experts across fields - economics, psychology, survey analysis, national statistics, health, public policy and more - describe how measurements of well-being can be used effectively to assess the progress of nations. The reports review the state of happiness in the world today and show how the new science of happiness explains personal and national variations in happiness. They reflect a new worldwide demand for more attention to happiness as a criteria for government policy.

--- .class #id 

## R code

The folllowing R code has been used to create the GeoChart map, via the GoogleVis package. It is worth mentioning that I modified the dataset to include as many countries as possible, with the latest available results, since some countries that have not been included in the 2016 report, had data available in the 2015 report.


```
library(googleVis)
happiness <- read.csv('happy_data.csv')
happy_planet <- gvisGeoChart(happiness, "country", "Happiness",
options=list(displayMode="regions",
title='The Map of Happiness',
colorAxis="{colors:['red', 'orange', 'yellow', 'green']}",
backgroundColor="lightblue",
height= '694', 
width= '1112'), chartid="The_Map_of_Happiness")
plot(happy_planet)
```

--- .class #id 

## Results

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>The_Map_of_Happiness</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<style type="text/css">
body {
  color: #444444;
  font-family: Arial,Helvetica,sans-serif;
  font-size: 75%;
  }
  a {
  color: #4D87C7;
  text-decoration: none;
}
</style>
</head>
<body>
<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataThe_Map_of_Happiness () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Afghanistan",
3.36 
],
[
 "Albania",
4.655 
],
[
 "Algeria",
6.355 
],
[
 "Angola",
3.866 
],
[
 "Argentina",
6.65 
],
[
 "Armenia",
4.36 
],
[
 "Australia",
7.313 
],
[
 "Austria",
7.119 
],
[
 "Azerbaijan",
5.291 
],
[
 "Bahrain",
6.218 
],
[
 "Bangladesh",
4.643 
],
[
 "Belarus",
5.802 
],
[
 "Belgium",
6.929 
],
[
 "Benin",
3.484 
],
[
 "Belize",
5.956 
],
[
 "Bhutan",
5.196 
],
[
 "Bolivia",
5.822 
],
[
 "Bosnia and Herzegovina",
5.163 
],
[
 "Botswana",
3.974 
],
[
 "Brazil",
6.952 
],
[
 "Bulgaria",
4.217 
],
[
 "Burkina Faso",
3.739 
],
[
 "Burundi",
2.905 
],
[
 "Cambodia",
3.907 
],
[
 "Cameroon",
4.513 
],
[
 "Canada",
7.404 
],
[
 "Chad",
3.763 
],
[
 "Chile",
6.705 
],
[
 "China",
5.245 
],
[
 "Colombia",
6.481 
],
[
 "Comoros",
3.956 
],
[
 "Congo (Brazzaville)",
4.272 
],
[
 "Congo (Kinshasa)",
4.236 
],
[
 "Costa Rica",
7.087 
],
[
 "Croatia",
5.488 
],
[
 "Cyprus",
5.546 
],
[
 "Czech Republic",
6.596 
],
[
 "Denmark",
7.526 
],
[
 "Dominican Republic",
5.155 
],
[
 "Ecuador",
5.976 
],
[
 "Egypt",
4.362 
],
[
 "El Salvador",
6.068 
],
[
 "Estonia",
5.517 
],
[
 "Ethiopia",
4.508 
],
[
 "Finland",
7.413 
],
[
 "France",
6.478 
],
[
 "Gabon",
4.121 
],
[
 "Georgia",
4.252 
],
[
 "Germany",
6.994 
],
[
 "Ghana",
4.276 
],
[
 "Greece",
5.033 
],
[
 "Guatemala",
6.324 
],
[
 "Guinea",
3.607 
],
[
 "Haiti",
4.028 
],
[
 "Honduras",
4.871 
],
[
 "Hong Kong",
5.458 
],
[
 "Hungary",
5.145 
],
[
 "Iceland",
7.501 
],
[
 "India",
4.404 
],
[
 "Indonesia",
5.314 
],
[
 "Iran",
4.813 
],
[
 "Iraq",
4.575 
],
[
 "Ireland",
6.907 
],
[
 "Israel",
7.267 
],
[
 "Italy",
5.977 
],
[
 "Ivory Coast",
3.916 
],
[
 "Jamaica",
5.51 
],
[
 "Japan",
5.921 
],
[
 "Jordan",
5.303 
],
[
 "Kazakhstan",
5.919 
],
[
 "Kenya",
4.356 
],
[
 "Kosovo",
5.401 
],
[
 "Kuwait",
6.239 
],
[
 "Kyrgyzstan",
5.185 
],
[
 "Laos",
4.876 
],
[
 "Latvia",
5.56 
],
[
 "Lebanon",
5.129 
],
[
 "Liberia",
3.622 
],
[
 "Libya",
5.615 
],
[
 "Lithuania",
5.813 
],
[
 "Luxembourg",
6.871 
],
[
 "Macedonia",
5.121 
],
[
 "Madagascar",
3.695 
],
[
 "Malawi",
4.156 
],
[
 "Malaysia",
6.005 
],
[
 "Mali",
4.073 
],
[
 "Malta",
6.488 
],
[
 "Mauritania",
4.201 
],
[
 "Mauritius",
5.648 
],
[
 "Mexico",
6.778 
],
[
 "Moldova",
5.897 
],
[
 "Mongolia",
4.907 
],
[
 "Montenegro",
5.161 
],
[
 "Morocco",
5.151 
],
[
 "Myanmar",
4.395 
],
[
 "Namibia",
4.574 
],
[
 "Nepal",
4.793 
],
[
 "Netherlands",
7.339 
],
[
 "New Zealand",
7.334 
],
[
 "Nicaragua",
5.992 
],
[
 "Niger",
3.856 
],
[
 "Nigeria",
4.875 
],
[
 "North Cyprus",
5.771 
],
[
 "Norway",
7.498 
],
[
 "Pakistan",
5.132 
],
[
 "Palestinian Territories",
4.754 
],
[
 "Panama",
6.701 
],
[
 "Paraguay",
5.538 
],
[
 "Peru",
5.743 
],
[
 "Philippines",
5.279 
],
[
 "Poland",
5.835 
],
[
 "Portugal",
5.123 
],
[
 "Puerto Rico",
7.039 
],
[
 "Qatar",
6.375 
],
[
 "Romania",
5.528 
],
[
 "Russia",
5.856 
],
[
 "Rwanda",
3.515 
],
[
 "Saudi Arabia",
6.379 
],
[
 "Senegal",
4.219 
],
[
 "Serbia",
5.177 
],
[
 "Sierra Leone",
4.635 
],
[
 "Singapore",
6.739 
],
[
 "Slovakia",
6.078 
],
[
 "Slovenia",
5.768 
],
[
 "Somaliland region",
5.057 
],
[
 "Somalia",
5.44 
],
[
 "South Sudan",
3.832 
],
[
 "South Africa",
4.459 
],
[
 "South Korea",
5.835 
],
[
 "Spain",
6.361 
],
[
 "Sri Lanka",
4.415 
],
[
 "Sudan",
4.139 
],
[
 "Suriname",
6.269 
],
[
 "Sweden",
7.291 
],
[
 "Switzerland",
7.509 
],
[
 "Syria",
3.069 
],
[
 "Taiwan",
6.379 
],
[
 "Tajikistan",
4.996 
],
[
 "Tanzania",
3.666 
],
[
 "Thailand",
6.474 
],
[
 "Togo",
3.303 
],
[
 "Trinidad and Tobago",
6.168 
],
[
 "Tunisia",
5.045 
],
[
 "Turkey",
5.389 
],
[
 "Turkmenistan",
5.658 
],
[
 "Uganda",
3.739 
],
[
 "Ukraine",
4.324 
],
[
 "United Arab Emirates",
6.573 
],
[
 "United Kingdom",
6.725 
],
[
 "United States",
7.104 
],
[
 "Uruguay",
6.545 
],
[
 "Uzbekistan",
5.987 
],
[
 "Venezuela",
6.084 
],
[
 "Vietnam",
5.061 
],
[
 "Yemen",
3.724 
],
[
 "Zambia",
4.795 
],
[
 "Zimbabwe",
4.193 
],
[
 "Central African Republic",
3.678 
],
[
 "Djibouti",
4.369 
],
[
 "Mozambique",
4.971 
],
[
 "Oman",
6.853 
],
[
 "Lesotho",
4.898 
],
[
 "Swaziland",
4.867 
] 
];
data.addColumn('string','country');
data.addColumn('number','Happiness');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartThe_Map_of_Happiness() {
var data = gvisDataThe_Map_of_Happiness();
var options = {};
options["width"] = "556";
options["height"] = "347";
options["displayMode"] = "regions";
options["title"] = "The Map of Happiness";
options["colorAxis"] = {colors:['red', 'orange', 'yellow', 'green']};
options["backgroundColor"] = "lightblue";


    var chart = new google.visualization.GeoChart(
    document.getElementById('The_Map_of_Happiness')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "geochart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartThe_Map_of_Happiness);
})();
function displayChartThe_Map_of_Happiness() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartThe_Map_of_Happiness"></script>
 
<!-- divChart -->
  
<div id="The_Map_of_Happiness" 
  style="width: 1112; height: 694;">
</div>
</body>
</html>

-interactive plot- I used green for happiness and red for unhappiness. We can see that countries located in North-West Europe tend to have the happiest citizens, with Denmark being the best country to live in. In other parts fot the world, people who live in Canada, New Zealand, Australia, USA and Israel seem to be very satisfied with their lives. The countries with the lowest ratings, Burundi and Syria, are currently facing violence, due to political instability. Furthermore, the majority of countries with a low happiness index are LEDCs, located in Africa.
