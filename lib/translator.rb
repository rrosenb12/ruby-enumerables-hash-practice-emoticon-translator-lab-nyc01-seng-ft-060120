# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)
  # code goes here
  emoticon_library = YAML.load(File.read('./lib/emoticons.yml')) #automatically creates a hash
  new_hash = Hash.new
  binding.pry
  emoticon_library.each do |meaning, emoticon|
  # emoticon_library = Hash.new
    meaning => {}
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emoticon)
  # code goes here
end
