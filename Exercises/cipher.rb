=begin
  problem 
  input: array of strings 
  output: array of strings uncyphered

  each string is encrypted with rot13 encryption
  need to unrotate each character in the string (except space)

  Rules:
  Assume we ignore '-' and spaces 

  Example:
  "Nqn Ybirynpr"

  Data structure
  array of strings
  strings
  characters
  new array of strings

  Algorithm:

  Iterate over the array of string names
    split the names by spaces
      transform each of the characters in each name
        convert the character to integer
        add 13 to integer
        convert back to string
        
      


=end


def rot13(arr)
  arr.map do |full_name|
    full_name.split.map do |name|
      name.chars.map do |char|
        char_ascii = char.ord
        case char_ascii
          when (97..122) then lower_case(char_ascii).chr
          when (65..90) then upper_case(char_ascii).chr
          else char_ascii.chr
        end
      end.join
    end.join(' ')
  end
end
 

def lower_case(char)
  if char < 110
    overlap_diff = 109 - char
    122 - overlap_diff
  else
    char - 13
  end
end

def upper_case(char)
  if char < 78
    overlap_diff = 77 - char
    90 - overlap_diff
  else
    char - 13
  end

end

# names = ["Nqn Ybirynpr", "Tenpr Ubccre"]

names = ["Nqn Ybirynpr",
"Tenpr Ubccre",
"Nqryr Tbyqfgvar",
"Nyna Ghevat",
"Puneyrf Onoontr",
"Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
"Wbua Ngnanfbss",
"Ybvf Unvog",
"Pynhqr Funaaba",
"Fgrir Wbof",
"Ovyy Tngrf",
"Gvz Orearef-Yrr",
"Fgrir Jbmavnx",
"Xbaenq Mhfr",
"Fve Nagbal Ubner",
"Zneiva Zvafxl",
"Lhxvuveb Zngfhzbgb",
"Unllvz Fybavzfxv",
"Tregehqr Oynapu"]

p rot13(names)
