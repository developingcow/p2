Group Member(s): Hong
<url>
<diagram>
Simple terraform config that sets up a db in private subnet and api server in public subnet

Instructions:
Requires Terraform, appropriate aws creds setup beforehand
1. terraform init
2. terraform apply: accepts 3 string arguments, 
local_ip: your external ip to ssh from
ssh_key: your ssh key name to ssh into created instances
aws_ami (optional): ami used for instance creation
Example:
terraform apply -var='local_ip=12.34.56.78/32' -var='ssh_key=YOUR_KEY_NAME'
3. terraform destroy: removes infrastructure created
Example:
terraform destroy -var='local_ip=12.34.56.78/32' -var='ssh_key=YOUR_KEY_NAME'

Note:
You will be able to telnet from api ec2 on port 3306 to db ec2, the ports are open
but connection will later be rejected by mysql 
(since this project does not setup privileges for mysql - out of context of this project)

api-user-data.sh, db-user-data.sh are scripts that will be run when setting up corresponding ec2 instances
