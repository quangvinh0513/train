


def save_game(characters)
  # to_s write out from character to yaml string
  yaml = YAML::dump(characters)

  # create new GameFile object 
  game_file = GameFile.new("/my_game/saved.yaml")

  # save data
  game_file.write(yaml)
end

def load_game
  game_file = GameFile.new("/my_game/saved.yaml")
  yaml = game_file.read
  # from_s read out
  YAML::load(yaml)
end