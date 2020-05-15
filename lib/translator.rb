# require modules here
require 'yaml'

def load_library(path)
    # code goes here
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(path).each do |meaning, describe|
     eng, jap = describe
     emoticons["get_meaning"][jap] = meaning
     emoticons["get_emoticon"][eng] = jan
  end
  emoticons
end

def get_japanese_emoticon
  # code goes here
  emoticons = load_library(path) #call load_library
result = emoticons["get_emoticon"][emoticon]
if result
  result
else
  "Sorry, that emoticon was not found"
end
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
