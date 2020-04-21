class Airport

attr_reader :hanger

  def initialize
    @hanger = []
  end

  def take_off
    @hanger.sample
  end

  def land(plane)
    @hanger << plane
  end
end
