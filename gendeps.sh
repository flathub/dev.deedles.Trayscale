#!/bin/sh

gen() {
	go run -v deedles.dev/gopakgen@latest -disable-shallow-clone -disable-fsckobjects "$1"
}

rm -f trayscale.deps.json tailscale.deps.json

gen deedles.dev/trayscale > trayscale.deps.json
gen tailscale.com > tailscale.deps.json
