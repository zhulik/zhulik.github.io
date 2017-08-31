#!/bin/bash

set -eu

function commit() {
  git add .
  git commit -a -m"$1"
  git push origin master
}

jekyll b

commit $1 &
cd _site
commit $1 &
wait
