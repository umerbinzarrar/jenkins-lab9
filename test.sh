#!/bin/bash
# Simple build check: fail if the page is missing a title or heading
set -e
test -f index.html
grep -q "<title>" index.html
grep -q "<h1>" index.html
echo "Build checks passed"
