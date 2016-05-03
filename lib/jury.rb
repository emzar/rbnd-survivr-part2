class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes = {}
    finalists.each { |finalist| votes.merge!(finalist => 0) }
    @members.each_with_index do |member, index|
      winner = finalists.shuffle(random: Random.new(index))[1]
      votes[winner] += 1
      puts "#{member}: #{winner.name}"
    end
    votes
  end
end
