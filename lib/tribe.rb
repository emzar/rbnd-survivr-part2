class Tribe
  attr_reader :name, :members

  def initialize(options = {})
    puts options[:name].capitalize
    @name = options[:name].capitalize
    @members = options[:members]
  end

  def to_s
    @name
  end

  def tribal_council(options = {})
    immune = options[:immune]
    puts "#{immune.name} is immune from being eliminated from #{name}" if immune
    victims = members
    victims.delete(immune)
    loser = victims.shuffle!(random: Random.new).first
    puts "#{loser.name} was eliminated from #{name}"
    @members.delete(loser)
  end
end
