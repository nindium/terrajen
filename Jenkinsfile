
node {
    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
            KEY_ID = "${AWS_ACCESS_KEY_ID}"
            SECRET_ACCESS_KEY = "${AWS_SECRET_ACCESS_KEY}"
    }
}

pipeline {
    agent any  
    environment {
        AWS_ACCESS_KEY_ID = "${KEY_ID}"
        AWS_SECRET_ACCESS_KEY = "${SECRET_ACCESS_KEY}"
    }
    stages {
        stage('Terraform initialization') {
            steps {
                    sh "aws s3 ls"
            }
        }
    }
}

