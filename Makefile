run: image
	docker run --rm -it lean-gpg --version
image:
	docker build -t lean-gpg .
