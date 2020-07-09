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
  final_hash.each do |key, value|
    if usa ==value[1]
      return value[0][0]
    end
  end
end

def get_english_meaning(file_path, nip)
  load_library(file_path)
  final_hash.each do |key, value|
    if nip == value[0]
      return value [1][0]
    end
  end
end