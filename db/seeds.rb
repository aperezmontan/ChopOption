# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.create(name: 'Admin', email: 'someemail@me.com', password: '123456a', admin: true)

Pool.create(name: '4 for 4', number_of_teams: '4', description: 'Choose 4 teams to beat the spread.  The player who picks all 4 teams correctly, wins! (A tie is considered a loss. If your entry isn\'t submitted by the start of the first game of the week, your entry will be void.)')
Pool.create(name: '6 for 6', number_of_teams: '6', description: 'Choose 6 teams to beat the spread.  The player who picks all 6 teams correctly, wins! (A tie is considered a loss. If your entry isn\'t submitted by the start of the first game of the week, your entry will be void.)')
Pool.create(name: 'Knockout', number_of_teams: '1', description: 'Choose 1 team a week to win.  Win and move on, lose and you\'re knocked out! Once you\'ve picked a team, you can\'t pick them again for the rest of the season. The player who lasts the longest, wins! (A tie is considered a loss. If your entry isn\'t submitted by the start of the first game of the week, your entry will be made at random.)')
Pool.create(name: 'Streak', number_of_teams: '13-16', description: 'Choose a winner for each game each week.  For each correct guess, you will be awarded one point.  The player with the most points at the end of the season, wins! (A tie is considered a loss. If your entry isn\'t submitted by the start of the first game of the week, your entry will be made at random.)')

# weekAttributes = [
#   {number: 1, start_date: '9/4/2014', end_date: '9/8/2014'},
#   {number: 2, start_date: , end_date: },
#   {number: 3, start_date: , end_date: },
#   {number: 4, start_date: , end_date: },
#   {number: 5, start_date: , end_date: },
#   {number: 6, start_date: , end_date: },
#   {number: 7, start_date: , end_date: },
#   {number: 8, start_date: , end_date: },
#   {number: 9, start_date: , end_date: },
#   {number: 10, start_date: , end_date: },
#   {number: 11, start_date: , end_date: },
#   {number: 12, start_date: , end_date: },
#   {number: 13, start_date: , end_date: },
#   {number: 14, start_date: , end_date: },
#   {number: 15, start_date: , end_date: },
#   {number: 16, start_date: , end_date: },
#   {number: 17, start_date: '12/28/2014', end_date: '12/28/2014'}
# ]

# week17 = Week.create{number: 17, start_date: '12/28/2014', end_date: '12/28/2014'}

# weekAttributes.each do |params|
#   begin
#     Week.create(params)
#   rescue => e
#     puts "Error #{e.message} with params #{params}"
#   end
# end

teamAttributes = [
  {name: 'Cardinals', location: 'Arizona', abbrev: 'ARZ'},
  {name: 'Falcons', location: 'Atlanta', abbrev: 'ATL'},
  {name: 'Ravens', location: 'Baltimore', abbrev: 'BAL'},
  {name: 'Bills', location: 'Buffalo', abbrev: 'BUF'},
  {name: 'Panthers', location: 'Carolina', abbrev: 'CAR'},
  {name: 'Bears', location: 'Chicago', abbrev: 'CHI'},
  {name: 'Bengals', location: 'Cincinatti', abbrev: 'CIN'},
  {name: 'Browns', location: 'Cleveland', abbrev: 'CLE'},
  {name: 'Cowboys', location: 'Dallas', abbrev: 'DAL'},
  {name: 'Broncos', location: 'Denver', abbrev: 'DEN'},
  {name: 'Lions', location: 'Detroit', abbrev: 'DET'},
  {name: 'Packers', location: 'Green Bay', abbrev: 'GBY'},
  {name: 'Texans', location: 'Houston', abbrev: 'HOU'},
  {name: 'Colts', location: 'Indianapolis', abbrev: 'IND'},
  {name: 'Jaguars', location: 'Jacksonville', abbrev: 'JAC'},
  {name: 'Chiefs', location: 'Kansas', abbrev: 'KCY'},
  {name: 'Dolphins', location: 'Miami', abbrev: 'MIA'},
  {name: 'Vikings', location: 'Minnesota', abbrev: 'MIN'},
  {name: 'Patriots', location: 'New England', abbrev: 'NWE'},
  {name: 'Saints', location: 'New Orleans', abbrev: 'NOR'},
  {name: 'Giants', location: 'New York', abbrev: 'NYG'},
  {name: 'Jets', location: 'New York', abbrev: 'NYJ'},
  {name: 'Raiders', location: 'Oakland', abbrev: 'OAK'},
  {name: 'Eagles', location: 'Philadelphia', abbrev: 'PHI'},
  {name: 'Steelers', location: 'Pittsburgh', abbrev: 'PIT'},
  {name: 'Chargers', location: 'San Diego', abbrev: 'SDO'},
  {name: 'Rams', location: 'St. Louis', abbrev: 'STL'},
  {name: '49ers', location: 'San Francisco', abbrev: 'SFO'},
  {name: 'Seahawks', location: 'Seattle', abbrev: 'SEA'},
  {name: 'Buccaneers', location: 'Tampa Bay', abbrev: 'TBY'},
  {name: 'Titans', location: 'Tennessee', abbrev: 'TEN'},
  {name: 'Redskins', location: 'Washington', abbrev: 'WAS'}
]

teamAttributes.each do |params|
  begin
    Team.create(params)
  rescue => e
    puts "Error #{e.message} with params #{params}"
  end
end

#   Cardinals = Team.create{name: 'Cardinals', location: 'Arizona', abbrev: 'ARZ'},
#   Falcons = Team.create{name: 'Falcons', location: 'Atlanta', abbrev: 'ATL'},
#   Ravens = Team.create{name: 'Ravens', location: 'Baltimore', abbrev: 'BAL'},
#   Bills = Team.create{name: 'Bills', location: 'Buffalo', abbrev: 'BUF'},
#   Panthers = Team.create{name: 'Panthers', location: 'Carolina', abbrev: 'CAR'},
#   Bears = Team.create{name: 'Bears', location: 'Chicago', abbrev: 'CHI'},
#   Bengals = Team.create{name: 'Bengals', location: 'Cincinatti', abbrev: 'CIN'},
#   Browns = Team.create{name: 'Browns', location: 'Cleveland', abbrev: 'CLE'},
#   Cowboys = Team.create{name: 'Cowboys', location: 'Dallas', abbrev: 'DAL'},
#   Broncos = Team.create{name: 'Broncos', location: 'Denver', abbrev: 'DEN'},
#   Lions = Team.create{name: 'Lions', location: 'Detroit', abbrev: 'DET'},
#   Packers = Team.create{name: 'Packers', location: 'Green Bay', abbrev: 'GBY'},
#   Texans = Team.create{name: 'Texans', location: 'Houston', abbrev: 'HOU'},
#   Colts = Team.create{name: 'Colts', location: 'Indianapolis', abbrev: 'IND'},
#   Jaguars = Team.create{name: 'Jaguars', location: 'Jacksonville', abbrev: 'JAC'},
#   Chiefs = Team.create{name: 'Chiefs', location: 'Kansas', abbrev: 'KCY'},
#   Dolphins = Team.create{name: 'Dolphins', location: 'Miami', abbrev: 'MIA'},
#   Vikings = Team.create{name: 'Vikings', location: 'Minnesota', abbrev: 'MIN'},
#   Patriots = Team.create{name: 'Patriots', location: 'New England', abbrev: 'NWE'},
#   Saints = Team.create{name: 'Saints', location: 'New Orleans', abbrev: 'NOR'},
#   Giants = Team.create{name: 'Giants', location: 'New York', abbrev: 'NYG'},
#   Jets = Team.create{name: 'Jets', location: 'New York', abbrev: 'NYJ'},
#   Raiders = Team.create{name: 'Raiders', location: 'Oakland', abbrev: 'OAK'},
#   Eagles = Team.create{name: 'Eagles', location: 'Philadelphia', abbrev: 'PHI'},
#   Steelers = Team.create{name: 'Steelers', location: 'Pittsburgh', abbrev: 'PIT'},
#   Chargers = Team.create{name: 'Chargers', location: 'San Diego', abbrev: 'SDO'},
#   Rams = Team.create{name: 'Rams', location: 'St. Louis', abbrev: 'STL'},
#   49ers = Team.create{name: '49ers', location: 'San Francisco', abbrev: 'SFO'},
#   Seahawks = Team.create{name: 'Seahawks', location: 'Seattle', abbrev: 'SEA'},
#   Buccaneers = Team.create{name: 'Buccaneers', location: 'Tampa Bay', abbrev: 'TBY'},
#   Titans = Team.create{name: 'Titans', location: 'Tennessee', abbrev: 'TEN'},
#   Redskins = Team.create{name: 'Redskins', location: 'Washington', abbrev: 'WAS'}

# gameAttributes = [
#   {name: 'Cardinals', location: 'Arizona', abbrev: 'ARZ'},
#   {name: 'Falcons', location: 'Atlanta', abbrev: 'ATL'},
#   {name: 'Ravens', location: 'Baltimore', abbrev: 'BAL'},
#   {name: 'Bills', location: 'Buffalo', abbrev: 'BUF'}
# ]

require 'csv'

ActiveRecord::Base.transaction do
  if Week.count == 0
    CSV.foreach(File.join(Rails.root, "db", "seed files", "Schedule.csv"), :headers => true, :encoding => 'UTF-8') do |row|
      row = row.to_hash
      week = Week.find_or_create_by(number: row['week'])
      week.games.build({home_team: Team.find_by(name: row['home_team']), away_team: Team.find_by(name: row['away_team']), start_time: row['start_time'], day_of_week: row['day_of_week']})
      if week.save
        game = Game.last
        puts "Created Week #{week.number} #{game.away_team.name} v #{game.home_team.name} @ #{game.start_time} on #{game.day_of_week}."
      else
        puts "COULD NOT CREATE Week #{row['week']} #{row['away_team']} v #{row['home_team']} @ #{row['start_time']} !"
      end
    end
  end
end