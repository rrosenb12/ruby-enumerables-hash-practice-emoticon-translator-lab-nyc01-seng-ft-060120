# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)
  # code goes here
  emoticon_library = YAML.load(File.read('./lib/emoticons.yml')) #automatically creates a hash
  emoticon_library do |meaning, emoticon|
  binding.pry
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emoticon)
  # code goes here
end
