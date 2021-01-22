
pipeline {
    agent any  
    stages {
        stage('Terraform initialization') {
            steps {
                withAWS(credentials: 'terraform', region: 'us-east-1') { 
                    sh "aws s3 ls"
                }
            }
        }
    }
}

