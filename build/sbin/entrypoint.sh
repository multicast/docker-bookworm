#!/usr/bin/env bash

BASE_DEBUG=${BASE_DEBUG:=0}
BASE_NOEXIT=${BASE_NOEXIT:=0}

test ${BASE_DEBUG} -ge 9 && set -x

run-parts --exit-on-error /etc/entrypoint.d || {
  echo 'Exitting due /etc/entrypoint.d failure'
  test ${BASE_NOEXIT} -eq 1 ||
    exit 1
}

test ${BASE_DEBUG} -ge 1 && {
  echo Available environment:
  env|sort
}

test ${BASE_DEBUG} -ge 1 && {
  echo Running: \"$@\"
}
exec "$@"
