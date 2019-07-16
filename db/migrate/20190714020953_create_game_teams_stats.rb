class CreateGameTeamsStats < ActiveRecord::Migration[5.2]
  def change
    create_table :game_teams_stats do |t|
      t.references :game, foreign_key: true
      t.references :team, foreign_key: true
      t.string :hoa
      t.boolean :won
      t.string :settled_in
      t.string :head_coach
      t.integer :goals
      t.integer :shots
      t.integer :hits
      t.integer :pim
      t.integer :powerPlayOpportunities
      t.integer :powerPlayGoals
      t.float :faceOffWinPercentage
      t.integer :giveaways
      t.integer :takeaways
      t.timestamps
    end
  end
end
