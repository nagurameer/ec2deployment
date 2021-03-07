
pipeline {
  agent any  
    stages { 
	stage('Git clone'){
		steps{
			"git clone https://github.com/nagurameer/ec2deployment.git"
		        "mv ec2deployment/*  $WORKSPACE"
		        "ls -al"
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
