brew install podman podman-compose

if [ -z "${CI:-}" ]; then
  podman machine init --cpus 2 --memory 2048 --rosetta
  podman machine start
fi
