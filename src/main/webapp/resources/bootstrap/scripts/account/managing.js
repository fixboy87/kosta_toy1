$(document).ready(function() {
	
	$("#fullCalendar").fullCalendar({
		header: {
			left : 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		selectable: true,
		select: function(start, end, allDay) {
			
		},
		events: function(start, end, timezone, callback) {
			jQuery.ajax({
				url: '',
				type: 'POST',
				dataType: 'json',
				data: {
					start: start.format(),
					end: end.format()
				},
				success: function(data) {
					var events = [];
					if(!!data.result) {
						$.map(doc.result, function(r) {
							events.push({
								id: r.id,
								title: r.title,
								start: r.date_start,
								end: r.date_end
							});
						});
					}
					callback(events);
				}
			});
		}
		
	});

});

