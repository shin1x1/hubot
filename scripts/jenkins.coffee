# Description:
#   jenkins build script
JENKINS_BASIC_AUTH_USER = process.env.JENKINS_BASIC_AUTH_USER
JENKINS_BASIC_AUTH_PASS = process.env.JENKINS_BASIC_AUTH_PASS
JENKINS_URL = process.env.JENKINS_URL
JENKINS_BUILD_TOKEN = process.env.JENKINS_BUILD_TOKEN

# disable TLS ca auth
process.env['NODE_TLS_REJECT_UNAUTHORIZED'] = '0';

module.exports = (robot) ->
  robot.respond /jenkins build (.*)/i, (msg) ->
    job = msg.match[1]
    
    robot.http("#{JENKINS_URL}/job/#{job}/build?token=#{JENKINS_BUILD_TOKEN}&deplay=0sec")
      .auth(JENKINS_BASIC_AUTH_USER, JENKINS_BASIC_AUTH_PASS)
      .get() (err, res, body) ->
        if err
          msg.reply "job #{job} can't start."
        else
          msg.reply "job #{job} started"
