# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  emo = YAML.load_file(file_path)
  emo.each_with_object({}) do |(key, value), final_hash|
  final_hash[key] = {:english => value[0], :japanese => value[1]}
end
end

def get_japanese_emoticon(file_path, usa)
  emoticons = load_library(file_path)
  emoticons.each do |key, value|
    value.each do |key2, value2|
    if usa ==value2[1]
      return value[0]
    end
    end
  end
end

def get_english_meaning(file_path, nip)
  emoticons = load_library(file_path)
  answer = ""
  if nip == ""
    answer = "Sorry, that emoticon was not found"
    return answer
  else
  emoticons.each do |key, value|
    value.each do |key2, value2|
    if nip == value2
      answer = key
    end
    end
  end
end
answer
end