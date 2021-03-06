
pipeline {
  agent any  
    stages { 
	stage('Git clone'){
		steps{
			sh "git clone https://github.com/nagurameer/ec2deployment.git"
			sh "mv ec2deployment/*  $WORKSPACE"
			sh "ls -al"
		}
	}
      	stage('TerraformInit'){ 
         	steps { 
                     sh "terraform init"                  
             	} 
         }
	 stage('TerraformPlan'){ 
              steps { 
                     sh "terraform plan -out terraform.tfplan"      
		     
             } 
         }
	 stage ('TerraformApply'){
	 	steps{
		     sh "terraform apply terraform.tfplan"
		}
	 }
	 stage ('TerraformShow'){
	 	steps{
		     sh "terraform show"
		}
         } 
     }
   } 
