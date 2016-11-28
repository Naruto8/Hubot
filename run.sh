#!/bin/bash
echo "IITK User Id: "
read user
echo "Password: "
stty -echo
read  passd
stty echo
env HUBOT_SLACK_TOKEN=<slack token id> HUBOT_EMAIL_ID=<your email id or Hubot email id> HUBOT_EMAIL_USER=$user HUBOT_EMAIL_PWD=$passd EMAIL_LABEL=inbox EMAIL_FETCH_INTERVAL=1 ./bin/hubot -a slack
