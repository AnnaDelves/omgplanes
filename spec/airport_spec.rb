require './airport'

describe Airport do

  let(:tobys_airport) { Airport.new }

  it 'has a capacity for planes' do
    expect(tobys_airport.capacity).to eq 20
  end

  it 'can accept planes' do
    annas_plane = Plane.new(tobys_airport)
    tobys_airport.land(annas_plane)
    expect(tobys_airport.planes.count).to eq 1
  end

  it 'returns an error when full' do
    20.times { tobys_airport.land(Plane.new(tobys_airport)) }
    expect{ tobys_airport.land(Plane.new(tobys_airport)) }.to raise_error "There's no space here you doughnut"
  end

end
