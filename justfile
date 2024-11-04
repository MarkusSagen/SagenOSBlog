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


# Install requirements
install:
    npm i && npx quartz create

# Build static website
build:
    npx quartz build --serve

# Build static website
start: build

# Push and publish new content
push:
    npx quartz sync

# Push and publish new content
sync:
    npx quartz sync --no-pull

################################################################
# Template formatting
################################################################

fmt check="":
    just --unstable --fmt {{ check }}
