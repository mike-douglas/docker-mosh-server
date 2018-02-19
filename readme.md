docker-mosh-server
===
utility container for [mosh-server](https://mosh.org/) based on [alpine linux](https://alpinelinux.org/).

### build image
```sh
docker build -t mosh-server .
```

### pull image
```sh
docker pull ivoputzer/mosh-server:latest
```

### add alias to your shell profile
```sh
alias mosh-server="docker run --rm -i ivoputzer/mosh-server $@"
```

### add alias to your fish config
```fish
alias mosh-server "docker run --rm -i ivoputzer/mosh-server $argv"
```
