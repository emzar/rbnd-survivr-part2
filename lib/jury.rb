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
    @members.each { |_member| puts "0" }
    finalists.each { |finalist| votes.merge!(finalist => 0) }
    votes
  end
end
