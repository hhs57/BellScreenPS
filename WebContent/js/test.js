$(function() {
			var categories = ['һ��', '����', '����', '����', '����', '����', '����', '����',
					'����', 'ʮ��', 'ʮһ��', 'ʮ����'];
			$('#container').highcharts({
				xAxis : {
					labels : {
						formatter : function() {
							return categories[this.value];
						}
					},
					tickInterval : 1
				},
				yAxis : {
					minPadding : 0,
					startOnTick : false
				},
				credits : {
					text : "www.stepday.com",
					url : "http://www.stepday.com",
					style : {
						color : "red"
					}
				},
				series : [{
					data : [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6,
							148.5, 216.4, 194.1, 95.6, 54.4]
				}]
			});
		});