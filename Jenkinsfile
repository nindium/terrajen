
pipeline {
    agent any  
   
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
        AWS_ACCESS_KEY_ID = credentials("AWS_ACCESS_KEY")
        AWS_SECRET_ACCESS_KEY = credentials("AWS_SECRET_KEY")
    }
    stages {
        stage('Terraform initialization') {
            steps {
                sh "terraform init"
            }
        }
    }
}

def getTerraformPath() {
    def tfHome = tool name: 'Terraform-14', type: 'terraform'
    return tfHome

}