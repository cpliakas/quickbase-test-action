#!/bin/sh -l

if [ -z "$QUICKBASE_USER_TOKEN" ]; then
  echo "QUICKBASE_USER_TOKEN environment variable required" >&2
  exit 1
fi

if [ -z "$1" ]; then
  echo "realm-hostname input required" >&2
  exit 1
fi

export QUICKBASE_REALM_HOSTNAME=$1
quickbase-cli formula test
exit $?
