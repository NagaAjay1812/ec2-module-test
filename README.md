## Terraform modules
* Terraform modules are reusable blocks of infrastructure code.(Module helps enforce infrastructure standards and prevent duplication across environments.)
* Instead of writing the same EC2 or VPC configuration multiple times, we package it into a module and reuse it by passing different input variables.

Modules help in:
* Code reusability
* enforce the best Standardization
* easy maintenance
* Environment separation

- Terraform modules are reusable infrastructure components. In my project, I created a separate EC2 module where all EC2 logic is defined once, including tagging standards. Then I consumed that module from another Terraform project by passing environment-specific variables like AMI ID, instance type, and security groups. This approach improves reusability, consistency, and maintainability across environments.


# 🧪 ec2-module-test (Testing a Local Terraform Module)

This repository is a test project that consumes the reusable EC2 module from:

➡️ `../terraform-aws-instance`

It demonstrates how to call a Terraform module locally and pass environment-specific inputs.

---

## 📂 Folder Structure

```
ec2-module-test/
├── .gitignore
├── .terraform.lock.hcl
├── data.tf
├── ec2.tf
├── provider.tf
└── README.md
```

---

## 📌 What This Repo Does

- Configures AWS provider in `provider.tf`
- Optionally fetches AMI dynamically in `data.tf`
- Calls the EC2 module inside `ec2.tf`
- Tests module parameter passing and output behavior

---

## 🔗 Module Call (Inside ec2.tf)

```hcl
module "ec2" {
  source        = "../terraform-aws-instance"
  project       = "roboshop"
  environment   = "dev"
  ami_id        = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  sg_ids        = ["sg-xxxxxxxx"]
}
```

This allows testing module changes without publishing to Terraform Registry.

---

## 🚀 How to Run

```bash
terraform init
terraform plan
terraform apply
```

To destroy:

```bash
terraform destroy
```

---

## 🧠 Key Concepts Demonstrated

✔ Root module vs child module  
✔ Passing variables to modules  
✔ Local module sourcing  
✔ Provider configuration separation  
✔ Testing reusable infrastructure logic  

---

## 🎯 Why This Repo Matters

This repo helps understand how professional Terraform projects are structured:

- Core infrastructure logic lives in reusable modules
- Environment-specific logic lives in calling (root) modules
- Code becomes cleaner and easier to scale
