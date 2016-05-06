require 'colorizr'

class Tribe
  attr_reader :name, :members

  def initialize(options = {})
    @name = options[:name].capitalize
    @members = options[:members]
    puts "New tribe called #{name.yellow} is created: #{members.join(' ')}"
    #puts
  end

  def to_s
    @name
  end

  def tribal_council(options = {})
    immune = options[:immune]
    puts "#{immune.name.green} is immune from being eliminated from #{name.yellow}" if immune
    victims = members.clone
    victims.delete(immune)
    loser = victims.shuffle!(random: Random.new).first
    puts "#{loser.name.red} was eliminated from #{name.yellow}"
    @members.delete(loser)
  end
end
