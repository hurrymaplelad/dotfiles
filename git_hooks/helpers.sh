#!/bin/bash

# Pipes to standard out a list of file names, one per line,
# that were modified in the pending commit.  Files that
# were removed as part of this commit are excluded.
stagedNotDeleted () {
  git diff --staged --name-status | grep "^[^D]" | cut -f 2
}

# Converts newlines to \0 null characters before piping
# to xargs to avoid issues with spaces and quotes in filenames.
nullXargs () {
  tr '\n' '\0' | xargs -0 "$@"
}
