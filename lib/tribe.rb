class Tribe
  attr_reader :name, :members

  def initialize(options = {})
    puts options[:name]
    @name = options[:name]
    @members = options[:members]
  end

  def to_s
    @name
  end

  def tribal_council(options = {})
    immune = options[:immune]
    victims = members
    victims.delete(immune)
    loser = victims.shuffle!(random: Random.new).shift
    @members = victims
    @members.push(immune) if immune
    loser
  end
end
