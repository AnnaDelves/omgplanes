require './plane'

  describe Plane do

    it 'sets the location of the plane when initialized' do
      annas_plane = Plane.new("stansted")
      expect(annas_plane.location).to eq "stansted"
    end

    it 'can be given a destination' do
      annas_plane = Plane.new("stansted")
      annas_plane.set_destination("heathrow")
      expect(annas_plane.destination).to eq "heathrow"
    end

  end
