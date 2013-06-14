## String.split, Array.each, Hash.each, Hash.sort_by, Range.to_a, Array.reverse, 
## Array.push, Array.join, String.gsub, Array.index

#
#code = "fx1=ZY&iX3=ZW&hm5=ZU&dg7=ZS&ei9=ZQ&ge11=ZO&tr13=ZM&hh15=ZK&uX17=ZI&si19=ZG&tX21=ZE&Xn23=ZC&hp25=ZA&pX27=YY&dl29=YW&wo31=YU&XX33=YS&XX35=YQ&re37=YO&et39=YM&ia41=YK&wn43=YI&uo45=YG&dX47=YE&so49=YC&ec51=YA&do53=XY&sX55=XW&xr57=XU&so59=XS&aX61=XQ&ph63=XO&ni65=XM&nX67=XK&Xa69=XI&yX71=XG&aX73=XE&ei75=XC&ie0=ZZ&Xa2=ZX&Xy4=ZV&aX6=ZT&Xn8=ZR&in10=ZP&hp12=ZN&Xa14=ZL&os16=ZJ&rx18=ZH&Xs20=ZF&od22=ZD&ce24=ZB&os26=YZ&Xd28=YX&ou30=YV&nw32=YT&ai34=YR&te36=YP&er38=YN&XX40=YL&XX42=YJ&ow44=YH&ld46=YF&Xp48=YD&ph50=YB&nX52=XZ&Xt54=XX&is56=XV&Xu58=XT&hh60=XR&rt62=XP&eg64=XN&ie66=XL&gd68=XJ&mh70=XH&Xi72=XF&xf74=XD"
#
## this code was made to help you explore manipulation and enumerator of strings, arrays, and hashes
#
## instructions on decoding the string are below. try this first without looking at the instructions, and then refer to them as you need to to proceed throughout the assignment.
## 
## e.g. "fx1=ZY&" => 
### the first letter, f, is a character in the message
### the second letter, x, is a character in the message
### the first and second letters, ZY, are an encoded position number
##
## to begin, the code is in a string that is a set of key, value pairs
## the structure is "k=v&k=v&k=v&k=v&k=v&..."
## so we want to construct a hash to reflect that
#
## the values here are position numbers for the character sets that can be manipulated to form the message, but right now they are encoded
## the code matches a number to a letter in the reverse range "A, B, C...XX, YY, ZZ"
## build an array that can be used to translate the value position numbers

# => take code and convert the string into an array splitting it on the & ampersand so that keys are even index and values are odd index. 
code.split('&')

## now use that array to translate the values into position numbers
# transform the contents of the array into an array made up of hashes (key:value pairs)

# take the string code, substitute the = sign for a : colon
# take the results of the previous action, and apply the .gsub method on it to convert to an array

code = "fx1=ZY&iX3=ZW&hm5=ZU&dg7=ZS&ei9=ZQ&ge11=ZO&tr13=ZM&hh15=ZK&uX17=ZI&si19=ZG&tX21=ZE&Xn23=ZC&hp25=ZA&pX27=YY&dl29=YW&wo31=YU&XX33=YS&XX35=YQ&re37=YO&et39=YM&ia41=YK&wn43=YI&uo45=YG&dX47=YE&so49=YC&ec51=YA&do53=XY&sX55=XW&xr57=XU&so59=XS&aX61=XQ&ph63=XO&ni65=XM&nX67=XK&Xa69=XI&yX71=XG&aX73=XE&ei75=XC&ie0=ZZ&Xa2=ZX&Xy4=ZV&aX6=ZT&Xn8=ZR&in10=ZP&hp12=ZN&Xa14=ZL&os16=ZJ&rx18=ZH&Xs20=ZF&od22=ZD&ce24=ZB&os26=YZ&Xd28=YX&ou30=YV&nw32=YT&ai34=YR&te36=YP&er38=YN&XX40=YL&XX42=YJ&ow44=YH&ld46=YF&Xp48=YD&ph50=YB&nX52=XZ&Xt54=XX&is56=XV&Xu58=XT&hh60=XR&rt62=XP&eg64=XN&ie66=XL&gd68=XJ&mh70=XH&Xi72=XF&xf74=XD"
codev2 = code.gsub(/[=]/, '=>')
codev3 = codev2.gsub(/[&]/, '&:')
codev4 = codev3.split('&')
codev4[0]=[":fx1=>ZY"]

#s = 'keyA,valueA,keyB,valueB'
code = "fx1=ZY&iX3=ZW&hm5=ZU&dg7=ZS&ei9=ZQ&ge11=ZO&tr13=ZM&hh15=ZK&uX17=ZI&si19=ZG&tX21=ZE&Xn23=ZC&hp25=ZA&pX27=YY&dl29=YW&wo31=YU&XX33=YS&XX35=YQ&re37=YO&et39=YM&ia41=YK&wn43=YI&uo45=YG&dX47=YE&so49=YC&ec51=YA&do53=XY&sX55=XW&xr57=XU&so59=XS&aX61=XQ&ph63=XO&ni65=XM&nX67=XK&Xa69=XI&yX71=XG&aX73=XE&ei75=XC&ie0=ZZ&Xa2=ZX&Xy4=ZV&aX6=ZT&Xn8=ZR&in10=ZP&hp12=ZN&Xa14=ZL&os16=ZJ&rx18=ZH&Xs20=ZF&od22=ZD&ce24=ZB&os26=YZ&Xd28=YX&ou30=YV&nw32=YT&ai34=YR&te36=YP&er38=YN&XX40=YL&XX42=YJ&ow44=YH&ld46=YF&Xp48=YD&ph50=YB&nX52=XZ&Xt54=XX&is56=XV&Xu58=XT&hh60=XR&rt62=XP&eg64=XN&ie66=XL&gd68=XJ&mh70=XH&Xi72=XF&xf74=XD"
code2 = code.gsub(/[=]/, ',')
Hash[nested_key_values.each*nested_key_values]

##since the values are now in their correct form, sort the array by these values to order the character sets

codev3.sort! { |x, y| x["value"] <=> y["value"] }
codev4 = codev3.sort_by { |k| k["value"] }
puts codev4

codev4.sort_by { |k, v| v }

##now that the character sets are in order, we don't need the position values anymore. let's take all the key values and put them into an array.
#
##turns out the array is really a mix of 2 arrays, separate each out into an even array and an odd array based on their index
#
##now make the array a string and replace the capital X's with spaces to get #your secret message
#
##BONUS:
##reverse engineer the encoder, encode a new message of your choice and test your decoder with it