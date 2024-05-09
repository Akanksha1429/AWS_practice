# First Project on Terrform
--- Create EC2 instance in AWS

# Steps followed : 

1. Configured terrform in local environment (Windows) : Followed the document https://developer.hashicorp.com/terraform/install#windows . After downloading the main point to contemplate is the setting up of path of Terraform.

2. Configured AWS Cli : Followed steps mentioned in the video https://www.youtube.com/watch?v=cN4pt5KQ9eA&list=PLdpzxOOAlwvIKMhk8WhzN1pYoJ1YU8Csa&index=7 to configure AWS Cli 

3. Created the main.tf file where following details are mentioned to execute a terraform file : 
   - Providers Details
   - Resource to be created 

4. Once the file is ready it's time to execute the file and catch hold of the sight of the instance being created automatically.

5. In the command line after configuring AWS Cli execute the following command : 
 - terrform init (To initialize and configure the provider)
 - terraform plan (to dry run the code)
 - terraform apply (to execute the code)

6. Here on successfull execution the instance would be created with the name "Terraform Demo".


