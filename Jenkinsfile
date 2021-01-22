pipeline {
    agent any  
    environment {
      PATH = "${PATH}:${getTerraformPath()}"
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
    def tfHome = tool name: 'Terraform-14', type: 'terra-form'
    return tfHome

}