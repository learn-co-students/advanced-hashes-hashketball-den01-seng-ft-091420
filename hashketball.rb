require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player)
  
  game_hash.each do |home_away,team_info|
    team_info[:players].each do |stats|
      if stats[:player_name] == player
        return stats[:points]
      end
    end
  end
end

def shoe_size(player)
  
  game_hash.each do |home_away,team_info|
    team_info[:players].each do |stats|
      if stats[:player_name] == player
        return stats[:shoe]
      end
    end
  end
end

def team_colors(team)
  
  game_hash.each do |home_away,team_info|
    if team_info[:team_name] == team
      return team_info[:colors]
      end
  end
end

def team_names()
  teams = []
  
  game_hash.each do |home_away,team_info|
    teams << team_info[:team_name]
    end
    teams
end

def player_numbers(team)
  team_numbers = []
  
  game_hash.each do |home_away,team_info|
    team_info[:players].each do |stats|
     if team_info[:team_name] == team
      team_numbers << stats[:number]
      end
    end
  end
  team_numbers
end

def player_stats(player)
  
  game_hash.each do |home_away,team_info|
    team_info[:players].each do |stats|
      if stats[:player_name] == player
        return stats
      end
    end
  end
end
  
def big_shoe_rebounds()
  big_foot = 0
  big_foot_boards = 0
  big_foot_name = ""
  
  game_hash.each do |home_away,team_info|
    team_info[:players].each do |stats|
      if stats[:shoe] > big_foot
        big_foot = stats[:shoe]
        big_foot_boards = stats[:rebounds]
        big_foot_name = stats[:player_name]
      end
    end
  end
  big_foot_boards
end


# Which player has the most points? Call the method most_points_scored.

def most_points_scored()

max_points = 0
max_points_player = ""

game_hash.each do |team,attributes|
  attributes[:players].each do |player_stats|
    if player_stats[:points] > max_points
      max_points = player_stats[:points]
      max_points_player = player_stats[:player_name]
      end
    end
  end
  max_points_player
end

most_points_scored

# Which team has the most points? Call the method winning_team.

def winning_team()

home_array = []
away_array = []

game_hash.each do |team,attributes|
  attributes[:players].each do |player_stats|
    
    if attributes[:team_name] == "Brooklyn Nets"
    home_array << player_stats[:points]
    
    else
    away_array << player_stats[:points]
    
  
      end
    end
  end
  if home_array.reduce(0){|total,num| total + num} > away_array.reduce(0){|total,num| total + num}
  winner = "Brooklyn Nets"
  else winner = "Charlotte Hornets"
  end
  winner
end

winning_team

# Which player has the longest name? Call the method player_with_longest_name.

def player_with_longest_name()

longest_name_characters = 0
longest_name_player = ""

game_hash.each do |team,attributes|
  attributes[:players].each do |player_stats|
    if player_stats[:player_name].length > longest_name_characters
      longest_name_characters = player_stats[:player_name].length
      longest_name_player = player_stats[:player_name]
      end
    end
  end
  longest_name_player
end

player_with_longest_name


# Write a method that returns true if the player with the longest name had the most steals. Call the method long_name_steals_a_ton?

def long_name_steals_a_ton()

longest_name_characters = 0
longest_name_player = ""

game_hash.each do |team,attributes|
  attributes[:players].each do |player_stats|
    if player_stats[:player_name].length > longest_name_characters
      longest_name_characters = player_stats[:player_name].length
      longest_name_player = player_stats[:player_name]
      end
    end
  end

max_steals = 0
max_steals_player = ""

game_hash.each do |team,attributes|
  attributes[:players].each do |player_stats|
    if player_stats[:steals] > max_steals
      max_steals = player_stats[:steals]
      max_steals_player = player_stats[:player_name]
      end
    end
  end
  longest_name_player == max_steals_player
end

long_name_steals_a_ton


