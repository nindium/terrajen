
pipeline {
    agent any  
    stages {
        stage('Terraform initialization') {
            steps {
                withCredentials([[
                    
                    credentialsId: 'terraform'
                    
                ]]) { 
                    sh "aws s3 ls"
                }
            }
        }
    }
}

