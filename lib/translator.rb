# require modules here
require 'pry'
require 'yaml'
# grades = Hash.new
# grades["Dorothy Doe"] = 9
def load_library(file_path)
  # code goes here
  emoticon_library = YAML.load(File.read('./lib/emoticons.yml')) #automatically creates a hash
  new_hash = Hash.new
  emoticon_library.each do |meaning, emoji|
    new_hash[meaning] = {}
    new_hash[meaning][:english] = emoji[0]
    new_hash[meaning][:japanese] = emoji[1]
  end
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticon = load_library(file_path)
  emoticon =
end
