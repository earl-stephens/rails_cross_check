class Game < ApplicationRecord
  has_many :game_team_stats
  has_many :teams, through: :game_team_stats

  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
end
