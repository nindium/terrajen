
node {
    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'terraform', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
        AWS_ACCESS_KEY_ID = "${AWS_ACCESS_KEY_ID}"
        AWS_SECRET_ACCESS_KEY = "${AWS_SECRET_ACCESS_KEY}"
    }
}

pipeline {
    agent any  
    
    stages {
        stage('Terraform initialization') {
            steps {
                    sh "aws s3 ls"
            }
        }
    }
}

