// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
	type : 'line',
	data : {
		labels : arrDate,
		datasets : [ {
			label : "Doanh thu",
			lineTension : 0.3,
			backgroundColor : "rgba(2,117,216,0.2)",
			borderColor : "rgba(2,117,216,1)",
			pointRadius : 5,
			pointBackgroundColor : "rgba(2,117,216,1)",
			pointBorderColor : "rgba(255,255,255,0.8)",
			pointHoverRadius : 5,
			pointHoverBackgroundColor : "rgba(2,117,216,1)",
			pointHitRadius : 50,
			pointBorderWidth : 2,
			data : arrData,
		} ],
	},
	options : {
		scales : {
			xAxes : [ {
				time : {
					unit : 'date'
				},
				gridLines : {
					display : false
				},
				ticks : {
					maxTicksLimit : 5
				}
			} ],
			yAxes : [ {
				ticks : {
					min : 0,
					// max: 40000,
					maxTicksLimit : 5
				},
				gridLines : {
					color : "rgba(0, 0, 0, .125)",
				}
			} ],
		},
		legend : {
			display : true
		},
		tooltips : {
			callbacks : {
				title : function(tooltipItems) {
					return tooltipItems[0].xLabel;
				},
				label : function(tooltipItems, data) {
					let numberformat = new Intl.NumberFormat('vi-VN', {
						style : 'currency',
						currency : 'VND'
					})
					// data.datasets[tooltipItems.datasetIndex].label+": "+ lấy
					// ra được datasets.label
					return numberformat.format(tooltipItems.yLabel)
				}
			}
		}
	}
});
