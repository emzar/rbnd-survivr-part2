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

  def tribal_council(immune)
    victims = members
    victims.delete(immune)
    victims.shuffle(random: Random.new(members.length)).first
  end
end
