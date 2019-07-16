require 'csv'
namespace :import do
  desc "import cross check data from CSV"
  task cross_check: :environment do
    CSV.foreach('./lib/data/game.csv', headers: true) do |row|
      Game.create(row.to_h)
    end
    CSV.foreach('./lib/data/team_info.csv', headers: true) do |row|
      Team.create(row.to_h)
    end
    CSV.foreach('./lib/data/game_teams_stats.csv', headers: true) do |row|
      GameTeamsStat.create(row.to_h)
    end
  end
end
