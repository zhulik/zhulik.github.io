#!/bin/bash

set -eu

function commit() {
  git add .
  git commit -a -m"$1"
  git push origin master
}

JEKYLL_ENV=production jekyll b

commit $1 &
cd _site
commit $1 &
wait
