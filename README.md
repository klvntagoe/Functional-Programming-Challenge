# Compete McGill Tech Games Functional Programming Challenge

docker run --rm \
  -v /home/klvntagoe/Tech-Challenge/learn-ocaml/Functional-Programming-Challenge:/repository:ro \
  -v learn-ocaml-sync:/sync \
  -p 80:8080 --name learn-ocaml-server \
  ocamlsf/learn-ocaml:dev
