pipeline{
    agent any
    
    stages {
        stage('Build'){
            steps {
                echo 'Building..'
            }
        }
        stage('Test'){
            steps {
		make
                echo 'Testing..'
            }
        }
        stage('Deploy'){
            steps {
                echo 'Deploying...'
            }
        }
    }
}
