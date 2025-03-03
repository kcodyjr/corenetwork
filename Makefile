
all:
	true

install:
	mkdir -p $(DESTDIR)/etc/init.d
	cp init.d/netif.tmpl $(DESTDIR)/etc/init.d
	chmod +x $(DESTDIR)/etc/init.d/netif.tmpl
	mkdir -p $(DESTDIR)/etc/netif.d
	cp netif.d/* $(DESTDIR)/etc/netif.d
	mkdir -p $(DESTDIR)/lib/netif
	cp -r lib/* $(DESTDIR)/lib/netif
	chmod -R a-x $(DESTDIR)/lib/netif
	chmod -R a+X $(DESTDIR)/lib/netif

