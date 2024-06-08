# Terraform AWS Auto Scaling Group Project

This project demonstrates how to use Terraform to create an auto scaling group on AWS, utilizing a modular approach for reusability and maintainability. Each component of the infrastructure, such as the VPC, security groups, launch template, target group, auto scaling group, and application load balancer, is implemented as a separate Terraform module.

## Project Structure

The project is organized into the following structure:
```palintext
terraform-project/
├── modules/
│ ├── vpc/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ ├── outputs.tf
│ │ └── README.md
│ ├── security_group/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ ├── outputs.tf
│ │ └── README.md
│ ├── launch_template/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ ├── outputs.tf
│ │ └── README.md
│ ├── target_group/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ ├── outputs.tf
│ │ └── README.md
│ ├── auto_scaling_group/
│ │ ├── main.tf
│ │ ├── variables.tf
│ │ ├── outputs.tf
│ │ └── README.md
│ └── load_balancer/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ └── README.md
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── .gitignore
```

## Overview

This Terraform project sets up the following AWS resources:
1. **VPC (Virtual Private Cloud)**: A custom VPC with subnets, an internet gateway, and route tables.
2. **Security Groups**: Security groups for controlling inbound and outbound traffic.
3. **Launch Template**: A launch template for EC2 instances.
4. **Target Group**: A target group for the load balancer.
5. **Auto Scaling Group**: An auto scaling group to manage EC2 instances.
6. **Application Load Balancer**: An application load balancer to distribute traffic.

## Usage

### Prerequisites

- Terraform installed on your local machine.
- AWS CLI configured with the necessary permissions.
- An AWS account.

### Steps

1. **Clone the Repository**

   ```sh
   git clone <repository_url>
   cd terraform-project
   ```
2. **Initialize Terraform**
   ```sh
   terrform init
   ```
4. **Cutomize Variables**
6. **Appy the configuration**
   ```sh
   terraform apply
   ```

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any changes.

## License
This project is licensed under the MIT License.
