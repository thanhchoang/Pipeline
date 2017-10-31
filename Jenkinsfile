pipeline{
    agent any
    
    stages {
        stage('Build'){
            steps {
		ls
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
		make clean
                echo 'Deploying...'
            }
        }
    }
}
