require"yaml" # require modules here

def load_library(filepath)
  # code goes here
  emoticons = YAML.load_file(filepath)
  
  emoticon_lib = {:get_meaning => {}, :get_emoticon => {}}
  
  emoticons.each do |meaning, value| #meaning = "angel", value = ["0:)", "☜(⌒▽⌒)☞"]
    english = value[0]
    japanese = value[1]
    emoticon_lib[:get_meaning][japanese] = meaning
    emoticon_lib[:get_emoticon][english] = japanese
  end 
  emoticon_lib
end

def get_japanese_emoticon(filepath, english_emoticon)
  # code goes here
  emoticon_lib = load_library(filepath)
  if emoticon_lib.include?
end

def get_english_meaning
  # code goes here
end