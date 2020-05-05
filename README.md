# Compete McGill Tech Games 2020 Functional Programming Challenge
## Requirements:
* [OCaml](https://ocaml.org/docs/install.html) with version of at least 4.05
* [Opam](https://opam.ocaml.org/doc/Install.html) with version of at least 2.0 (OCaml package manager)
* [Docker](https://www.docker.com/products/docker-desktop)

## Instructions (to serve on localhost):
1. Clone [learn-ocaml](https://github.com/ocaml-sf/learn-ocaml) repo
2. Clone this repo inside your learn-ocaml directory
3. To run:
```bash
docker run --rm \
  -v ($PWD)/Functional-Programming-Challenge:/repository:ro \
  -v learn-ocaml-sync:/sync \
  -p 80:8080 --name learn-ocaml-server \
  ocamlsf/learn-ocaml:dev
```
