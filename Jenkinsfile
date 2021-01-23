
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
                sh "ansible-playbook -i localhost s3-bucket.yml"
            }
        }

        stage("Terraform initialization") {
            steps {
                sh "terraform init"
            }
        }
        
        stage("Appling to dev environment") {
            steps {
                script {
                    createInfraStr("dev")
                }
            }
        }

        stage("Appling to prod environment") {
            steps {
                script {
                    createInfraStr("prod")
                }
            }
        }
    }
}

def getTerraformPath() {
    def tfHome = tool name: 'Terraform-14', type: 'terraform'
    return tfHome

}

def createInfraSTR(my_env) {
    sh label: '', returnStatus: true, script: 'terraform workspace new ${my_env}'
    sh "terraform workspace select ${my_env}"
    sh "terraform apply -var-file=${my_env}.tfvars --auto-approve"
    return 1
}