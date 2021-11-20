Ansible Playbook which deploys a minimal demo cluster on ubuntu targets [Local minimal VMs on the same laptop]

Files to be configured on THIS playbook before run:
------------------------------------------------
- <hosts>: 
  - edit the IP/FQDN for master/worker nodes
  - edit the ansible_user to the configured user
  - edit the master_hostname
  - edit the cluster api advertise address to be used during kubeadm cluster initiation
- <files/monitoring_manifests/kuberenetes-alert-manager/AlertManagerConfigmap.yaml> - Edit the slack api url and slack channel details

Requirements:
-------------
- User with sudo priviliges configured on target systems. 
  Passwordless login setup for this user
- swap has been disabled

Specs:
------
3x Ubuntu systems - 1 master[k0]; 2x Workers [k1,k2]
2 vCPU each
2 GB Memory each

Ansible is installed on the control machine [redshift]. Playbooks will be run on this system - which will accordingly target the 3 required nodes as configured.

https://web.microsoftstream.com/video/da7aac8c-49a5-4967-b454-76015bd65292

