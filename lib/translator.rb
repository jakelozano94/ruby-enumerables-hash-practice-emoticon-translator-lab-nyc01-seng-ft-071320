# require modules here
require "yaml"
require 'pry'

def load_library(yml)
  emo = YAML.load_file(yml)
  emo.each_with_object({}) do |(key, value), final_hash|
  final_hash[key] = {:english => value[0], :japanese => value[1]}
end
end

def get_japanese_emoticon(yml, usa)
  load_library(yml)
  final_hash.each do |key, value|
    if usa ==value[1]
      return value[0][0]
    end
  end
end

def get_english_meaning(yml, nip)
  load_library(yml)
  final_hash.each do |key, value|
    if nip == value[0]
      return value [1][0]
    end
  end
end