# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here	  library = YAML.load_file(file_path)
  library = YAML.load_file(file_path)
  result = {:get_meaning => {}, :get_emoticon => {}}
  library.each do |meaning, emoticons|
    result[get_meaning][emoticons[1]] = meaning
    result[get_emoticon][emoticons[0]] = emoticons[1]
  end
  result
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
