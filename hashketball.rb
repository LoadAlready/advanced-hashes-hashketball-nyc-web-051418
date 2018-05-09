require "pry"

def game_hash
{
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1,
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7,
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15,
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5,
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1,
        },
      },
    },
      :away => {
        :team_name => "Charlotte Hornets",
        :colors => ["Turquoise", "Purple"],
        :players => {
          "Jeff Adrien" => {
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2,
          },
          "Bismak Biyombo" => {
            :number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 7,
            :blocks => 15,
            :slam_dunks => 10,
          },
          "DeSagna Diop" => {
            :number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5,
          },
          "Ben Gordon" => {
            :number => 8,
            :shoe => 15,
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0,
          },
          "Brendan Haywood" => {
            :number => 33,
            :shoe => 15,
            :points => 6,
            :rebounds => 12,
            :assists => 12,
            :steals => 22,
            :blocks => 5,
            :slam_dunks => 12,
          },
      },
    }
  }
end

def num_points_scored(player_scored)
   score = 0
   game_hash.each do |key, value|
     if game_hash[key][:players].include?(player_scored)
       score = game_hash[key][:players][player_scored][:points]
   end
 end
   score
end

def shoe_size(player)
  size = nil
  game_hash.each do |key, value|
    if game_hash[key][:players].include?(player)
      size = game_hash[key][:players][player][:shoe]
  end
end
  size
end

def team_colors(team)
  color = nil
  game_hash.each do |key, value|
    if game_hash[key][:team_name].include?(team)
      color = game_hash[key][:colors]
    end
  end
  color
end

def team_names
  names = []
  game_hash.each do |side, team|
    names << game_hash[side][:team_name]
  end
  names
end

def player_numbers(name)
  numbers = []
  game_hash.each do |side, team|
    if game_hash[side][:team_name].include?(name)
      game_hash[side][:players].each do |name, number|
        numbers << game_hash[side][:players][name][:number]
      end
    end
  end
  numbers
end

def player_stats(name)
  game_hash.each do |side, attribute|
    if game_hash[side][:players].include?(name)
      return game_hash[side][:players][name]
    end
  end
end

def big_shoe_rebounds
  shoe_sizes = []
  game_hash.collect do |k, v|
    game_hash[k][:players].collect do |key, value|
      shoe_sizes << game_hash[k][:players][key][:shoe]
    if game_hash[k][:players][key][:shoe] == shoe_sizes.max
      return game_hash[k][:players][key][:rebounds]
    end
    end
  end
end
