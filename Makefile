all:

install: all
	mkdir -p "$(DESTDIR)/usr/bin"
	cp needrestart-x11 "$(DESTDIR)/usr/bin/"
	
	mkdir -p "$(DESTDIR)/usr/lib/needrestart"
	cp needrestart-dbus-system "$(DESTDIR)/usr/lib/needrestart/"
	cp needrestart-dbus-session "$(DESTDIR)/usr/lib/needrestart/"
	
	mkdir -p "$(DESTDIR)/etc/dbus-1/system.d"
	cp dbus/net.ibh.NeedRestart.System.conf "$(DESTDIR)/etc/dbus-1/system.d/"
	
	mkdir -p "$(DESTDIR)/usr/share/dbus-1/system-services"
	cp dbus/net.ibh.NeedRestart.System.service "$(DESTDIR)/usr/share/dbus-1/system-services/"
	
	mkdir -p "$(DESTDIR)/etc/xdg"
	cp xdg/needrestart-x11.desktop "$(DESTDIR)/etc/xdg/"
	
	mkdir -p "$(DESTDIR)/usr/share/needrestart-x11"
	cp res/needrestart.svg "$(DESTDIR)/usr/share/needrestart-x11/"
	cp res/needrestart.xpm "$(DESTDIR)/usr/share/needrestart-x11/"

clean:
