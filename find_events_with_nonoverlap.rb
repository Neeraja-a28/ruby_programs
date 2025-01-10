class FindEventsWithNonoverlap

# Two events are considered overlapping if their time intervals (from start to end) intersect or overlap in some way.
# Example of Overlapping Events: 
# Event A: Starts at 9:00 and ends at 10:00.
# Event B: Starts at 9:30 and ends at 10:30.

# Two events are considered non-overlapping if their time intervals do not intersect at all.
# Event A: Starts at 9:00 and ends at 10:00.
# Event C: Starts at 10:30 and ends at 12:00.


	def time_to_minutes(time)
		hours, minutes = time.split(":").map(&:to_i)
		return hours * 60 + minutes
	end

	def select_events(events)
		events.sort_by!{ |event| time_to_minutes(event[:start_time]) }

		selected_events = []
		total_revenue = 0
		last_end_time = 0

		events.each do |event|
			if time_to_minutes(event[:start_time]) >= last_end_time
				selected_events << event[:event_id]
				total_revenue += event[:revenue]
				last_end_time = time_to_minutes(event[:end_time])
			end
		end

		{ events: selected_events, revenue: total_revenue}
	end
end

events = [
    {"event_id": 1, "start_time": "9:00", "end_time": "10:00", "revenue": 100},
    {"event_id": 2, "start_time": "10:30", "end_time": "12:00", "revenue": 300},
    {"event_id": 3, "start_time": "11:00", "end_time": "12:30", "revenue": 200},
    {"event_id": 4, "start_time": "13:00", "end_time": "14:00", "revenue": 400},
]


 event = FindEventsWithNonoverlap.new
 puts event.select_events(events)