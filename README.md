## Terraform modules
* Terraform modules are reusable blocks of infrastructure code.
* Instead of writing the same EC2 or VPC configuration multiple times, we package it into a module and reuse it by passing different input variables.

Modules help in:
* Code reusability
* enforec best Standardization
* easy maaintenance
* Environment separation

* Terraform modules are reusable infrastructure components. In my project, I created a separate EC2 module where all EC2 logic is defined once, including tagging standards. Then I consumed that module from another Terraform project by passing environment-specific variables like AMI ID, instance type, and security groups. This approach improves reusability, consistency, and maintainability across environments.
