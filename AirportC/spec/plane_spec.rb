require 'plane'
require 'airport'

describe Plane do 
    let(:airport) {Airport.new}

    context 'weather is good' do
        before do 
            allow(airport).to receive(:stormy?).and_return(false)
        end 
     
    context 'plane is landed' do 
        let(:plane) {Plane.new(airport)}
        
        it 'instructs a plane to take off' do 
            expect(plane).to respond_to(:take_off_from_airport).with(1).argument
        end 

        it "cannot land if it is not flying and must be in airport" do
            expect { plane.landed_at_airport(airport)}.to raise_error("This plane has already landed")
        end 

        it 'confirms that the plane is no longer in the airport' do
            airport.planes << plane
            expect { plane.take_off_from_airport(airport) }.to change { airport.plane_count }.by(-1)
        end

        context 'plane is flying' do 
            let(:plane) {Plane.new(nil)}
            it "instructs a plane to land and increases the plane array by 1" do
                expect { plane.landed_at_airport(airport)}.to change { airport.plane_count}.by(1)
            end 
            
            it 'cannot take off and cannot be in an airport' do
                expect { plane.take_off_from_airport(airport)}.to raise_error("Plane cannot take off and be in an airport when flying")
            end 

            it 'prevents landing when the airport is full' do
                10.times do 
                    Plane.new.landed_at_airport(airport)
                end
                expect { plane.landed_at_airport(airport) }.to raise_error( "This plane has already landed")
            

            it 'instruct a plane to land' do
                expect { plane.landed_at_airport(airport) }.not_to raise_error
            end
                
                
                it 'lands and holds a plane in the planes array'
                expect { plane.landed_at_airport(airport) }.to change { airport.plane_count }.by(1)
            end 

        end 

        end 
    end 
    end 
