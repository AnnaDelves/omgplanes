class Plane

  attr_reader :destination, :location

  def initialize (location)
    @location = location
  end

  def set_destination(destination)
    @destination = destination
  end

end
