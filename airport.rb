class Airport

  attr_reader :capacity, :planes

  def initialize
    @capacity = 20
    @planes = []
  end

  def land(plane_name)
    if @planes.count <= 20
      raise_error "There's no space here you doughnut"
    end
    @planes << plane_name
  end

end
