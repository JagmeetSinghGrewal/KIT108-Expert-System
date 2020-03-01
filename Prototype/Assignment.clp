(defrule main-gender
(initial-fact)
=>
(printout t "--------------------------------------------"crlf)
(printout t "  Game Of Thrones Character Identification  "crlf)
(printout t "                Expert System               "crlf)
(printout t "           By:Jagmeet Singh Grewal          "crlf)
(printout t "--------------------------------------------"crlf)
(printout t "Is your character male or female?(male/female)")
(assert(why))
(assert(gender(read))))

;======================================================================
(defrule character-gender-male
(gender male)
=>
(printout t "Is your character in Essos or Westeros?(essos/westeros)")
(assert(essos-or-westeros-male(read))))
;======================================================================
(defrule male-character-continent-essos
(essos-or-westeros-male essos)
=>
(printout t "Is your character originally from Westeros?(yes/no)"crlf)
(assert(male-from-westeros(read))))
;======================================================================
(defrule male-character-origin-westeros-yes 
(male-from-westeros yes)
=>
(printout t "Does your character have white hair?(yes/no)"crlf)
(assert(white-hair(read))))
;======================================================================
(defrule white-hair-yes
(white-hair yes)
=>
(printout t "Your Character is Viserys Targaryen"crlf)
(bind $?character Viserys-Targaryen)
(assert(character-is $?character)))
;======================================================================
(defrule white-hair-no
(white-hair no)
=>
(printout t "Your Character is Jorah Mormont"crlf)
(bind $?character Jorah-Mormont)
(assert(character-is $?character)))
;======================================================================
(defrule male-character-origin-westeros-no 
(male-from-westeros no)
=>
(printout t "Is your character a Dothraki?(yes/no)"crlf)
(assert(is-dothraki(read))))
;======================================================================
(defrule character-dothraki-yes
(is-dothraki yes)
=>
(printout t "Your Character is Khal Drogo"crlf)
(bind $?character Khal-Drogo)
(assert(character-is $?character)))
;======================================================================
(defrule character-dothraki-no
(is-dothraki no)
=>
(printout t "Your Character is Illyrio Mopatis"crlf)
(bind $?character Illyrio-Mopatis)
(assert(character-is $?character)))
;======================================================================
(defrule male-character-continent-westeros
(essos-or-westeros-male westeros)
=>
(printout t "Is your character in King's Landing?(yes/no)"crlf)
(assert(in-kings-landing(read))))
;======================================================================
(defrule in-kings-landing-yes
(in-kings-landing yes)
=>
(printout t "Is your character a part of the Royal Family?(yes/no)"crlf)
(assert(is-royalty(read))))
;======================================================================
(defrule is-royalty-yes
(is-royalty yes)
=>
(printout t "Does you character have Golden Hair?(yes/no)"crlf)
(assert(golden-hair(read))))
;======================================================================
(defrule golden-hair-yes
(golden-hair yes)
=>
(printout t "Your character is Joffery Baratheon"crlf)
(bind $?character Joffery-Baratheon)
(assert(character-is $?character)))
;======================================================================
(defrule golden-hair-no
(golden-hair no)
=>
(printout t "Your character is Robert Baratheon"crlf)
(bind $?character Robert-Baratheon)
(assert(character-is $?character)))
;======================================================================
(defrule is-royalty-no
(is-royalty no)
=>
(printout t "Is your character a Lannister?(yes/no)"crlf)
(assert(is-lannister(read))))
;======================================================================
(defrule is-lannister-yes
(is-lannister yes)
=>
(printout t "Is your character a part of the King's Guard?"crlf)
(assert(in-kings-guard(read))))
;======================================================================
(defrule in-kings-guard-yes
(in-kings-guard yes)
=>
(printout t "Your character is Jamie Lannister"crlf)
(bind $?character Jamie-Lannister)
(assert(character-is $?character)))
;======================================================================
(defrule in-kings-guard-no
(in-kings-guard no)
=>
(printout t "Your character is Tyrion Lannister"crlf)
(bind $?character Tyrion-Lannister)
(assert(character-is $?character)))
;======================================================================
(defrule is-lannister-no
(is-lannister no)
=>
(printout t "Is your character in the Small Council?(yes/no)"crlf)
(assert(in-small-council(read))))
;======================================================================
(defrule in-small-council-yes
(in-small-council yes)
=>
(printout t "Your character is Littlefinger"crlf)
(bind $?character Littlefinger)
(assert(character-is $?character)))
;======================================================================
(defrule in-small-council-no
(in-small-council no)
=>
(printout t "Your character is Barristan Selmy"crlf)
(bind $?character Barristan-Selmy)
(assert(character-is $?character)))
;======================================================================
(defrule in-kings-landing-no
(in-kings-landing no)
=>
(printout t "Is your character at the Wall?(yes/no)"crlf)
(assert(at-wall(read))))
;======================================================================
(defrule at-wall-yes
(at-wall yes)
=>
(printout t "Your character is Jon Snow"crlf)
(bind $?character Jon-Snow)
(assert(character-is $?character)))
;======================================================================
(defrule at-wall-no
(at-wall no)
=>
(printout t "Does your character have a Greatsword?(yes/no)"crlf)
(assert(have-greatsword(read))))
;======================================================================
(defrule have-greatsword-yes
(have-greatsword yes)
=>
(printout t "Your character is Ned Stark"crlf)
(bind $?character Ned-Stark)
(assert(character-is $?character)))
;======================================================================
(defrule have-greatsword-no
(have-greatsword no)
=>
(printout t "Your character is Robb Stark"crlf)
(bind $?character Robb-Stark)
(assert(character-is $?character)))
;======================================================================
(defrule character-gender-female
(gender female)
=>
(printout t "Is your character in Essos or Westeros?(essos/westeros)")
(assert(essos-or-westeros-female(read))))
;======================================================================
(defrule female-character-continent-essos
(essos-or-westeros-female essos)
=>
(printout t "Is your character originally from Westeros?(yes/no)"crlf)
(assert(female-from-westeros(read))))
;======================================================================
(defrule female-character-origin-westeros-yes 
(female-from-westeros yes)
=>
(printout t "Your character is Daenerys Targaryen?"crlf)
(bind $?character Daenerys-Targaryen)
(assert(character-is $?character)))
;======================================================================
(defrule female-character-origin-westeros-no
(female-from-westeros no)
=>
(printout t "Is your character a Handmaiden to Daenerys Targaryen?(yes/no)?"crlf)
(assert(is-handmaiden(read))))
;======================================================================
(defrule is-handmaiden-no
(is-handmaiden no)
=>
(printout t "Your character is Mirri Mas Duur"crlf)
(bind $?character Mirri-Mas-Duur)
(assert(character-is $?character)))
;======================================================================
(defrule is-handmaiden-yes
(is-handmaiden yes)
=>
(printout t "Did your character steal Daenerys's dragons?(yes/no)"crlf)
(assert(stole-dragons(read))))
;======================================================================
(defrule stole-dragons-yes
(stole-dragons yes)
=>
(printout t "Your character is Doreah"crlf)
(bind $?character Doreah)
(assert(character-is $?character)))
;======================================================================
(defrule stole-dragons-no
(stole-dragons no)
=>
(printout t "Your character is Irri"crlf)
(bind $?character Irri)
(assert(character-is $?character)))
;======================================================================
(defrule female-character-continent-westeros
(essos-or-westeros-female westeros)
=>
(printout t "Is your character in the North?(yes/no)"crlf)
(assert(in-the-north(read))))
;======================================================================
(defrule is-the-north-yes
(in-the-north yes)
=>
(printout t "Is your character from beyond the wall?(yes/no)"crlf)
(assert(beyond-the-wall(read))))
;======================================================================
(defrule beyond-the-wall-yes
(beyond-the-wall yes)
=>
(printout t "Your character is Osha"crlf)
(bind $?character Osha)
(assert(character-is $?character)))
;======================================================================
(defrule beyond-the-wall-no
(beyond-the-wall no)
=>
(printout t "Does your character have red hair?(yes/no)"crlf)
(assert(red-hair(read))))
;======================================================================
(defrule red-hair-yes
(red-hair yes)
=>
(printout t "Does your character have children?(yes/no)"crlf)
(assert(have-children(read))))
;======================================================================
(defrule have-children-yes
(have-children yes)
=>
(printout t "Your character is Catelyn Stark"crlf)
(bind $?character Catelyn-Stark)
(assert(character-is $?character)))
;======================================================================
(defrule have-children-no
(have-children no)
=>
(printout t "Your character is Sansa Stark"crlf)
(bind $?character Sansa-Stark)
(assert(character-is $?character)))
;======================================================================
(defrule red-hair-no
(red-hair no)
=>
(printout t "Your character is Arya Stark"crlf)
(bind $?character Arya-Stark)
(assert(character-is $?character)))
;======================================================================
(defrule is-the-north-no
(in-the-north no)
=>
(printout t "Is your character a prostitute?(yes/no)"crlf)
(assert(is-prostitute(read))))
;======================================================================
(defrule is-prostitute-yes
(is-prostitute yes)
=>
(printout t "Is your character Tyrion's partner?(yes/no)"crlf)
(assert(tyrions-partner(read))))
;======================================================================
(defrule tyrions-partner-yes
(tyrions-partner yes)
=>
(printout t "Your character is Shae"crlf)
(bind $?character Shae)
(assert(character-is $?character)))
;======================================================================
(defrule tyrions-partner-no
(tyrions-partner no)
=>
(printout t "Your character is Ros"crlf)
(bind $?character Ros)
(assert(character-is $?character)))
;======================================================================
(defrule is-prostitute-no
(is-prostitute no)
=>
(printout t "Is your character a queen?(yes/no)"crlf)
(assert(a-queen(read))))
;======================================================================
(defrule a-queen-yes
(a-queen yes)
=>
(printout t "Your character is Cersai Lannister"crlf)
(bind $?character Cersai-Lannister)
(assert(character-is $?character)))
;======================================================================
(defrule a-queen-no
(a-queen no)
=>
(printout t "Your character is Lysa Arryn"crlf)
(bind $?character Lysa-Arryn)
(assert(character-is $?character)))
;=======================================================================
(defrule explanation
(why) 
=>
(printout t "==============================" crlf)
(retract 0)
(facts)
(printout t "==============================" crlf)) 









