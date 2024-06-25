# Pika Backup Network Control

This Ansible role ensures that Pika Backup only runs when on the home or office network. It checks the current IP address and stops the backup service if not in the desired location.

## Variables

- `home_ip_prefix`: The IP prefix for your home network (default: "192.168.1").
- `office_ip_prefix`: The IP prefix for your office network (default: "10.0.0").
- `log_file`: The log file path for logging actions (default: "/var/log/pika_backup.log").

## Usage

Include this role in your playbook and customize the variables as needed.

```yaml
- hosts: all
  roles:
    - role: pika_backup_network_control
      vars:
        home_ip_prefix: "192.168.1"
        office_ip_prefix: "10.0.0"
        log_file: "/var/log/pika_backup.log"
