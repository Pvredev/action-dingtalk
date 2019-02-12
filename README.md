# DingTalk for GitHub Actions

Sends a DingTalk notification. Simple as that.

![Dingtalk Logo](dingtalk-logo.png "Dingtalk Logo")

*Appearance on Dingtalk :*

![Dingtalk message](action-message.png "Dingtalk message")

<hr/>

## Usage

```hcl
action "Dingtalk notification" {
  uses = "cooperwu/action-dingtalk@master"
  secrets = ["DINGTALK_WEBHOOK"]
}
```

### Secrets

* **`DINGTALK_WEBHOOK`**: the Dingtalk webhook URL (**required**, see https://open-doc.dingtalk.com/docs/doc.htm).
* That's all.

### Credits

This repo is inspired by Ilshidur, forked from his [Slack action](https://github.com/Ilshidur/action-slack) 
