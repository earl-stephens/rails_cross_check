class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :franchiseId
      t.string :shortName
      t.string :teamName
      t.string :abbreviation
      t.string :link
      t.timestamps
    end
  end
end
