# require modules here
require 'yaml'

def load_library
  # code goes here
def load_library(path)
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(path).each do |meaning, describe|
     eng, jan = describe
     emoticons["get_meaning"][jan] = meaning
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

def get_english_meaning
  # code goes here
  def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
end
