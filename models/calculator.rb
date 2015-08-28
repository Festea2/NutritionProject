require_relative "trip.rb"
# gc_columbus = ["S", "1"]



def return_trip_time(start, dest, trips_hash)
  if start=="GRAND CENTRAL" && dest=="COLUMBUS CIRCLE"
    return trips_hash[:trip1].trip_time
  elsif start=="GRAND CENTRAL" && dest=="UNION SQUARE"
    return trips_hash[:trip2].trip_time
  elsif start=="GEORGE WASHINGTON BUS STATION" || "GEORGE WASHINGTON BUS TERMINAL" && dest=="UNION SQUARE"
    return trips_hash[:trip3].trip_time
  elsif start=="72ND STREET" || "72ND STREET STATION" && dest=="NYU" || "NEW YORK UNIVERSITY"
    return trips_hash[:trip5].trip_time
  elsif start=="GREENWICH VILLAGE" && dest=="50TH STREET"
    return trips_hash[:trip4].trip_time
  else
    return "Not a Valid trip."
  end
end

def return_route(start, dest, trips_hash)

  if start=="GRAND CENTRAL" && dest=="COLUMBUS CIRCLE"
    return trips_hash[:trip1].trains
  elsif start=="GRAND CENTRAL" && dest=="UNION SQUARE"
    return trips_hash[:trip2].trains
  elsif start=="GEORGE WASHINGTON BUS STATION" || "GEORGE WASHINGTON BUS TERMINAL" && dest=="UNION SQUARE"
    return trips_hash[:trip3].trains
  elsif start=="72ND STREET" || "72ND STREET STATION" && dest=="NYU" || "NEW YORK UNIVERSITY"
    return trips_hash[:trip5].trains
  elsif start=="GREENWICH VILLAGE" && dest=="50TH STREET"
    return trips_hash[:trip4].trains
  else
    return "Not a valid trip."
  end
end

def return_map(start, dest, trips_hash)
  if start=="GRAND CENTRAL" && dest=="COLUMBUS CIRCLE"
    return trips_hash[:trip1].map
  elsif start=="GRAND CENTRAL" && dest=="UNION SQUARE"
    return trips_hash[:trip2].map
  elsif start=="GEORGE WASHINGTON BUS STATION" || "GEORGE WASHINGTON BUS TERMINAL" && dest=="UNION SQUARE"
    return trips_hash[:trip3].map
  elsif start=="72ND STREET" || "72ND STREET STATION" && dest=="NYU" || "NEW YORK UNIVERSITY"
    return trips_hash[:trip5].map
  elsif start=="GREENWICH VILLAGE" && dest=="50TH STREET"
    return trips_hash[:trip4].map
  else
    return "Not a Valid trip."
  end
end
