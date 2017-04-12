require 'dockingstation.rb'

describe DockingStation do



  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}

      it "raises error when no bike" do
        expect{subject.release_bike}.to raise_exception "No Bikes Available to release"
      end

    #it "releases a bike" do
    #  bike = Bike.new
      #expect(bike).to be_instance_of(Bike)
      #expect(bike).to be_working
    #  expect(subject.release_bike).to eq bike
    #end
  end


  it {is_expected.to respond_to(:dock).with(1).argument}

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns a bike" do
    bike  = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
