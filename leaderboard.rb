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

  def initialize(name, rank = 0, wins = 0, losses = 0)
    @name = name
    @rank = rank
    @wins = wins
    @losses = losses
  end

  def name
    @name
  end

  def rank
    @rank
  end

  def wins
    @wins
  end

  def losses
    @losses
  end

end

teams = []
game_info.each do |game|
  teams << game.fetch(:home_team)
  teams << game.fetch(:away_team)
end
teams = teams.uniq
team_list = []
teams.each do |team|
  team_list << Team.new(team)
end
puts team_list[1].class
