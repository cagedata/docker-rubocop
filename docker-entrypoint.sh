#!/bin/sh

set -e

APP_ROOT="/app"

/usr/local/bundle/bin/rubocop $@
