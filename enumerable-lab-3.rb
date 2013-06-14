## any?, all?, none?, yield, blocks

## hash of pokemon types
#POKEMON = [  {:name=>"pikachu", :type=>["electric"], :hp=>35},
#           {:name=>"charmander", :type=>["fire"], :hp=>39},
#           {:name=>"squirtle", :type=>["water"], :hp=>44},
#           {:name=>"geodude", :type=>["rock"], :hp=>40},
#           {:name=>"jynx", :type=>["ice", "psychic"], :hp=>65},
#           {:name=>"eevee", :type=>["normal"], :hp=>55},
#           {:name=>"abra", :type=>["psychic"], :hp=>35},
#           {:name=>"ponyta", :type=>["fire"], :hp=>50},
#           {:name=>"poliwag", :type=>["psychic", "water"], :hp=>40},
#       ]
#
## this is a method that will generate a random pokemon team for you
#def generateTeam
#   team = []
#   4.times do
#       team.push(POKEMON.sample)
#   end
#   team
#end
#
#myTeam = generateTeam
#
## create methods myAll, myAny, myNone to determine the solutions to the following statements
##
## def myAll
## end
#
## def myAny
## end
#
## def myNone
## end
#
#
## fill in the blanks by calling your methods to make the statements evaluate to true
#puts myTeam.all? {|pokemon| pokemon[:hp] >= 40} == _________
#puts myTeam.all? {|pokemon| pokemon[:type] == "psychic"} == _________
#puts myTeam.all? == _________
#
#puts myTeam.any? {|pokemon| pokemon[:hp] >= 40} == _________
#puts myTeam.any? {|pokemon| pokemon[:type] == "psychic"} == _________
#puts myTeam.any? == _________
#
#puts myTeam.none? {|pokemon| pokemon[:hp] >= 40} == _________
#puts myTeam.none? {|pokemon| pokemon[:type] == "psychic"} == _________
#puts myTeam.none? == _________
#
#puts myTeam._________ {|pokemon| pokemon[:hp] <= 50} == false
#puts myTeam._________ {|pokemon| pokemon[:type] == "water"} == true
#puts myTeam._________ {|pokemon| pokemon[:type] == "fire"} == false