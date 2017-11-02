pipeline{
    agent any
    
    stages {
        stage('Build'){
            steps {
                echo 'Building..'
		checkout scm
		sh 'make'
            }
        }
        stage('Test'){
            steps {
                echo 'Testing..'
		sh 'make clean'
            }
        }
        stage('Deploy'){
            steps {
                echo 'Deploying...'
            }
        }
    }
}
