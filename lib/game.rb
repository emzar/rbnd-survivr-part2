class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = [tribe1, tribe2]
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    tribes.first
  end

  def clear_tribes
    @tribes.clear
  end

  def merge(tribe_name)
    @merged_tribe = Tribe.new({ name: tribe_name, members: @tribes[0].members + @tribes[1].members })
    @merged_tribe
  end

  def individual_immunity_challenge
    @tribes.first.members.shuffle(random: Random.new(@tribes.first.members.length)).first
  end
end
