docker=podman

build:
	$(docker) build -t marcoparrone/bubblewrap .

test: 
	$(docker) run --rm -it marcoparrone/bubblewrap bubblewrap

clean:
	$(docker) rmi localhost/marcoparrone/bubblewrap

all: build
