node {withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    credentialsId: 'terraform',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
]]) {
        sh 'AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} AWS_DEFAULT_REGION=us-east-1'
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

