#!/usr/bin/tclsh

package require ygi

## return a random element from the list l
proc random_choice {l} {
	return [lindex $l [expr {int(rand()*[llength $l])}]]
}

::ygi::start_ivr

##
if {[catch {
##

::ygi::play_wait "yintro"
::ygi::sleep 500
set sounds [file join [file dirname [file normalize [info script]]] .. sounds]

## init rand
expr {srand([clock clicks])}

# get filelist
set sounds [file join [file dirname [file normalize [info script]]] .. sounds]
set sstvimages [glob -dir $sounds/sstv/ "*.slin" ]

## play intro sound and wait for the audio to come through properly
::ygi::play_wait "yintro"
::ygi::sleep 500

## make rand() unpredictable
expr {srand([clock clicks])}
::ygi::play_wait [random_choice $sstvimages] 


##
} fid]} {
	::ygi::log "error $fid"
}
##
