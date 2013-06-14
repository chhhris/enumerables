## translate this code

## String.split, Array.each, Hash.each, Hash.sort_by, Range.to_a, Array.reverse, 
## Array.push, Array.join, String.gsub, Array.index
#
code = "fx1=ZY&iX3=ZW&hm5=ZU&dg7=ZS&ei9=ZQ&ge11=ZO&tr13=ZM&hh15=ZK&uX17=ZI&si19=ZG&tX21=ZE&Xn23=ZC&hp25=ZA&pX27=YY&dl29=YW&wo31=YU&XX33=YS&XX35=YQ&re37=YO&et39=YM&ia41=YK&wn43=YI&uo45=YG&dX47=YE&so49=YC&ec51=YA&do53=XY&sX55=XW&xr57=XU&so59=XS&aX61=XQ&ph63=XO&ni65=XM&nX67=XK&Xa69=XI&yX71=XG&aX73=XE&ei75=XC&ie0=ZZ&Xa2=ZX&Xy4=ZV&aX6=ZT&Xn8=ZR&in10=ZP&hp12=ZN&Xa14=ZL&os16=ZJ&rx18=ZH&Xs20=ZF&od22=ZD&ce24=ZB&os26=YZ&Xd28=YX&ou30=YV&nw32=YT&ai34=YR&te36=YP&er38=YN&XX40=YL&XX42=YJ&ow44=YH&ld46=YF&Xp48=YD&ph50=YB&nX52=XZ&Xt54=XX&is56=XV&Xu58=XT&hh60=XR&rt62=XP&eg64=XN&ie66=XL&gd68=XJ&mh70=XH&Xi72=XF&xf74=XD"
#
## this code was made to help you explore manipulation and enumerator of strings, arrays, and hashes
#
## instructions on decoding the string are below. try this first without looking at the instructions, and then refer to them as you need to to proceed throughout the assignment.
## 
## e.g. "fx1=ZY&" => 
### the first letter, f, is a character in the message
### the second letter, x, is a character in the message
### the first and second letters, ZY, are an encoded position number

code = "fx1=ZY&iX3=ZW&hm5=ZU&dg7=ZS&ei9=ZQ&ge11=ZO&tr13=ZM&hh15=ZK&uX17=ZI&si19=ZG&tX21=ZE&Xn23=ZC&hp25=ZA&pX27=YY&dl29=YW&wo31=YU&XX33=YS&XX35=YQ&re37=YO&et39=YM&ia41=YK&wn43=YI&uo45=YG&dX47=YE&so49=YC&ec51=YA&do53=XY&sX55=XW&xr57=XU&so59=XS&aX61=XQ&ph63=XO&ni65=XM&nX67=XK&Xa69=XI&yX71=XG&aX73=XE&ei75=XC&ie0=ZZ&Xa2=ZX&Xy4=ZV&aX6=ZT&Xn8=ZR&in10=ZP&hp12=ZN&Xa14=ZL&os16=ZJ&rx18=ZH&Xs20=ZF&od22=ZD&ce24=ZB&os26=YZ&Xd28=YX&ou30=YV&nw32=YT&ai34=YR&te36=YP&er38=YN&XX40=YL&XX42=YJ&ow44=YH&ld46=YF&Xp48=YD&ph50=YB&nX52=XZ&Xt54=XX&is56=XV&Xu58=XT&hh60=XR&rt62=XP&eg64=XN&ie66=XL&gd68=XJ&mh70=XH&Xi72=XF&xf74=XD"
codev2 = code.split('&')

codev3 = 
codev2.collect do |x|
  #split each string into two more strings
  x.split('=')
end

codev4 = codev3.flatten #turns array x arrays into a single array.

new_hash = Hash[*codev4]

  # take the v from every k:v pair and turn that into a number
  # create a method that converts the range (A .. ZZ) => (1 .. 256)

index_array = ("A".."ZZ").to_a.reverse


dictionary_hash = Hash.new
index_array.each_with_index { |element, index|
    #take the index_array and convert it into a Hash where the Key is the element in the array, and the Value is the index number +1 from the array  
    dictionary_hash[element] = index
}
dictionary_hash

# combine the key from new_hash with the value from index_hash
# to create a hash with key:values where Key = the characters, and Value = the index number

ordered_hash = Hash.new 
new_hash.each do |letters, order|
  #iterate through key from new_hash
  #cross-reference the value from new_hash and insert instead the value from dictionary_hash
  
  new_order = dictionary_hash[order] #call on value from dictionary_hash
  
  #where the Value from new_hash = the Key from dictionary_hash, return the dictionary_hash Value and input that into ordered_hash below
  
  ordered_hash[letters] = new_order
end
ordered_hash

ordered_array = ordered_hash.sort_by {|key, value| value}

letters_array = []
ordered_array.each do |letters|
  # iterate through the array and delete Index 1 from each array within the larger array
  letters_array << letters[0] #pull out index(0) from each array
end
letters_array

message_array = []
letters_array.each do |remove_num|
  # iterate through the array and use gsub to remove the numbers
  message_array << remove_num.gsub(/[0-99]/,'')
end
message_array

# THIS CODE BELOW IS WHERE WE LEFT OFF. IT DOES NOT WORK CURRENTLY:
# pen16_string = []
# message_array.each do |keep_first_char|
#   pen16_string << keep_first_char[0]
# end
# pen16_string

# pen16_string = message_array.join("")



# penultimate_string.gsub(/X/, " ")



# ========================================================================================================================

##
## to begin, the code is in a string that is a set of key, value pairs
## the structure is "k=v&k=v&k=v&k=v&k=v&..."
## so we want to construct a hash to reflect that

transform the string into a hash that looks like 
  {:fx1=>ZY, :iX3=>ZW, et al}

#s = 'keyA,valueA,keyB,valueB'
#
## the values here are position numbers for the character sets that can be manipulated to form the message, but right now they are encoded
## the code matches a number to a letter in the reverse range "A, B, C...XX, YY, ZZ"

the range (A .. ZZ) corresponds to (1 .. n) only reversed,

## build an array that can be used to translate the value position numbers

create an array that lets you sort the keys by their position number
e.g. transforms the range (A .. n) into [1 .. 52]

#
## now use that array to translate the values into position numbers

use the range above to sort the keys[:fx1 => 52, :iX3 => 51, et al]

#
##since the values are now in their correct form, sort the array by these values to order the character sets
#

order the keys in essentially reverse order 

##now that the character sets are in order, we don't need the position values anymore. let's take all the key values and put them into an array.
#
##turns out the array is really a mix of 2 arrays, separate each out into an even array and an odd array based on their index
#
##now make the array a string and replace the capital X's with spaces to get #your secret message
#
##BONUS:
##reverse engineer the encoder, encode a new message of your choice and test your decoder with it