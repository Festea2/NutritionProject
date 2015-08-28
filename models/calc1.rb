require_relative "trip.rb"
# gc_columbus = ["S", "1"]

def return_trip_time(start, dest)
  trip2 = Trip.new("Columbus_Circle", "Grand_Central", 9, ["1", "S"],'<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d12088.308001632395!2d-73.98839553425857!3d40.76033113259129!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x89c258f63c9804b5%3A0xacca5e3d4112d7eb!2sColumbus+Cir%2C+New+York%2C+NY!3m2!1d40.7680441!2d-73.9823722!4m5!1s0x89c25a21fb011c85%3A0x37513b7f1821408b!2sGrand+Central+Terminal%2C+East+42nd+Street%2C+New+York%2C+NY!3m2!1d40.7527262!2d-73.9772294!5e0!3m2!1sen!2sus!4v1440768180490" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
  if start=="COLUMBUS CIRCLE" && dest=="GRAND CENTRAL"
    return trip2.trip_time
  else
    return "Not a Valid trip."
  end
end

def return_route(start, dest)
  trip2 = Trip.new("Columbus_Circle", "Grand_Central", 9, "Take Train 1 until Times Square. It will be the 2nd stop. Take train S until Grand Central. It will be your 3rd stop.",'<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d12088.308001632395!2d-73.98839553425857!3d40.76033113259129!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x89c258f63c9804b5%3A0xacca5e3d4112d7eb!2sColumbus+Cir%2C+New+York%2C+NY!3m2!1d40.7680441!2d-73.9823722!4m5!1s0x89c25a21fb011c85%3A0x37513b7f1821408b!2sGrand+Central+Terminal%2C+East+42nd+Street%2C+New+York%2C+NY!3m2!1d40.7527262!2d-73.9772294!5e0!3m2!1sen!2sus!4v1440768373886" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
  if start=="COLUMBUS CIRCLE" && dest=="GRAND CENTRAL"
    return trip2.trains
  else
    return "Not a valid trip."
  end
end


