
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
                sh "ansible-playbook s3-bucket.yml"
            }
        }

        stage("Terraform initialization") {
            steps {
                sh "terraform init"
            }
        }
        
        stage("Appling to dev environment") {
            steps {
                sh label: '', returnStatus: true, script: 'terraform workspace new dev'
                sh "terraform apply -var-file=dev.tfvars --auto-approve"
            }
        }

        stage("Appling to prod environment") {
            steps {
                sh label: '', returnStatus: true, script: 'terraform workspace new prod'
                sh "terraform apply -var-file=prod.tfvars --auto-approve"
            }
        }
    }
}

def getTerraformPath() {
    def tfHome = tool name: 'Terraform-14', type: 'terraform'
    return tfHome

}
