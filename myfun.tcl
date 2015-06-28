######################################
#			myFun TCL				 #
#			by Thunder				 #
#	secureirc.network:+6697			 #
#	Channel: #online				 #
######################################

global allg

bind pub - .mypenis  penis
bind pub - .mymuschi  muschi
bind pub - .mygirl  girl
bind pub - .myass  ass
bind pub - .mycar  car

setudef flag mypenis
setudef flag mymuschi
setudef flag mygirl
setudef flag myass
setudef flag mycar


proc penis { nick uhost hand chan arg } {
global floodprot mypenis

if {[lsearch -exact [channel info $chan] +mypenis] < 0} { return }

if {[info exists floodprot($chan)]} {
return
} {
set floodprot($chan) 1
utimer 10 [list unset floodprot($chan)]
}

if {[info exists mypenis($nick)]} {

if {[string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick wir wissen bereits, dass $mypenis($nick) "
return

} elseif {![string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick wir wissen bereits, dass $mypenis($nick) "
return
}
}

set temp [rand 100]

if {$temp < 50 && $temp > 40} {

set mypenis($nick) "du keinen Penis sondern ne Muschi hast!"
timer 3 [list unset mypenis($nick)]

if {[string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick hat gar keinen Penis, sondern eine Muschi! "
return

} elseif {![string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick hat gar keinen Penis, sondern eine Muschi!"
return
}
}

set peniz1 [rand 40]
set peniz2 [rand 99]

if {$peniz1 < 5} { set peniz1 [expr $peniz1 + 5] }

set peniz  "$peniz1.$peniz2"
set mypenis($nick) "dein Penis $peniz cm lang ist!"

if {[string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick's Penis ist $peniz cm lang. "

} elseif {![string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick's Penis ist $peniz cm lang. "

}

timer 30 [list unset mypenis($nick)]
}

set mymuschi {
 "schon so feucht, dass es tropft, aber sie ist verdammt haarig!"
 "so feucht wie eine Trockenplaume!"
 "glatt rasiert!"
 "irgendwie für alle Welt einsehbar!"
 "sehr zart, aber etwas stoppelig!"
 "schrumpelig. *ekel*"
 "schon stark benutzt!"
 "klein, zart und unbenutzt!"
 "schon so alt, dass sie nach verfaultem Döner riecht!"
 "irgendwie sehr eng und geschmeidig!"
 "Geruchstechnisch etwas Fischlastig!"
 "einfach nur ein Traum von einer Pussy."
 "gut eingeritten!"
 "besetzt, weil da noch der Dildo drinsteckt!"
 "schon ein wenig feucht!"
 "glatt."
 "verdammt lecker!"
 "dreckig."
}

proc muschi {nick host hand chan arg} {
global floodprot mymuschi

if {[lsearch -exact [channel info $chan] +mymuschi] < 0} { return }

if {[info exists floodprot($chan)]} {
return
} {
set floodprot($chan) 1
utimer 10 [list unset floodprot($chan)]
}

if {[string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick's Muschi ist [lindex $mymuschi [rand [llength $mymuschi]]] "
return

} elseif {![string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick's Muschi ist [lindex $mymuschi [rand [llength $mymuschi]]] "
return
}
}


### Mygirl

set mygirl {
 "Jennifer Lopez zusammen!"
 "Anke Engelke zusammen!"
 "Kate Moss zusammen!"
 "Heidi Klum zusammen! Hrhr."
 "Bruce Darnell zusammen! Sau du! *ekel*"
 "Britney Spears zusammen! Stehst wohl auf glatzen?!"
 "Demi Moore zusammen"
 "Carmen Electra zusammen.Lecker!"
 "Gwyneth Paltrow zusammen."
}

proc girl {nick host hand chan arg} {
global floodprot mygirl

if {[lsearch -exact [channel info $chan] +mygirl] < 0} { return }

if {[info exists floodprot($chan)]} {
return
} {
set floodprot($chan) 1
utimer 10 [list unset floodprot($chan)]
}

if {[string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick ist mit [lindex $mygirl [rand [llength $mymgirl]]] "
return

} elseif {![string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick ist mit [lindex $mygirl [rand [llength $mygirl]]] "
return
}
}

### Mycar

set mycar {
 "Ford Ka"
 "Audi A8"
 "Ford Fiesta"
 "Ford S-MAX"
 "Ford GT"
 "Audi Q7"
 "Audi TT"
 "Ford Transit Nugget"
 "Ford Transit Tourneo"
 "Audi A7"
 "Audi R8"
 "Opel Signum"
 "Opel GT"
 "Opel Vectra"
 "Opel Corsa"
 "Opel Combo"
 "VW Golf"
 "VW Polo"
 "VW Passat"
 "VW Sharan"
 "VW Fox"
 "VW Phaeton"
}

proc car {nick host hand chan arg} {
global floodprot mycar

if {[lsearch -exact [channel info $chan] +mycar] < 0} { return }

if {[info exists floodprot($chan)]} {
return
} {
set floodprot($chan) 1
utimer 10 [list unset floodprot($chan)]
}

if {[string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick fährt einen [lindex $mycar [rand [llength $mycar]]] "
return

} elseif {![string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick fährt einen [lindex $mycar [rand [llength $mycar]]] "
return
}
}

### Myass

set myass {
 "sehr Eng und NASS?!"
 "mit vielen Dildos ausgestattet. *ekel*"
 "ziemlich breit ôO"
 "stark benutzt."
 "ganz schön braun. Bah.."
 "mit vielen gebrauchsspuren versehen!"
 "noch ziemlich unbenutzt."
 "ganz normal. Riecht aber sehr stark!"
 ".. HALT! Da steckt noch was drinne!"
}

proc ass {nick host hand chan arg} {
global floodprot myass

if {[lsearch -exact [channel info $chan] +myass] < 0} { return }

if {[info exists floodprot($chan)]} {
return
} {
set floodprot($chan) 1
utimer 10 [list unset floodprot($chan)]
}

if {[string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick's arschloch ist [lindex $myass [rand [llength $myass]]] "
return

} elseif {![string match *c* [lindex [split [getchanmode $chan]] 0]]} {

putquick "PRIVMSG $chan :$nick's arschloch ist [lindex $myass [rand [llength $myass]]] "
return
}
}

putlog "Fun by CyberNetworX loaded - #online"
