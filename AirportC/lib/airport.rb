class Airport 
attr_accessor :planes, :capacity

    DEFAULT_CAPACITY = 10

def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
end

def land_planes(plane)
    raise "Airport is full - plane cannot land" if @planes.count >= @capacity
raise "Stormy weather - Plane cannot land" if stormy? 
@planes << plane
end 

def take_off(plane)
raise "Stormy weather - Plane cannot takeoff" if stormy? 
@planes.delete(plane)

end 

def plane_count
    @planes.count
end 

def stromy?
    rand(1..6) > 5
end 

end 