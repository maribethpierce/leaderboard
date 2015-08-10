def game_info
   [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 7,
      away_score: 3
    },
    {
      home_team: "Broncos",
      away_team: "Colts",
      home_score: 3,
      away_score: 0
    },
    {
      home_team: "Patriots",
      away_team: "Colts",
      home_score: 11,
      away_score: 7
    },
    {
      home_team: "Steelers",
      away_team: "Patriots",
      home_score: 7,
      away_score: 21
    }
  ]
end

# YOUR CODE HERE

class Team
  attr_accessor :name, :rank, :wins, :losses

  def initialize(name, rank = 0, wins = 0, losses = 0)
    @name = name
    @rank = rank
    @wins = wins
    @losses = losses
  end

end
def team_exist?(team_name, team_array)
    team = team_array.find { |t| t.name == team_name }

  if team.nil?
    team = Team.new(team_name)
    team_array << team
  end
  team
end
teams = []

game_info.each do |game|
  home_team = team_exist?(game[:home_team], teams)
  away_team = team_exist?(game[:away_team], teams)

  if game[:home_score] > game[:away_score]
    home_team.wins += 1
    away_team.losses += 1
  elsif game[:away_score] > game[:home_score]
    away_team.wins += 1
    home_team.losses += 1
  else
    puts "no game happened"
  end


puts home_team.class
end


puts teams




=begin
teams = []
game_info.each do |game|
  teams << game.fetch(:home_team)
  teams << game.fetch(:away_team)
end
teams = teams.uniq
team_list = []
teams.each do |team|
  team_list << Team.new(team[:name])
end

puts team_list
=end
