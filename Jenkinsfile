
pipeline {
    agent any  
    stages {
        stage('Terraform initialization') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    credentialsId: 'terraform',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                ]]) { 
                    sh "aws s3 ls"
                }
            }
        }
    }
}

