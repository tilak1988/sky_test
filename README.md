# sky_test

This repository is created for demo with sky

**Pre-Requsites**

1) Install python3 instead of python based on the Operating System.

   Reference Link - https://www.python.org/downloads/
 
2) Install AWS CLI based on the Operating System.

   Reference Link - https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

3) Configure AWS creditials in local, inorder to talk to AWS Resources by using the below link.

   Reference Link - https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/setup-credentials.html
   
4) Install Terraform in you local host based on the Operating System. (The terraform version used for this code is Terraform v1.3.6)

   Reference Link - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

**Validation for Pre-Requsites** 

1) aws --version (Will come to know the installed version of aws cli) 

   Sample Output after sucessfull instalation: aws-cli/2.9.12 Python/3.9.11 Windows/10 exe/AMD64 prompt/off
   
2) aws sts get-caller-identity
 
   Sample Output after sucessfull instalation: 
  <pre><code> 
 {
   "UserId": "810515221234",
   "Account": "810515221234",
   "Arn": "arn:aws:iam::810515221234:tilak"
 } 
 </code></pre>
 3) terraform --version    
    
     Sample Output after sucessfull instalation: Terraform v1.3.6
     
 4) python --version
  
     Sample Output after sucessfull instalation: Python 3.9.13
   
**To Create Infra**

1) Clone the git repo to local

   git clone https://github.com/tilak1988/sky_test.git
   
2) Navigate to the directory sky_test



