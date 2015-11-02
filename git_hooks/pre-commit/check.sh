#!/bin/bash

source "`dirname $0`/../helpers.sh"

failVerification () {
  echo "Use --no-verify to commit anyways."
  exit 1
}

#
# Big Files
#
# any files larger than 500KB?
bigFiles=`stagedNotDeleted | nullXargs -L 1 wc -c | grep -E "^\s+([1-9]\d|[5-9])\d{5}\d*"`

if [[ ! -z $bigFiles ]]; then
  echo
  echo "Warning: You've added file(s) larger than 500KB:"
  echo "$bigFiles"
  echo
  failVerification
fi
