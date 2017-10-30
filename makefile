.build: Dockerfile
	docker build . -t kzwin/postfix-submission > .build
push: Dockerfile
	docker push kzwin/postfix-submission > push
