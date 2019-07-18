# README

This repo is meant for practice generating API endpoints.  It uses the Mod1 Cross Check data and user stories as a starting point.

## Setup

Fork and clone down the repo.  Run `bundle install`, then `rake db:{create,migrate}`.  Next, import the data using `rake import:cross_check`.

## Record Endpoints

### Index

- Each data category should include an index action which renders a JSON representation of all the appropriate records:


* GET /api/v1/teams
* GET /api/v1/games
* GET /api/v1/game_teams_stats

### Show

- Each data category should include a show action which renders a JSON representation of the appropriate record.  For example:

* GET /api/v1/teams/1

### Single Finders

- Each data category should offer find finders to return a single object representation. The finder should work with any of the attributes defined on the data type and always be case insensitive.  Use the schema to determine which attributes to pass in as a parameter.  An example URL is:

* GET /api/v1/teams/find?parameters

### Multi Finders

- Each category should offer find_all finders which should return all matches for the given query. It should work with any of the attributes defined on the data type and always be case insensitive.  Use the schema to determine which attributes to pass in as a parameter.  An example URL is:

* GET api/v1/merchants/find_all?parameters

### Random

- Returns a random resource.  An example URL is:

* GET api/v1/games/random

### Relationship Endpoints

- Use the schema to determine resource relationships and then return those relationships.  An example may be:

* GET /api/v1/teams/:id/game_teams_stats

## ActiveRecord Endpoints

#### Game Statistics

* `highest_total_score` -	Highest sum of the winning and losing teams’ scores.  Returns an integer.

* `lowest_total_score` -Lowest sum of the winning and losing teams’ scores.  Returns an integer.

* `biggest_blowout` -	Highest difference between winner and loser.  Returns an integer.

* `percentage_home_wins` -Percentage of games that a home team has won (rounded to the nearest 100th).  Returns a float.

* `percentage_visitor_wins` -	Percentage of games that a visitor has won (rounded to the nearest 100th).  Returns a float.

* `count_of_games_by_season` - A hash with season names (e.g. 20122013) as keys and counts of games as values.  Returns a hash.

* `average_goals_per_game` - Average number of goals scored in a game across all seasons including both home and away goals (rounded to the nearest 100th).  Returns a float.

* `average_goals_by_season` - Average number of goals scored in a game organized in a hash with season names (e.g. 20122013) as keys and a float representing the average number of goals in a game for that season as a key (rounded to the nearest 100th).  Returns a hash.

#### League Statistics

* `count_of_teams` - Total number of teams in the data. 	Returns an integer.

* `best_offense` - Name of the team with the highest average number of goals scored per game across all seasons. 	Returns a string.

* `worst_offense` 	Name of the team with the lowest average number of goals scored per game across all seasons. 	Returns a string.

* `best_defense` - Name of the team with the lowest average number of goals allowed per game across all seasons. 	Returns a string.

* `worst_defense` 	Name of the team with the highest average number of goals allowed per game across all seasons. 	Returns a string.

* `highest_scoring_visitor` - Name of the team with the highest average score per game across all seasons when they are away. 	Returns a string.

* `highest_scoring_home_team` - Name of the team with the highest average score per game across all seasons when they are home. 	Returns a string.

* `lowest_scoring_visitor` - Name of the team with the lowest average score per game across all seasons when they are a visitor. 	Returns a string.

* `lowest_scoring_home_team` - Name of the team with the lowest average score per game across all seasons when they are at home. 	Returns a string.

* `winningest_team` - Name of the team with the highest win percentage across all seasons. 	Returns a string.

* `best_fans` - Name of the team with biggest difference between home and away win percentages. 	Returns a string.

* `worst_fans` 	List of names of all teams with better away records than home records. 	Returns an array.

#### Team Statistics

* `team_info` - A hash with key/value pairs for each of the attributes of a team. 	Returns a hash.

* `best_season` - Season with the highest win percentage for a team. 	Returns an integer.

* `worst_season` - Season with the lowest win percentage for a team. 	Returns an integer.

* `average_win_percentage` - Average win percentage of all games for a team. 	Returns a float.

* `most_goals_scored` - Highest number of goals a particular team has scored in a single game. 	Returns an integer.

* `fewest_goals_scored` - Lowest numer of goals a particular team has scored in a single game. 	Returns an integer.

* `favorite_opponent` - Name of the opponent that has the lowest win percentage against the given team. 	Returns a string.

* `rival` 	Name of the opponent that has the highest win percentage against the given team. 	Returns a string.

* `biggest_team_blowout` - Biggest difference between team goals and opponent goals for a win for the given team. 	Returns an integer.

* `worst_loss` - Biggest difference between team goals and opponent goals for a loss for the given team. 	Returns an integer.

* `head_to_head` - Record (as a hash - win/loss) against all opponents with the opponents’ names as keys and the win percentage against that opponent as a value. 	Returns a hash.

* `seasonal_summary` - For each season that the team has played, a hash that has two keys (:regular_season and :postseason), that each point to a hash with the following keys: :win_percentage, :total_goals_scored, :total_goals_against, :average_goals_scored, :average_goals_against. 	Returns a hash.

#### Season Statistics

* `biggest_bust` 	Name of the team with the biggest decrease between regular season and postseason win percentage. 	Returns a string.

* `biggest_surprise` - Name of the team with the biggest increase between regular season and postseason win percentage. 	Returns a string.

* 

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
