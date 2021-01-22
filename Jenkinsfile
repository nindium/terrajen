
pipeline {
    environment {
        withCredentials([[
            $class: 'AmazonWebServicesCredentialsBinding',
            accessKeyVariable: 'AWS_ACCESS_KEY_ID',
            credentialsId: 'terraform',
            secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
        ]]) 
    }
    agent any  
    stages {
        stage('Terraform initialization') {
            steps {
                sh "aws s3 ls"
            }
        }
    }
}

