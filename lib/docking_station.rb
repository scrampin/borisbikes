require_relative 'bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full!' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

=begin This is what attr_reader does - this is a getter
  def bikes
    @bikes
  end
=end

end
