# require modules here
require 'pry'
require 'yaml'
# grades = Hash.new
# grades["Dorothy Doe"] = 9
def load_library(file_path)
  # code goes here
  emoticon_library = YAML.load(File.read('./lib/emoticons.yml')) #automatically creates a hash
  new_hash = Hash.new
  emoticon_library.each do |meaning, emoticon|
    new_hash[meaning] = {}
    new_hash[meaning][:english] = emoticon[0]
    new_hash[meaning][:japanese] = emoticon[1]
  end
  new_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
end

def get_english_meaning(path, emoticon)
  # code goes here
end
