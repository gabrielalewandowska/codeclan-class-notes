var createColumnChart = function() {
  var chart = new Highcharts.Chart({
    chart: {
      type: "bar",
      renderTo: document.querySelector("div#column-chart")
    },
    title: {
      text: "Best Programming Languages"
    },
    series: [
      {
      name: "Cohort 15",
      color: "hotpink",
      data: [2, 9, 7, 2]
    },
    {
      name: "Cohort 16",
      color: "wheat",
      data: [15, 0, 1, 1]
    }
    ],
    xAxis: {
      categories: ["Ruby", "Java", "JavaScript", "C"]
    }
  })
}
