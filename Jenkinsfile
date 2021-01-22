
pipeline {
    agent any  
   
    environment {
        AWS_ACCESS_KEY_ID = credentials("AWS_ACCESS_KEY")
        AWS_SECRET_ACCESS_KEY = credentials("AWS_SECRET_KEY")
    }
    stages {
        stage('Terraform initialization') {
            steps {
                sh "aws s3 ls"
            }
        }
    }
}

