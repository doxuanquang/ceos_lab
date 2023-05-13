up:
	docker compose up -d
	sleep 30s
	docker exec -it ceos_lab-ceos-1-1 /bin/sh -c "sudo iptables -P INPUT ACCEPT"
	docker exec -it ceos_lab-ceos-2-1 /bin/sh -c "sudo iptables -P INPUT ACCEPT"
	ping -c 4 172.20.20.254
	ping -c 4 172.20.20.253
down:
	docker compose down
	sleep 5s
restart: down up