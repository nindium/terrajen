pipeline {
    agent any  
   
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