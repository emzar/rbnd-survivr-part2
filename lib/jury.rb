require 'colorizr'

class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes = { finalists.first => 0, finalists.last => 0 }
    @members.each_with_index do |member, index|
      winner = finalists.shuffle(random: Random.new)[1]
      votes[winner] += 1
      puts "#{member.name.blue}: #{winner.name}"
    end
    votes
  end

  def report_votes(votes)
    votes.each { |member, votes| puts "#{member} has #{votes} votes" }
  end

  def announce_winner(votes)
    votes.max_by { |_k, v| v }.first
  end
end
