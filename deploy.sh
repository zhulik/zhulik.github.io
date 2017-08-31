#!/bin/bash

set -eu

function commit() {
  git add .
  git commit -a -m"$1"
  git push origin master
}

commit $1

jekyll b

cd _site
commit $1
