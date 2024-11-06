# tf-deploy
This will start as a simple deployment for Terraform and will start growing

## Projects
### 1 - Deploy an EC2 Instance in the default VPC with nginx
- **Prerequisites**
    - Key pair should be **generated** on your machine and the **public key** should be sent to AWS.
- **Functionalities**
    - Able to SSH on the EC2 instance
    - Able to access nginx service from everywhere (nginx deployed with **Bash** script)
- **Outputs**
    - The output should include the **EC2** instance's **DNS name**.
    - The output should provide you with a command to SSH to the instance. Example: `ssh -i [SSH_KEY_FILE] ec2-user@[DNS_NAME]`.
 - **Verify**
    - Make sure you can remote into the machine with a Key Pair.
    - Make sure you can access the nginx service on Port **80**.


### 2 - Nginx instance in a module
The goal here is to take the instance we created earlier and all of its ressources and turn it into a module.