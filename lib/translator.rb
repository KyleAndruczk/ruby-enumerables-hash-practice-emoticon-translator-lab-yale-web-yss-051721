# require modules here
require "pry"
require "yaml"


def load_library(file)
  # code goes here
  lib = YAML.load_file(file)
  
  final_lib = lib.each_with_object({}) do |(key, val), fin_arr|
    fin_arr[key] = { :english=>val[0], :japanese=>val[1] }
  end 
  final_lib

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file, emote)
  # code goes here
  
  lib = load_library(file)
  fin_key = ""
  
  lib.each do |key, val|

    val.each do |inner_key, inner_val|
      if inner_val == emote
        fin_key += emote
      end
      binding.pry
    end
    
  end 
  
end