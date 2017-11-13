// pipeline{
//  agent any
// def e = null
node("slave")
{
  stage ("checkout")
  {
    checkout scm
  }

  try
  {
    stage("Clean")
    {
      echo 'Testing..'
      sh 'make clean'           // shell command "make clean"
    }

    stage('Build')
    {
        echo 'Building..'               // echo to test
        checkout scm                  // shell command "make"
        sh 'make'
      }
  }

  catch (e)
  {
    currentBuild.result = "FAILURE"
    throw e
  }

  finally
  {
    stage("Email")
    {
      if (${currentBuild.result} == "SUCCESS")
        {
          sendEmail("JenkinTrial@gmail.com ; thanh.hoang@abaco.com")
        }
      else
        {
          sendEmail("thanh.hoang@abaco.com")
        }
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
