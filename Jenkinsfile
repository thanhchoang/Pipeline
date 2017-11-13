pipeline{
    agent any

    try {
        stage('Clean'){
            steps {
                echo 'Testing..'
                // shell command "make clean"
                sh 'make clean'
            }
        }
        stage('Build'){
            steps {
	              // echo to test
                echo 'Building..'
	              checkout scm
	              // shell command "make"
	              sh 'make'
            }
        }
      }
    catch (e)
    {
      currentBuild.result = "FAILURE"
      throw e
    }
    finally
    {
      stage('Email')
      {
        echo 'Sending Emails'
        if (${currentBuild.result} == "SUCCESS")
          {
            sendEmail("JenkinTrial@gmail.com ; thanh.hoang@abaco.com")
          }
        else
          {
            sendEmail("thanh.hoang@abaco.com")
          }
        echo 'Emails sent'
          }
    }
}

def sendEmail(address)
{
  emailext(
    to: address,
    subject: "\${PROJECT_NAME} Build #\${BUILD_NUMBER} \${BUILD_STATUS}",
    body: """Project URL: \${BUILD_URL}

Build logs
\${BUILD_LOG}""",
    )
}
