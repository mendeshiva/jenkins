pipeline {
    agent any 
    stages {
        stage('First Stage') { 
            steps { 
                sh 'sudo bash /root/test.sh' 
            }
        }
        stage('Second Stage'){
            steps {
                sh 'sudo bash /root/test1.sh'
            }
        }
        stage('Third Stage') {
            steps {
                sh 'echo Success'
            }
        }
    }
}
