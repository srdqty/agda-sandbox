#!/usr/bin/env nix-shell
#! nix-shell -i bash

set -eu

agda --compile hello-world.agda
./hello-world
