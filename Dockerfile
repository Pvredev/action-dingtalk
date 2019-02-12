FROM mhart/alpine-node:10.15.1

LABEL "com.github.actions.name"="GitHub Action for Dingtalk"
LABEL "com.github.actions.description"="Outputs a message to Dingtalk."
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/cooperwu/action-dingtalk"
LABEL "homepage"="https://github.com/cooperwu/action-dingtalk"
LABEL "maintainer"="cooperwu <tata20011125@gmail.com>"
LABEL "version"="0.0.1"

ADD entrypoint.js package.json package-lock.json /
RUN npm ci
RUN chmod +x /entrypoint.js

ENTRYPOINT ["node", "/entrypoint.js"]
