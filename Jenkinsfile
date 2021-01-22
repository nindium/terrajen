

pipeline {
    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
        sh "Hello, World"
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
