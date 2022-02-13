-include .env.local

# https://github.com/FiloSottile/mkcert/releases:
mkcert_install:
	wget -O - https://github.com/FiloSottile/mkcert/releases/download/v1.4.0/mkcert-v1.4.0-linux-amd64 > /usr/local/bin/mkcert
	chmod +x /usr/local/bin/mkcert	
mkcert:
	cd conf/cert; mkcert localhost 127.0.0.1 ::1
rt:
	time docker-compose build $@
push pull down logs ps restart:
	docker-compose $@
log:
	docker-compose logs -f rt

R=docker-compose run --rm -p $(PORT):9000
run-rt:
	$R rt
run-sh:
	docker-compose run --rm ci bash
up:
	docker-compose up -d --force-recreate rt

ID=`docker-compose ps -q`
sh:
	docker exec -it $(ID) bash
diff:
	docker diff $(ID)