# EJSChart

100% Powerful, Clean & Functional Javascript Charts

Whether at home, a medium sized or enterprise venture, EJSCharts will seamlessly help you represent your data more clearly and efficiently.

Compatible With:

* IE6+
* Firefox
* Safari
* Chrome

## Features

### Interactive

Features such as Hints, Mouse Tracking, Mouse Events, Key Tracking, and Events, Zooming, Scrolling, and Crosshairs raise interactivity and user experience in web charting to a new level.

Too much data and not enough screen real estate? Show it all. Let your end users zoom in on the pieces they're most interested in. Axis locking for single axis zoom, scrolling and automatic axis scaling are all included.

### Ajax Driven Data

EJSChart supports XML-formatted data and loads data on the fly. New series can be added and data updated in real time without page reloads.

### Stackable Series

Multiple chart series can be stacked and combined to fit many charting needs.

### Plugin Free

100% pure Javascript Charting solution. No more worries of incompatible plugin versions or confusing security warnings. EJSChart is pure JavaScript and requires no client installation.

## Setup

### Implementation Instructions

- Download the ZIP file for this EJSCharts repository.
- Create a new directory in your webroot to house the EJSCharts code.
- Unzip the contents of the EJSCharts ZIP file you downloaded into the directory you created.
- Include the EJSChart.min.js file in the HEAD portion of your HTML file using the following code:

`<script src="./path-to-your-directory/EJSChart.min.js"></script>`

### Creating Your First Chart

- Create a DIV elmeent in your HTML page where you want the chart to display and give it an id.

`<div id="myChart"></div>`

- Add a script block to create the chart.

```
<script>
var chart = new EJSC.Chart("myChart");
</script>
```

- Add series to the chart (see the [Examples][examples] area for examples of adding series).

## License

Please see the [LICENSE.txt][license] file for license information.

[examples]: http://www.ejschart.com/examples.php?selected=examplesPage
[license]: ./LICENSE.txt