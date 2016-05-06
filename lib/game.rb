class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = [tribe1, tribe2]
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    tribes.shuffle(random: Random.new).first
  end

  def clear_tribes
    @tribes.clear
  end

  def merge(tribe_name)
    new_tribe = Tribe.new({ name: tribe_name, members: @tribes[0].members + @tribes[1].members })
    clear_tribes
    add_tribe(new_tribe)
    new_tribe
  end

  def individual_immunity_challenge
    tribe = @tribes.first
    immune = tribe.members.shuffle(random: Random.new).first
    tribe.tribal_council(immune: immune)
  end
end
