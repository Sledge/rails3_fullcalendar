// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {

	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	
	$('#calendar').fullCalendar({
		editable: true,
		
		header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        defaultView: 'month',
        height: 500,
        slotMinutes: 15,

        loading: function(bool){
            if (bool) 
                $('#loading').show();
            else 
                $('#loading').hide();
        },
        events: "/events",
        timeFormat: 'h:mm t{ - h:mm t} ',
        dragOpacity: "0.5",

        eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc){
//              if (confirm("Are you sure about this change?")) {
//      moveEvent(event, dayDelta, minuteDelta, allDay);
//              }
//              else {
//                  revertFunc();
//              }
        },

        eventResize: function(event, dayDelta, minuteDelta, revertFunc){
//              if (confirm("Are you sure about this change?")) {
//      resizeEvent(event, dayDelta, minuteDelta);
//              }
//              else {
//                  revertFunc();
//              }
        },

        eventClick: function(event, jsEvent, view){
//            showEventDetails(event);
        },



	});
	
});