build: 
	cat Dockerfile | docker build . -t p:1

start:
	docker run --rm -d -p 65432:65432 --name lol p:1

stop:
	docker stop lol

clean:
	docker images | grep "^p[[:space:]]" | awk '{print $3}' | xargs  docker rmi
