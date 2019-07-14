# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_14_020953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_teams_stats", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "team_id"
    t.string "hoa"
    t.boolean "won"
    t.string "settled_in"
    t.string "head_coach"
    t.integer "goals"
    t.integer "shots"
    t.integer "hits"
    t.integer "pim"
    t.integer "powerPlayOpportunities"
    t.integer "powerPlayGoals"
    t.float "faceOffWinPercentage"
    t.integer "giveaways"
    t.integer "takeaways"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_teams_stats_on_game_id"
    t.index ["team_id"], name: "index_game_teams_stats_on_team_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "season"
    t.string "type"
    t.string "date_time"
    t.string "away_team_id"
    t.string "home_team_id"
    t.integer "away_goals"
    t.integer "home_goals"
    t.string "outcome"
    t.string "home_rink_side_start"
    t.string "venue"
    t.string "venue_link"
    t.string "venue_time_zone_id"
    t.integer "venue_time_zone_offset"
    t.string "venue_time_zone_tz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "franchiseId"
    t.string "shortName"
    t.string "teamName"
    t.string "abbreviation"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "game_teams_stats", "games"
  add_foreign_key "game_teams_stats", "teams"
end
