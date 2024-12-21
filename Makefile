

push:
	@git add .
	@git commit -m "update" || true
	@git push

run-mongodb:
	@docker run --rm -p 27017:27017 \
		-e MONGO_INITDB_ROOT_USERNAME=root \
		-e MONGO_INITDB_ROOT_PASSWORD=password \
		-e MONGO_INITDB_DATABASE=myFirstDatabase \
		-v $${PWD}/mongodb.init.js:/docker-entrypoint-initdb.d/mongodb.init.js \
		--name mongodb mongo:4.4.9
