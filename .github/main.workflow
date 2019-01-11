workflow "New workflow" {
  on = "push"
  resolves = ["docker://wburningham/fail"]
}

action "docker://wburningham/fail" {
  uses = "docker://wburningham/fail"
  args = "\"echo hi\""
}
