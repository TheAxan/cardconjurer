remove:
	docker stop test && docker rm -fv test
build:
	docker build -f Dockerfile --target "prod" . -t "cardconjurer-client"
start:
	docker run --name test -dit -v C:/Users/Adrien/Desktop/GwentGameCards -h 10.0.0.112 -p 4242:4242 "cardconjurer-client"
