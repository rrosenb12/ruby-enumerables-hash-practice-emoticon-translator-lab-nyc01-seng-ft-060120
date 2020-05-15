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

def get_english_meaning(file_path, emoticon)
  # code goes here
  new_hash = load_library(file_path)
  new_hash.keys.find do |meaning|
    if new_hash[meaning][:japanese] == emoticon
      return meaning
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  new_hash = load_library(file_path)
  new_hash.keys.find do |meaning|
    if new_hash[meaning][:english] == emoticon
      return new_hash[meaning][:japanese]
    end
  end
  "Sorry, that emoticon was not found"
end
