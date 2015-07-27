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

weekAttributes = [
  {number: 1},{number: 2},{number: 3},{number: 4},{number: 5},{number: 6},{number: 7},{number: 8},{number: 9},{number: 10},{number: 11},{number: 12},{number: 13},{number: 14},{number: 15},{number: 16},{number: 17}
]

weekAttributes.each do |params|
  begin
    Week.create(params)
  rescue => e
    puts "Error #{e.message} with params #{params}"
  end
end

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
  {name: 'Redskins', location: 'Washington', abbrev: 'WAS'},
]

teamAttributes.each do |params|
  begin
    Team.create(params)
  rescue => e
    puts "Error #{e.message} with params #{params}"
  end
end