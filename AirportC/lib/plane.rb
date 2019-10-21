class Plane 
attr_reader :landed

def initialize(landed = nil)
    @landed = landed
end 

def flying?
    @landed == nil
end 

def landed_at_airport(airport)
    raise "This plane has already landed" if flying? == false
    airport.land_planes(self)
    @landed = airport
end 

def take_off_from_airport(airport)
raise "Plane cannot take off and be in an airport when flying" if landed = nil 
raise "plane is no at this airport" if landed != airport
airport.take_off(self)
@landed = nil 
end 

end 