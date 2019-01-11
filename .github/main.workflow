workflow "New workflow" {
  on = "push"
  resolves = ["Hello World", docker://wburningham/fail"]
}

action "docker://wburningham/fail" {
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