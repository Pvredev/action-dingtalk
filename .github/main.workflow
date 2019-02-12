workflow "Notification on push" {
  on = "push"
  resolves = [
    "Slack notification",
  ]
}

action "Slack notification" {
  uses = "cooperwu/action-dingtalk@master"
  secrets = ["DINGTALK_WEBHOOK"]
  args = "A new commit has been pushed to cooperwu/action-dingtalk."
}
