# https://github.com/FiloSottile/mkcert/releases:
mkcert_install:
	wget -O - https://github.com/FiloSottile/mkcert/releases/download/v1.4.0/mkcert-v1.4.0-linux-amd64 > /usr/local/bin/mkcert
	chmod +x /usr/local/bin/mkcert	
mkcert:
	cd conf/cert; mkcert localhost 127.0.0.1 ::1