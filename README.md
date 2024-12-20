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
- The goal here is to take the instance we created earlier and all of its ressources and turn it into a module.
- Be careful about the outputs. You will learn about [Module Composition](https://developer.hashicorp.com/terraform/language/modules/develop/composition).

### 3 - Seperate environment folders
- Create a **prod** and a **dev** environment
- They should both use the module which will be in a different folder

### 4 - Create an examples folder
- The goal of the `examples` folder is to have an example of how to use each modules.
- Why? this way you can easily test each modules to make sure they work.
- Based from [Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

***tree***
```
├── examples
│   └── nginx_cluster
│       ├── README.md
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── live
│   ├── dev
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   └── prod
│       ├── main.tf
│       ├── outputs.tf
│       ├── terraform.tfvars
│       └── variables.tf
└── modules
    └── nginx_cluster
        ├── main.tf
        ├── outputs.tf
        ├── providers.tf
        ├── scripts
        │   └── install_nginx.sh
        └── variables.tf
```

### 5 - Create a module in a different Git Repository
- Create the `nginx_cluster` in a different Git Repository and access it
- Make sure `nginx_cluster` has its own `examples` folder based on [Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

### 6 - Create a versioned module
- Same as 5 but reference a version

### 7 Create tests using Terraform tests 
- https://developer.hashicorp.com/terraform/tutorials/configuration-language/test

### 8 - Having a monorepo for modules

### 9 - Store the states on S3 & lock-file?

## References
These are intersting references

### Complete module structure
```
.
├── README.md
├── main.tf
├── variables.tf
├── outputs.tf
├── ...
├── modules/
│   ├── nestedA/
│   │   ├── README.md
│   │   ├── variables.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   ├── nestedB/
│   ├── .../
├── examples/
│   ├── exampleA/
│   │   ├── main.tf
│   ├── exampleB/
│   ├── .../

```