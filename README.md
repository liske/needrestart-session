needrestart-session
===================

About
-----

*needrestart* checks which processes need to be restarted after library
upgrades. *needrestart-session* implements a notification of user
sessions about their obsolete processes after system upgrades.


Install
-------

*needrestart-session* is coded in Perl and requires the following perl
 packages:
* NeedRestart
* Net::DBUS
* Proc::ProcessTable
* Wx

and non-perl packages:
* D-Bus
* needrestart (>= 2.0)
* PolicyKit
* Wmctrl
* grep
* procps
