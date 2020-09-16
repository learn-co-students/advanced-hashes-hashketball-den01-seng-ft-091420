# Write your code below game_hash
require 'pry'
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

# Write code here


def all_players
    home_players = game_hash[:home][:players]
    away_players = game_hash[:away][:players]
    players = home_players.concat(away_players)
    # can be simplified to
    # game_hash[:home][:players].concat game_hash[:home][:players]
end



def find_player(name)
  all_players.find do |player|
    player[:player_name] == name
  end
end




def all_teams
  game_hash.values
end

def find_team(team_name)
  all_teams.find do |team|
    team[:team_name] == team_name
  end
end

def num_points_scored(player_name)
  find_player(player_name)[:points]
end

p num_points_scored("Kemba Walker")


# #method 1 -- success



def shoe_size player_name
  find_player(player_name)[:shoe]
end

p shoe_size("Kemba Walker")


#method 2 -- Success

def team_colors(team_name)

  if team_name == game_hash[:home][:team_name]
    p game_hash[:home][:colors]
  else
    p game_hash[:away][:colors]
  end
find_team(team_name)[:colors]

### can be refactored to
    # team_name == game_hash[:home][:team_name] ? game_hash[:home][:colors] : game_hash[:away][:colors]
end

#
#
def team_names
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end




#Helper methods
          def home_player_numbers
            game_hash[:home][:players].map do |key, value|
              key[:number]
            end
          end
          p home_player_numbers

          def away_player_numbers
            game_hash[:away][:players].map do |key, value|
              key[:number]
            end
          end
          p away_player_numbers
#End Helper Methods


def player_numbers(team_name)
  if team_name == "Brooklyn Nets"
    home_player_numbers
  else
    away_player_numbers
  end
end

p player_numbers("Brooklyn Nets")


def player_stats(player_name)
    all_players.find do |player|
      player[:player_name] == player_name
    end
    # binding.pry
end

p player_stats("Kemba Walker")


# end
#
# p player_numbers("Brooklyn Nets")
# #
#
#
#
# def player_numbers(team_name)
#   game_hash.each do |home_away, team_info|
#
#
# def player_stats (player_name)
#   find_player(player_name)
# end
