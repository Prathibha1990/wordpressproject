• Write an Ansible playbook that deploy WordPress on AWS using EC2
running Linux?

This ansible playbook for above 2 quetions.
Replace "23rlkey" in the playbook with the actual name of your EC2 key pair, and make sure to also include your wp-config.php file in the same directory as the playbook.
Add DB name, user name and Password in the wp-config.php.

• You can assume a fresh EC2 is already up and running, or start one from the
playbook?

ec2start.yml => start the ec2 instance with ansible playbook.

