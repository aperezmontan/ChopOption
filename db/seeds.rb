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
