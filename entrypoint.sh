#!/bin/sh
set -e

echo "Running entrypoint..."

cd "$ROOT/allure-report"

node "$ROOT/node_modules/allure-single-html-file-js/combine.js" "$ROOT/allure-file"
