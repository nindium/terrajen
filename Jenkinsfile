
pipeline {
    agent any  
   
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        AWS_ACCESS_KEY_ID = credentials("AWS_ACCESS_KEY")
        AWS_SECRET_ACCESS_KEY = credentials("AWS_SECRET_KEY")
    }
    stages {
        stage("S3 Bucket creating") {
            steps {
                script {
                    createS3Bucket("jentf-state-store")
                }
            }
        }
        stage('Terraform initialization') {
            steps {
                sh "terraform init"
            }
        }
        stage("Appling to dev environment") {
            steps {
                sh label: 'Creating DEV workspace', returnStatus: true, script: "terraform workspace new dev"
                sh "terraform apply -var-file=dev.tfvars --auto-approve"
            }
        }
    }
}

def getTerraformPath() {
    def tfHome = tool name: 'Terraform-14', type: 'terraform'
    return tfHome

}

def createS3Bucket(BucketName){
    sh label: 'Creating S3 bucket', returnStatus: true, script: "aws s3 mb s3://${BucketName} --region us-east-1"
}