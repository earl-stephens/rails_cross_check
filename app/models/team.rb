class Team < ApplicationRecord
  has_many :game_team_stats
  has_many :games, through: :game_team_stats

  has_many :home_team_games, foreign_key: :home_team_id, class_name: 'Game'
  has_many :away_teams, through: :home_team_games

  has_many :away_team_games, foreign_key: :away_team_id, class_name: 'Game'
  has_many :home_teams, through: :away_team_games
end
