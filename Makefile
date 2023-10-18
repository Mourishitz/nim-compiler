container:
	docker build -t nim-compiler .

run:
	make container
	docker run --rm nim-compiler:latest