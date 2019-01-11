workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "docker://wburningham/fail" {
  needs = "Hello World"
  uses = "docker://wburningham/fail"
  args = "\"echo hi\""
}

action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Bob"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}