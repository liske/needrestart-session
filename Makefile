all:

install: all
	mkdir -p "$(DESTDIR)/usr/bin"
	cp needrestart-session "$(DESTDIR)/usr/bin/"
	
	mkdir -p "$(DESTDIR)/usr/lib/needrestart-session"
	cp needrestart-dbus-system "$(DESTDIR)/usr/lib/needrestart-session/"
	cp needrestart-dbus-session "$(DESTDIR)/usr/lib/needrestart-session/"
	cp needrestart-x11 "$(DESTDIR)/usr/lib/needrestart-session/"
	
	mkdir -p "$(DESTDIR)/etc/dbus-1/system.d"
	cp dbus/net.ibh.NeedRestart.System.conf "$(DESTDIR)/etc/dbus-1/system.d/"
	
	mkdir -p "$(DESTDIR)/usr/share/dbus-1/system-services"
	cp dbus/net.ibh.NeedRestart.System.service "$(DESTDIR)/usr/share/dbus-1/system-services/"
	
	mkdir -p "$(DESTDIR)/usr/share/needrestart-session"
	cp share/needrestart.svg "$(DESTDIR)/usr/share/needrestart-session/"
	cp share/needrestart.xpm "$(DESTDIR)/usr/share/needrestart-session/"
	
	mkdir -p "$(DESTDIR)/usr/share/applications" "$(DESTDIR)/etc/xdg/autostart"
	cp xdg/needrestart-session.desktop "$(DESTDIR)/usr/share/applications/"
	cp xdg/needrestart.desktop "$(DESTDIR)/usr/share/applications/"
	cp xdg/needrestart-dbus-session.desktop "$(DESTDIR)/etc/xdg/autostart/"
	
	mkdir -p "$(DESTDIR)/etc/needrestart/notify.d"
	cp notify.d/300-needrestart-session "$(DESTDIR)/etc/needrestart/notify.d/"

clean:
