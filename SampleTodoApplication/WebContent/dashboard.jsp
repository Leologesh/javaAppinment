<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<!-- <link href='../fullcalendar.min.css' rel='stylesheet' /> -->
<!-- <link href='../fullcalendar.print.min.css' rel='stylesheet' media='print' /> -->
<!-- <script src='../lib/moment.min.js'></script> -->
<!-- <script src='../lib/jquery.min.js'></script> -->
<!-- <script src='../fullcalendar.min.js'></script> -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%-- <div id="sessionValueHolder"> 
<script class="adduserSession" type="application/json">{userId:<%=userId%>}</script>
</div> --%>
<script>

	$(document).ready(function() {
		$.get({
			url: "xhr/getUserSessionValue.jsp",
			datatype:"application/json",
			success: function(json){
				alert(json);
				console.log(json);
			},
			error:function(result){
				console.log(result);
			}
		});
// 	    var element= $("#sessionValueHolder");
// 		var userSessionValue = element.find('script.adduserSession').text();
// 		alert(userSessionValue);
// 		console.log(userSessionValue);
// 		$('#calendar').fullCalendar({
// 			header: {
// 				left: 'prev,next today',
// 				center: 'title',
// 				right: 'month,agendaWeek,agendaDay'
// 			},
// 			defaultDate: '2017-11-12',
// 			navLinks: true, // can click day/week names to navigate views
// 			selectable: true,
// 			selectHelper: true,
// 			select: function(start, end) {
// 				var title = prompt('Event Title:');
// 				var eventData;
// 				if (title) {
// 					eventData = {
// 						title: title,
// 						start: start,
// 						end: end
// 					};
// 					$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
// 				}
// 				$('#calendar').fullCalendar('unselect');
// 			},
// 			editable: true,
// 			eventLimit: true, // allow "more" link when too many events
// 			events: [
// 				{
// 					title: 'All Day Event',
// 					start: '2017-11-01'
// 				},
// 				{
// 					title: 'Long Event',
// 					start: '2017-11-07',
// 					end: '2017-11-10'
// 				},
// 				{
// 					id: 999,
// 					title: 'Repeating Event',
// 					start: '2017-11-09T16:00:00'
// 				},
// 				{
// 					id: 999,
// 					title: 'Repeating Event',
// 					start: '2017-11-16T16:00:00'
// 				},
// 				{
// 					title: 'Conference',
// 					start: '2017-11-11',
// 					end: '2017-11-13'
// 				},
// 				{
// 					title: 'Meeting',
// 					start: '2017-11-12T10:30:00',
// 					end: '2017-11-12T12:30:00'
// 				},
// 				{
// 					title: 'Lunch',
// 					start: '2017-11-12T12:00:00'
// 				},
// 				{
// 					title: 'Meeting',
// 					start: '2017-11-12T14:30:00'
// 				},
// 				{
// 					title: 'Happy Hour',
// 					start: '2017-11-12T17:30:00'
// 				},
// 				{
// 					title: 'Dinner',
// 					start: '2017-11-12T20:00:00'
// 				},
// 				{
// 					title: 'Birthday Party',
// 					start: '2017-11-13T07:00:00'
// 				},
// 				{
// 					title: 'Click for Google',
// 					url: 'http://google.com/',
// 					start: '2017-11-28'
// 				}
// 			]
// 		});
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}

</style>
</head>

	
<body>

	<div id='calendar'></div>

</body>
</html>
