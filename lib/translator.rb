# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  emo = YAML.load_file(file_path)
  emo.each_with_object({}) do |(key, value), final_hash|
  final_hash[key] = {:english => value[0], :japanese => value[1]}
end
end

def get_japanese_emoticon(file_path, a_emoticon)
  emoticons = load_library(file_path)
  answer = ""
  if usa = ""
    answer = "Sorry, that emoticon was not found"
    puts answer
  else
  emoticons.each do |emotion, lang|
    lang.each do |inner_key, emoticon|
    if usa == emoticon
    answer = emoticon
    end
    end
  end
  end
  answer
end

def get_english_meaning(file_path, nip)
  emoticons = load_library(file_path)
  answer = ""
  apology = "Sorry, that emoticon was not found"
  if nip == ""
    answer = apology
    puts answer
  else
  emoticons.each do |key, value|
    value.each do |key2, value2|
    if nip == value2
      answer = key
    end
  else
    answer = apology
  end
    end
end
answer
end