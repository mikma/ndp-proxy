#.SILENT:

main: ndp-proxy

install: $(DESTDIR)/usr/sbin/ndp-proxy

install-init: $(DESTDIR)/etc/init.d/ndp-proxy

$(DESTDIR)/etc/init.d/ndp-proxy: ndp-proxy-init
	install -o root -g root -d $(DESTDIR)/etc/init.d/ndp-proxy
	install -o root -g root -m 744 ndp-proxy-init $(DESTDIR)/etc/init.d/ndp-proxy

$(DESTDIR)/usr/sbin/ndp-proxy: ndp-proxy
	install -o root -g root -d $(DESTDIR)/usr/sbin
	install -o root -g root -m 744 ndp-proxy $(DESTDIR)/usr/sbin/ndp-proxy

ndp-proxy: ndp-proxy.c
