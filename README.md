# ![GitHub language count](https://img.shields.io/github/languages/count/iamraj007/aws_terraform_ebs?style=for-the-badge) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/iamraj007/aws_terraform_ebs?style=for-the-badge) 
# AWS terraform EBS
Terraform code to create EBS resource 

- This code have been tested to create EBS volume of a given size
- The code worked fine for disk type gp2,io1, other may need some modification 
- Please change variable input file to update: region,iops,encrypton etc
- All the created disk will be attached to a given ec2, if you wish to avoid attachment just comment "aws_volume_attachment" section of code

## How to use/ apply it?
terraform apply --var-file="tf-variable-file.tfvar"
