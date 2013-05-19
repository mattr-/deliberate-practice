var data = [4,8,15,16,23,42]

var chart = d3.select("body").append("svg")
  .attr("class", "chart")
  .attr("width", "420")
  .attr("height", 20 * data.length);

var x = d3.scale.linear()
  .domain([0, d3.max(data)])
  .range([0, 420]);

var y = d3.scale.ordinal()
  .domain(data)
  .rangeBands([0, 120]);


chart.selectAll("rect")
  .data(data)
  .enter().append("rect")
    .attr("y", y)
    .attr("width", x)
    .attr("height", y.rangeBand());
