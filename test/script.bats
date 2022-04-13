#!/usr/bin/env bats

@test "error: show error and exit with 1" {
  run ./script.sh error
  [ "$status" -eq 127 ]
  [ "$output" = "ERROR: script.sh, line 11: this is not so good" ]
}
