# Compete McGill Tech Games Functional Programming Challenge
1. Clone learn-ocaml repo
2. Clone this repo inside your learn-ocaml directory
3. To run:
```bash
docker run --rm \
  -v ($PWD)/Functional-Programming-Challenge:/repository:ro \
  -v learn-ocaml-sync:/sync \
  -p 80:8080 --name learn-ocaml-server \
  ocamlsf/learn-ocaml:dev
```
