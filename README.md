# hubot

## Install

```
git clone https://github.com/shin1x1/hubot
cd hubot
```

## Deploy to heroku

```
heroku apps:create heroku-app-name
heroku addons:add redistogo:nano

heroku config:add HEROKU_URL=http://hoge.example.com
heroku config:add HUBOT_HIPCHAT_JID="JID"
heroku config:add HUBOT_HIPCHAT_PASSWORD="PASS"
heroku config:add JENKINS_URI="https://exmple.org"
heroku config:add JENKINS_BUILD_TOKEN="JOB_TOKEN"
heroku config:add JENKINS_BASIC_AUTH_USER="USER"
heroku config:add JENKINS_BASIC_AUTH_PASS="PASS"

git push heroku master
```
