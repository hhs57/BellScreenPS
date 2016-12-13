function currentTime() {
	var d = new Date(), str = '';
	str += d.getFullYear() + '/';
	
	if(d.getMonth()<10){
	  str +='0'+d.getMonth() + 1 + '/';
	}else{
	  str += d.getMonth() + 1 + '/';
	}
	if(d.getDate()<10){
	  str += '0'+d.getDate() + '    ';
	}else{
	  str += d.getDate() + '    ';
	}
	if(d.getHours()<10){
	  str += '0'+	d.getHours() + ':';
	}else{
	  str += d.getHours() + ':';
	}
	if(d.getMinutes()<10){
	  str += '0'+	d.getMinutes() + ':';
	}else{
	  str += d.getMinutes() + ':';
	}
	if(d.getSeconds()<10){
	  str += '0'+d.getSeconds();
	}else{
	  str += d.getSeconds();
	}
	document.getElementById("time").innerHTML = str;
	return str;
}
setInterval(function() {
			$('#time').html(currentTime);
		}, 1000);

function ajaxRequest() {
	// alert("============");
	$.ajax({
				type : "post",// ����ʽ
				url : "ScreenServlet",// ���������ַ
				data : {// ���͸���ݿ�����
				},
				// ����ɹ���Ļص��������������
				success : function(data, response, status) {
					var dataObj = eval("(" + data + ")");
					// alert(dataObj['zhrl']);
					document.getElementById("zhrl").innerHTML = dataObj['zhrl'];
					document.getElementById("jtl").innerHTML = dataObj['jtl'];
					document.getElementById("zhful").innerHTML = dataObj['zhful'];
					var vzhl = dataObj['zhl'];

					if (vzhl <= 30) {
						$("#img_zhl").attr('src',
								"images/BigScreen_r3_c9_gray.png");
					}
					if (vzhl > 30 && vzhl <= 60) {
						$("#img_zhl").attr('src',
								"images/BigScreen_r3_c9_yellow.png");
					}
					if (vzhl > 60) {
						$("#img_zhl").attr('src',
								"images/BigScreen_r3_c9_red.png");
					}
					document.getElementById("zhl").innerHTML = dataObj['zhl']
							+ "%";
					document.getElementById("lshbsl").innerHTML = dataObj['lshbsl'];
					document.getElementById("lshbbgtzl").innerHTML = dataObj['lshbbgtzl']+ "%";
					// document.getElementById("time").innerHTML =
					// currentTime();

				}
			});

}
function pageInit() {
	window.setInterval("ajaxRequest()", 3000);
}
// 10����ˢ��һ�����
var chart;
var chart1;// ת����ͼ��
var chart2;// ������ͼ��
var chart3;// ��������ͼ��
function st() {
	setInterval("getData()", 10000);
}
// ��̬����ͼ�����
function getData() {
	$.ajax({
				type : "post",// ����ʽ
				url : "ScreenPie01Servlet",// ���������ַ
				success : function(data, response, status) {
					var dataObj = eval("(" + data + ")");
					a1 = parseInt(dataObj['jx']);
					a2 = parseInt(dataObj['lx']);
					a3 = parseInt(dataObj['hz']);
					a4 = parseInt(dataObj['hh']);
					a5 = parseInt(dataObj['zj']);
					a6 = parseInt(dataObj['wzj']);
					a7 = parseInt(dataObj['ly']);
					a8 = parseInt(dataObj['wly']);
					a9 = parseInt(dataObj['my']);
					a10 = parseInt(dataObj['bmy']);
					// alert("============"+a1+"====="+a2+"========"+a3+"======"+a4);
					document.getElementById("zjl").innerHTML = a5 + "%";
					document.getElementById("lyl").innerHTML = a7 + "%";
					document.getElementById("bmyl").innerHTML = a10 + "%";
					chart.addSeries({
								type : 'pie',
								name : null,
								data : [{
											name : 'Ready',
											color : '#AFDB28',
											y : a1
										}, {
											name : 'Logout',
											color : '#C9C9C9',
											y : a2
										}, {
											name : 'Talking',
											color : '#E7A119',
											y : a3
										}, {
											name : 'AfterCalling',
											color : '#1992E7',
											y : a4
										}]
							});
					chart1.addSeries({
								type : 'pie',
								innerSize : '99%',
								name : null,
								data : [{
											name : '',
											color : '#323A46',
											y : a5
										}, {
											name : '',
											color : '#F7A515',
											y : a6
										}]
							});
					chart2.addSeries({
								type : 'pie',
								innerSize : '99%',
								name : null,
								data : [{
											name : '',
											color : '#323A46',
											y : a7
										}, {
											name : '',
											color : '#F7A515',
											y : a8
										}]
							});
					chart3.addSeries({
								type : 'pie',
								innerSize : '99%',
								name : null,
								data : [{
											name : '',
											color : '#323A46',
											y : a9
										}, {
											name : '',
											color : '#F7A515',
											y : a10
										}]
							});
				},
				error : function(e) {
				}
			});
}
$(function() {
	$(document).ready(function() {
		chart = new Highcharts.Chart({
			chart : {
				renderTo : 'container',
				plotBackgroundColor : 'white',// ������ɫ
				plotBorderWidth : 0,
				plotShadow : false,
				events : {
					load : st
					// ��ʱ��
				}
			},
			title : {
				text : ''
			},
			tooltip : {// ����ƶ���ÿ����ͼ��ʾ������
				backgroundColor : '#FFFFFF', // ������ɫ
				borderColor : 'white', // �߿���ɫ
				borderWidth : 0, // �߿���
				pointFormat : '{point.name}: <b>{point.percentage}%</b>',
				percentageDecimals : 1
			},
			plotOptions : {
				pie : {
					size : '100%',
					borderWidth : 0,
					allowPointSelect : true,
					cursor : 'pointer',

					dataLabels : {
						enabled : false,
						color : '#000',
						// distance:
						// -50,//ͨ������������ԣ���ÿ��С��ͼ����ʾ��ƺ�ÿ����ͼ�ص�
						style : {
							fontSize : '10px',
							lineHeight : '10px'
						},
						formatter : function(index) {
							return '<span style="color:#00008B;font-weight:bold">'
									+ this.point.name + '</span>';
						}
					},
					padding : 20
				}
			},
			series : [{// ����ÿС����ͼ����ɫ����ơ��ٷֱ�

				type : 'pie',
				name : null,
				data : [{
							name : 'Ready',
							color : '#AFDB28',
							y : 55
						}, {
							name : 'Logout',
							color : '#C9C9C9',
							y : 20
						}, {
							name : 'Talking',
							color : '#E7A119',
							y : 10
						}, {
							name : 'AfterCalling',
							color : '#1992E7',
							y : 5
						}, {
							name : 'Others',
							color : 'red',
							y : 10
						}]
			}]
		});

	});

});

// ת����
$(function() {
	$(document).ready(function() {
		chart1 = new Highcharts.Chart({
			chart : {
				renderTo : 'container1',
				plotBackgroundColor : 'white',// ������ɫ
				plotBorderWidth : 0,
				plotShadow : false,
				events : {
					load : st
					// ��ʱ��
				}
			},
			title : {
				text : ''
				// text: 'Total:$'+totalMoney,
				// verticalAlign:'bottom',
				// y:-60
			},
			tooltip : {// ����ƶ���ÿ����ͼ��ʾ������
				pointFormat : '{point.name}: <b>{point.percentage}%</b>',
				percentageDecimals : 1
				// formatter: function() {
				// return
				// this.point.name+':$'+totalMoney*this.point.percentage/100;
				// }
			},
			plotOptions : {
				pie : {
					size : '100%',
					borderWidth : 0,
					allowPointSelect : true,
					cursor : 'pointer',
					dataLabels : {
						enabled : true,
						color : '#000',
						distance : -50,// ͨ������������ԣ���ÿ��С��ͼ����ʾ��ƺ�ÿ����ͼ�ص�
						style : {
							fontSize : '10px',
							lineHeight : '10px'
						},
						formatter : function(index) {
							return '<span style="color:#00008B;font-weight:bold">'
									+ this.point.name + '</span>';
						}
					},
					padding : 20
				}
			},
			series : [{// ����ÿС����ͼ����ɫ����ơ��ٷֱ�

				type : 'pie',
				innerSize : '99%',
				name : null,
				data : [{
							name : '',
							color : '#323A46',
							y : 65
						}, {
							name : '',
							color : '#F7A515',
							y : 35
						}]
			}]
		});
	});

});
// ������
$(function() {
	$(document).ready(function() {
		chart2 = new Highcharts.Chart({
			chart : {
				renderTo : 'container2',
				plotBackgroundColor : 'white',// ������ɫ
				plotBorderWidth : 0,
				plotShadow : false
			},
			title : {
				text : ''
				// text: 'Total:$'+totalMoney,
				// verticalAlign:'bottom',
				// y:-60
			},
			tooltip : {// ����ƶ���ÿ����ͼ��ʾ������
				pointFormat : '{point.name}: <b>{point.percentage}%</b>',
				percentageDecimals : 1
				// formatter: function() {
				// return
				// this.point.name+':$'+totalMoney*this.point.percentage/100;
				// }
			},
			plotOptions : {
				pie : {
					size : '100%',
					borderWidth : 0,
					allowPointSelect : true,
					cursor : 'pointer',
					dataLabels : {
						enabled : true,
						color : '#000',
						distance : -50,// ͨ������������ԣ���ÿ��С��ͼ����ʾ��ƺ�ÿ����ͼ�ص�
						style : {
							fontSize : '10px',
							lineHeight : '10px'
						},
						formatter : function(index) {
							return '<span style="color:#00008B;font-weight:bold">'
									+ this.point.name + '</span>';
						}
					},
					padding : 20
				}
			},
			series : [{// ����ÿС����ͼ����ɫ����ơ��ٷֱ�

				type : 'pie',
				innerSize : '99%',
				name : null,
				data : [{
							name : '',
							color : '#323A46',
							y : 65
						}, {
							name : '',
							color : '#F7A515',
							y : 35
						}]
			}]
		});
	});

});
// ��������
$(function() {
	$(document).ready(function() {
		chart3 = new Highcharts.Chart({
			chart : {
				renderTo : 'container3',
				plotBackgroundColor : 'white',// ������ɫ
				plotBorderWidth : 0,
				plotShadow : false
			},
			title : {
				text : ''
				// text: 'Total:$'+totalMoney,
				// verticalAlign:'bottom',
				// y:-60
			},
			tooltip : {// ����ƶ���ÿ����ͼ��ʾ������
				pointFormat : '{point.name}: <b>{point.percentage}%</b>',
				percentageDecimals : 1
				// formatter: function() {
				// return
				// this.point.name+':$'+totalMoney*this.point.percentage/100;
				// }
			},
			plotOptions : {
				pie : {
					size : '100%',
					borderWidth : 0,
					allowPointSelect : true,
					cursor : 'pointer',
					dataLabels : {
						enabled : true,
						color : '#000',
						distance : -50,// ͨ������������ԣ���ÿ��С��ͼ����ʾ��ƺ�ÿ����ͼ�ص�
						style : {
							fontSize : '10px',
							lineHeight : '10px'
						},
						formatter : function(index) {
							return '<span style="color:#00008B;font-weight:bold">'
									+ this.point.name + '</span>';
						}
					},
					padding : 20
				}
			},
			series : [{// ����ÿС����ͼ����ɫ����ơ��ٷֱ�

				type : 'pie',
				innerSize : '99%',
				name : null,
				data : [{
							name : '',
							color : '#323A46',
							y : 65
						}, {
							name : '',
							color : '#F7A515',
							y : 35
						}]
			}]
		});
	});

});

// Ӧ���ٶ�
$(function() {
	var categories = ['平均应答', '金卡', '两方', '投诉', '银卡', '会员', '国际', '国内'];
	$('#container4').highcharts({
		chart : {
			type : 'area',
			spacingBottom : 1
		},
		title : {
			text : ''
		},
		subtitle : {
			text : '',
			floating : true,
			align : 'right',
			verticalAlign : 'bottom',
			y : 10
		},
		legend : {
			layout : 'vertical',
			align : 'left',
			verticalAlign : 'top',
			x : 150,
			y : 100,
			floating : true,
			borderWidth : 1,
			backgroundColor : (Highcharts.theme && Highcharts.theme.legendBackgroundColor)
					|| '#FFFFFF'
		},
		xAxis : {
			labels : {
				formatter : function() {
					return categories[this.value];
				}
			},
			tickInterval : 1,
			gridLineWidth: 1,
			gridLineColor: "#E4E6E9"
		},
		yAxis : {
			title:'Y-values',
            tickInterval : 10,
            min: 0,//纵轴的最小值 
			minPadding : 0,
			startOnTick : false,
			labels: {
//			enabled: false,
						
			}
			

		},
		tooltip : {
			formatter : function() {
				return '<b>' + this.series.name + '</b><br/>' + this.x + ': '
						+ this.y;
			}
		},

		plotOptions : {
			series : {
				threshold : 0
			},
			area : {
				fillOpacity : 0.6,
				marker : {
					radius : 5,
					symbol : 'url(images/circle.png)'
				}
			}
		},
		legend : {
			enabled : false
		},
		series : [{
					name : '数量',
					data : [15, 20, 10, 3, 12,22,15,55]
				}]
	});
});
