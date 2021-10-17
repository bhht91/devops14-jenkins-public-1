!/bin/sh
# What does this script do: It launches an ec2 instance in my aws account 

aws ec2 run-instances --image-id ami-02e136e904f3da870 --count 1 --instance-type t2.micro --key-name DevOps14 --region us-east-1
