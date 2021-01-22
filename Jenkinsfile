
pipeline {
    agent any  
    
    stages {
        withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
            stage('Terraform initialization') {
                steps {
                    sh "aws s3 ls"
                }
            }
        }
    }
}

