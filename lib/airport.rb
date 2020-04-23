class Airport

DEFULT_CAPACITY = 10
attr_reader :hanger, :capacity

  def initialize(cap=DEFULT_CAPACITY)
    @capacity = cap
    @hanger = []
  end

  def take_off
    @hanger.sample
  end

  def land(plane)
    raise 'Hanger is full' if @hanger.count >= @capacity
    @hanger << plane
  end
end
