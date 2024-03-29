<<<<<<< HEAD
Make the WordPress site as High available as possible if you got time, use
whatever AWS service as you see fit?
and
You can assume some/all AWS services are already started manually and
running, or start/configure them from within the playbook?

# awsha.yml
Here's an updated playbook that launches an EC2 instance in an Auto Scaling Group for high availability, 
and sets up a load balancer with an RDS database for WordPress.

Here's a README.md file that documents the assumptions made in the playbook:

Deployment of highly available WordPress on AWS EC2 using Ansible
Assumptions
A fresh EC2 instance running Linux is already up and running on AWS.
The following AWS services are already started and running: VPC, Subnets, Security Groups, Key Pairs, and ELB.
The EC2 instance is able to access the internet to download the latest version of WordPress.
The AWS CLI is installed and configured on the local machine where the playbook is executed.
An IAM user with sufficient permissions to manage EC2, ASG, ELB, and VPC resources has been created.
The wp-config.php file is already created and stored in the same directory as the playbook.

**Usage**

Clone the repository or download the playbook.
Open a terminal window and navigate to the directory where the playbook is stored.
Run the following command to execute the playbook:
Copy code
ansible-playbook awsha.yml
Wait for the playbook to complete the execution, which typically takes a few minutes.
Access the WordPress site using the URL provided by the ELB.

In the same repo, add a Docker file, so that we can build a docker image and
run your Ansible playbook on any machine as long as Docker is installed?

**Dockerfile**
Here's a Dockerfile that can be used to build a Docker image that contains all the necessary components to run the Ansible playbook:
To build the Docker image, run the following command in the terminal:
docker build -t deploy-wordpress-on-aws-ec2 .

Once the image is built, you can run the Ansible playbook by executing the following command:
docker run deploy-wordpress-on-aws-ec2

The above command will run the playbook inside a Docker container, allowing you to run the playbook on any machine that has Docker installed.

**Dockerfile-run-everyhour**
Here's an updated Dockerfile-run-everyhour that runs a script that creates a new post on the WordPress site every hour.

**add_post_to_wordpress.sh**
The content of the add_post_to_wordpress.sh script that adds a new post to the WordPress site every hour.
This Docker image can be built and run in the same way as described in the previous answer. When the Docker container starts, the script will start adding new posts to the WordPress site every hour.

=======
• Write an Ansible playbook that deploy WordPress on AWS using EC2
running Linux?

This ansible playbook for above 2 quetions.
Replace "23rlkey" in the playbook with the actual name of your EC2 key pair, and make sure to also include your wp-config.php file in the same directory as the playbook.
Add DB name, user name and Password in the wp-config.php.

• You can assume a fresh EC2 is already up and running, or start one from the
playbook?

ec2start.yml => start the ec2 instance with ansible playbook.
>>>>>>> ab519735e57d967d14527c760656bd749639c966

