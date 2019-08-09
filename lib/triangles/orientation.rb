class Orientation
  def initialize(value)
    raise "Orientation must be :up or :down, got #{value}" unless %i[up down].include? value
    @value = value
  end

  def self.up
    self.new(:up)
  end

  def self.down
    self.new(:down)
  end

  def up?
    value == :up
  end

  def down?
    value == :down
  end

  def swap!
    @value = if up?
                :down
              else
                :up
              end
  end

  attr_reader :value
end
