internalbind attach announce_attach

proc announce_attach {c} {
	setctx "sBNC"

	putserv "PRIVMSG #online.intern :User $c connected from [getbncuser $c client]"
}

internalbind detach announce_detach

proc announce_detach {c} {
	setctx "sBNC"

	putserv "PRIVMSG #online.intern :User $c disconnected from [getbncuser $c client]"
}

internalbind svrlogon announce_svrlogon

proc announce_svrlogon {c} {
	setctx "sBNC"

	putserv "PRIVMSG #online.intern :User $c connected to the IRC-Server"
}

internalbind svrdisconnect announce_svrdisconnect

proc announce_svrdisconnect {c} {
	setctx "sBNC"

	putserv "PRIVMSG #online.intern :User $c disconnected from the IRC-Server"
}

internalbind usrcreate announce_usrcreate

proc announce_usrcreate {c} {
	setctx "sBNC"

	putserv "PRIVMSG #online.intern :New User $c was created [getbncuser $c client]"
}

internalbind usrdelete announce_usrdelete

proc announce_usrdelete {c} {
	setctx "sBNC"

	putserv "PRIVMSG #online.intern :User $c deleted [getbncuser $c client]"
}

putlog "sbncpost.tcl v1.0 by Thunder loaded successfully"
