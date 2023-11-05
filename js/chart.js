$(function() {
  /* ChartJS
   * -------
   * Data and config for chartjs
   */
  'use strict';
  var data = {
    labels: ["1990", "1995", "2000", "2005", "2010", "2015","2022"],
  
    datasets: [{
      label: 'Unemployed',
      data: [15,20,40,55,51,49,40],
      backgroundColor: [
        'rgba(205, 109, 32, 0.2)',
        
      ],
      borderColor: [
        'rgba(205,199,32,1)',
      
      ],
      borderWidth: 3,
      fill: false
    
  }],
  };
  var data1 = {
    labels: ["2010", "2015", "2020", "2025", "2027", "2030"],
  
    datasets: [{
      label: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
      data: [30,41,64,25,15,6],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 159, 64, 0.2)'
        
      ],
      borderColor: [
        'rgba(255,99,132,1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)'
       
      ],
      borderWidth: 1,
      fill: true
    }],
  };

  var multiLineData = {
    labels: ["INDIA" , "USA" , "CHINA", "RUSSIA" , "BRAZIL","ITALY"],
    datasets: [{
        label: 'MALE',
        data: [25,70,39,15,45,8],
        backgroundColor: [
          'rgba(75, 192, 192, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(75, 192, 192, 0.2)'
        ],
        borderColor: [
          'rgba(75, 192, 192, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(75, 192, 192, 1)'
        ],
        borderWidth: 2,
        fill: false
      },
      {
        label: 'FEMALE',
        data: [35, 100, 50, 22, 52, 13],
        backgroundColor: [
          'rgba(153, 102, 255, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          
        ],
        borderColor: [
          'rgba(153, 102, 255, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(153, 102, 255, 1)',         
        ],
        borderWidth: 2,
        fill: false
      },
    ],
   
  };
  var options = {
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true
        },
        stacked:{
          stacked: true
        },
        gridLines: {
          color: "rgba(204, 204, 204,0.1)"
        }
      }],
      xAxes: [{
        gridLines: {
          color: "rgba(204, 204, 204,0.1)"
        },
        stacked:{
          stacked: true
        }
      }]
    },
    legend: {
      display: true
    },
    elements: {
      point: {
        radius: 0
      }
    }
  };

  
  var doughnutPieData = {
    datasets: [{
      data: [20, 30, 35,5],
      backgroundColor: [
        'rgba(255, 99, 132, 0.5)',
        'rgba(54, 162, 235, 0.5)',
        'rgba(255, 206, 86, 0.5)',
        'rgba(75, 192, 192, 0.5)',
        'rgba(153, 102, 255, 0.5)',
        'rgba(255, 159, 64, 0.5)'
      ],
      borderColor: [
        'rgba(255,99,132,1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)'
      ],
    }],

    // These labels appear in the legend and in the tooltips when hovering different arcs
    labels: [
      'Phishing',
      'Cyber Bullying',
      'Identity theft',
      'Malware attack',
    ]
  };
  var doughnutPieOptions = {
    responsive: true,
    animation: {
      animateScale: true,
      animateRotate: true
    }
  };
  var areaData = {
    labels: ["2010", "2015", "2020", "2025", "2030","2040"],
    datasets: [{
      label: 'Cancer',
      data: [10, 29, 12, 19,10,5],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 159, 64, 0.2)'
        
      ],
      borderColor: [
        'rgba(255,99,132,1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)'
       
      ],
      borderWidth: 5,
      fill: true, // 3: no fill
    }]
  };

  var areaOptions = {
    plugins: {
      filler: {
        propagate: true
      }
    },
    scales: {
      yAxes: [{
        gridLines: {
          color: "rgba(204, 204, 204,0.1)"
        }
      }],
      xAxes: [{
        gridLines: {
          color: "rgba(204, 204, 204,0.1)"
        }
      }]
    }
  }

  var multiAreaData = {
    labels: ["1995", "2000", "2005", "2010", "2015", "2022"],
    datasets: [{
        label: 'Cureable',
        data: [8, 11, 13, 15, 12, 13],
        borderColor: ['rgba(100, 109 , 12, 0.5)'],
        backgroundColor: ['rgba(100, 109 , 12, 0.4)'],
        borderWidth: 5,
        fill: true
      },
      {
        label: 'Un-Curable',
        data: [7, 17, 12, 16, 14, 18],
        borderColor: ['rgba(254, 62, 35, 0.5)'],
        backgroundColor: ['rgba(254, 62, 35, 0.4)'],
        borderWidth: 5,
        fill: true
      }
    ]
  };

  var multiAreaOptions = {
    plugins: {
      filler: {
        propagate: true
      }
    },
    elements: {
      point: {
        radius: 0
      }
    },
    scales: {
      xAxes: [{
        gridLines: {
          display: false
        }
      }],
      yAxes: [{
        gridLines: {
          display: false
        }
      }]
    }
  }

  var scatterChartData = {
    datasets: [{
        label: 'Disease',
        data: [{
            x: -10,
            y: 0
          },
          {
            x: 0,
            y: 3
          },
          {
            x: -25,
            y: 5
          },
          {
            x: 40,
            y: 5
          }
        ],
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)'
        ],
        borderColor: [
          'rgba(255,99,132,1)'
        ],
        borderWidth: 1
      },
      {
        label: 'Second Dataset',
        data: [{
            x: 10,
            y: 5
          },
          {
            x: 20,
            y: -30
          },
          {
            x: -25,
            y: 15
          },
          {
            x: -10,
            y: 5
          }
        ],
        backgroundColor: [
          'rgba(54, 162, 235, 0.2)',
        ],
        borderColor: [
          'rgba(54, 162, 235, 1)',
        ],
        borderWidth: 1
      }
    ]
  }

  var scatterChartOptions = {
    scales: {
      xAxes: [{
        type: 'linear',
        position: 'bottom',
        gridLines: {
          color: "rgba(204, 204, 204,0.1)"
        }
      }],
      yAxes: [{
        gridLines: {
          color: "rgba(204, 204, 204,0.1)"
        }
      }]
    }
  }
  // Get context with jQuery - using jQuery's .get() method.
  if ($("#barChart").length) {
    var barChartCanvas = $("#barChart").get(0).getContext("2d");
    // This will get the first returned node in the jQuery collection.
    var barChart = new Chart(barChartCanvas, {
      type: 'bar',
      data: multiLineData,
      options: options
    });
  }

  if ($("#lineChart").length) {
    var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
    var lineChart = new Chart(lineChartCanvas, {
      type: 'line',
      data:data,
      options: options
    });
  }

  if ($("#linechart-multi").length) {
    var multiLineCanvas = $("#linechart-multi").get(0).getContext("2d");
    var lineChart = new Chart(multiLineCanvas, {
      type: 'line',
      data: multiLineData,
      options: options
    });
  }

  if ($("#areachart-multi").length) {
    var multiAreaCanvas = $("#areachart-multi").get(0).getContext("2d");
    var multiAreaChart = new Chart(multiAreaCanvas, {
      type: 'line',
      data: multiAreaData,
      options: multiAreaOptions
    });
  }

  if ($("#doughnutChart").length) {
    var doughnutChartCanvas = $("#doughnutChart").get(0).getContext("2d");
    var doughnutChart = new Chart(doughnutChartCanvas, {
      type: 'doughnut',
      data: doughnutPieData,
      options: doughnutPieOptions
    });
  }

  if ($("#pieChart").length) {
    var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
    var pieChart = new Chart(pieChartCanvas, {
      type: 'pie',
      data: doughnutPieData,
      options: doughnutPieOptions
    });
  }

  if ($("#areaChart").length) {
    var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
    var areaChart = new Chart(areaChartCanvas, {
      type: 'line',
      data: multiAreaData,
      options: areaOptions
    });
  }

  if ($("#scatterChart").length) {
    var scatterChartCanvas = $("#scatterChart").get(0).getContext("2d");
    var DisaeseSpred= new Chart(scatterChartCanvas, {
      type: 'scatter',
      data: scatterChartData,
      options: scatterChartOptions
    });
  }

  if ($("#browserTrafficChart").length) {
    var doughnutChartCanvas = $("#browserTrafficChart").get(0).getContext("2d");
    var doughnutChart = new Chart(doughnutChartCanvas, {
      type: 'doughnut',
      data: browserTrafficData,
      options: doughnutPieOptions
    });
  }
});



// Initialize ECharts
var myChart = echarts.init(document.getElementById('areaLineChart'));

// Chart configuration
var option = {
    title: {
        text: 'Gradient Area Line Chart Example'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['Data Series']
    },
    xAxis: {
        type: 'category',
        data: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
        splitLine: {
          show: false // Hide x-axis grid lines
      }
    },
    yAxis: {
        type: 'value',
        splitLine: {
          show: false // Hide x-axis grid lines
      }
    },
    series: [{
        name: 'Data Series',
        type: 'line',
        smooth: true, // Enable smooth line
        lineStyle: {
            width: 0 // Remove the line, leaving only the area
        },
        areaStyle: {
            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                offset: 0,
                color: 'rgba(0, 110, 255, 0.7)' // Start color (transparent)
            }, {
                offset: 1,
                color: 'rgba(0, 110, 255, -1.9)'   // End color (transparent)
            }])
        },
        data: [120, 200, 150, 80, 70, 110, 130],
        animation: true // Enable animation
    }]
};

// Set the chart configuration
myChart.setOption(option);
