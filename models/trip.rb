
class Trip
attr_accessor :start, :dest, :trip_time, :trains, :map
  def initialize (start, dest, trip_time, trains, map)
    @start = start
    @dest = dest
    @trip_time=trip_time
    @trains=trains
    @map=map
  end

  def reverse_trains
	  return @trains.reverse
  end

  def reverse_start
    return @dest
  end

  def reverse_dest
    return @start
  end
end


  


