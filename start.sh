#!/usr/bin/env bash
docker run -it --rm --name jupyter -p 8890:8888 \
    -e WX_CLIENT_SECRET="$WX_CLIENT_SECRET" \
    -e BOT_ACCESS_TOKEN="$BOT_ACCESS_TOKEN" \
    -e BOT_EMAIL="$BOT_EMAIL" \
    -e BOT_APP_NAME="$BOT_APP_NAME" \
    jeokrohn/brkcol2175clemea2020