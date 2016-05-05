class Tribe
  attr_reader :name, :members

  def initialize(options = {})
    puts options[:name]
  end
end
