set shell := ["bash", "-uc"]
set dotenv-load := true

# set export := true
# set positional-arguments := true

RED := "\\033[31m"
GREEN := "\\033[32m"
PURPLE := "\\033[35m"
YELLOW := "\\033[33m"
BOLD := "\\033[1m"
RESET := "\\033[0m"
NC := "\\033[0m"

install:
    npm i && npx quartz create

push:
    npx quartz sync

build:
    npx quartz build --serve

sync:
    npx quartz sync --no-pull

################################################################
# Template formatting
################################################################

fmt check="":
    just --unstable --fmt {{ check }}
