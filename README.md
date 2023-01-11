# sky_test

This repository is created for test with sky

**Pre-Requsites**
```
1) Install python3 instead of python based on the Operating System.

   Reference Link - https://www.python.org/downloads/
 
2) Install AWS CLI based on the Operating System.

   Reference Link - https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

3) Configure AWS creditials in local, inorder to talk to AWS Resources by using the below link.

   Reference Link - https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/setup-credentials.html
   
4) Install Terraform in you local host based on the Operating System. (The terraform version used for this code is Terraform v1.3.6)

   Reference Link - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
   ```

**Validation for Pre-Requsites** 
```
1) aws --version (Will come to know the installed version of aws cli) 

   Sample Output after sucessfull instalation: aws-cli/2.9.12 Python/3.9.11 Windows/10 exe/AMD64 prompt/off
   
2) aws sts get-caller-identity
 
   Sample Output after sucessfull instalation: 
   
   {
    "UserId": "810515221234",
    "Account": "810515221234",
    "Arn": "arn:aws:iam::810515221234:tilak"
   } 

 3) terraform --version    
    
     Sample Output after sucessfull instalation: Terraform v1.3.6
     
 4) python --version
  
     Sample Output after sucessfull instalation: Python 3.9.13
```
   
**To Create Infra**
```
1) Clone the git repo to local

   git clone https://github.com/tilak1988/sky_test.git
   
2) Navigate to the directory sky_test
   
   # terraform init (To initilize the plugins of the provider specified in the .tf file)
   
   # terraform fmt (To format the code without any syntax errors)
   
   # terraform plan (To validate the changes it is going to perform on our infrastructure)
   
   # terraform plan -out plan.tf (To validate the changes, it is going to perform on our infrastructure, and save the output to a file) 
   
   # terraform apply (To create/modify the infra with yes or no option)
      
   # terraform apply --auto-approve (To create/modify the infra without yes or no option, which can used when we automated the provision by any CI tool)
```

**To Destroy Infra**

```
# terraform destroy (To destroy the existing infrastructure with yes or no option)

# terraform destroy --auto-approve (To destroy the infra without yes or no option, which can used when we automated the provision by any CI tool)
```

**Load Balancer Link**

http://my-test-terraform-alb-2083817731.us-west-2.elb.amazonaws.com/
