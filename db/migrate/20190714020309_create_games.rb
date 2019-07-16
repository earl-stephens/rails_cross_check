class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :season
      t.string :type
      t.string :date_time
      t.string :away_team_id
      t.string :home_team_id
      t.integer :away_goals
      t.integer :home_goals
      t.string :outcome
      t.string :home_rink_side_start
      t.string :venue
      t.string :venue_link
      t.string :venue_time_zone_id
      t.integer :venue_time_zone_offset
      t.string :venue_time_zone_tz
      t.timestamps
    end
  end
end
