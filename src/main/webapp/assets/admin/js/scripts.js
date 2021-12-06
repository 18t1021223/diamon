/*!
    * Start Bootstrap - SB Admin v6.0.1 (https://startbootstrap.com/templates/sb-admin)
    * Copyright 2013-2020 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
  
    (function($) {
    "use strict";
    
    // Add active state to sidbar nav links
    var path = window.location.href; // because the 'href' property of the
										// DOM element is the absolute path
        $("#layoutSidenav_nav .sb-sidenav a.nav-link").each(function() {
            if (this.href === path) {
                $(this).addClass("active");
            }
        });
    // Toggle the side navigation
    $("#sidebarToggle").on("click", function(e) {
        e.preventDefault();
        $("body").toggleClass("sb-sidenav-toggled");
    });  
    // select date  ---------------------------- 
    $('input[name="daterange"]').daterangepicker({
    	
    	startDate: moment(), //.subtract(6, 'days'),
    	endDate:moment(),
    	max:moment(),
    	maxDate: moment(),
    	minDate: moment().subtract(1,'year'),
	   ranges: {
	        'Hôm nay': [moment(), moment()],
	        'Hôm qua': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
	        '7 ngày trước': [moment().subtract(7, 'days'), moment().subtract(1, 'days')],
	        '30 ngày trước': [moment().subtract(30, 'days'), moment().subtract(1, 'days')],
	        'Tháng này': [moment().startOf('month'), moment().endOf('month')],
	        'Tháng trước': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
	    },
    	locale: {
    	      format: 'DD/MM/YYYY',
    	    	  "separator": " - ",
    	          "applyLabel": "Áp dụng",
    	          "cancelLabel": "Hủy",
    	          "fromLabel": "From",
    	          "toLabel": "To",
    	          "customRangeLabel": "Tùy chọn",
    	          "daysOfWeek": [
    	              "CN",
    	              "T2",
    	              "T3",
    	              "T4",
    	              "T5",
    	              "T6",
    	              "T7"
    	          ],
    	          "monthNames": [
    	              "Tháng 1",
    	              "Tháng 2",
    	              "Tháng 3",
    	              "Tháng 4",
    	              "Tháng 5",
    	              "Tháng 6",
    	              "Tháng 7",
    	              "Tháng 8",
    	              "Tháng 9",
    	              "Tháng 10",
    	              "Tháng 11",
    	              "Tháng 12"
    	          ],
    	          "firstDay": 1
    	    },
    });
    
})(jQuery);
    
var numberformat = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' })  
var arrDate =[]   
var arrData=[]
var drp = $('.daterange').data('daterangepicker');

// khi apply ngày 
$('.daterange').on('apply.daterangepicker', function(ev, picker) {
   let s = picker.startDate.format('YYYY-MM-DD')
   let e = picker.endDate.format('YYYY-MM-DD')
 
   initDate(s,e)
   });

function initDate(s,e){   
	$.ajax({
    	url:'bao-cao',
	type:'get',
	dataType:"html",
	data:{
		d1: s,
		d2: e
	}
	}).done(function(data){	
		let temp = JSON.parse(data)
		arrDate = temp.arrDate
		arrData = temp.arrData
		addData(myLineChart,arrDate , arrData)
	
		var table_data =''
		for(let i = 0 ; i< arrDate.length ; i++){
			table_data += ' <tr>'
					+' <td>'+arrDate[i]+'</td>'
					+' <td>'+ numberformat.format(arrData[i])+'</td>'
					+' </tr>'				
		}
		$('.table-data').html(table_data)
		$('#revenue').html( numberformat.format(temp.revenue))
		$('#quantity').html( temp.quantity)
	})
}
// CẬP NHẬT LẠI CHART LINE 
function addData(chart, label, data) {
    chart.data.labels =  label ;
    chart.data.datasets[0].data =data;
    chart.update();
}
   