Ansible Linux Bulk Server Patching
====================================

Project Overview
Automated Linux server package updates and patching using Ansible on Ubuntu servers.

Features:
Bulk APT package cache updates across multiple Linux servers.
Automated package upgrades using Ansible.
Inventory-based server management.
SSH connectivity and privilege escalation.
Sequential execution to reduce package-lock conflicts.
Execution status monitoring and error handling.

Technologies Used:
Ansible
Ubuntu Linux
SSH / SSH authentication
APT package manager
YAML

Commands Used:
# Test server connectivity
ansible -i inventory1 all -m ping

# Update APT package cache
ansible -i inventory1 all -m apt -a "sudo apt update" -b -K -f 1 | tee -a patching.log

# Upgrade installed packages
ansible -i inventory1 all -m apt -a "upgrade=yes" -b -K -f 1

Learning Outcomes:
Linux patch management automation.
Ansible inventory configuration.
Multi-server administration.
SSH authentication and sudo privilege escalation.
Troubleshooting APT lock conflicts.
Note: The upgrade command installs available package upgrades. Review changes and test in a non-production environment before patching production servers.
