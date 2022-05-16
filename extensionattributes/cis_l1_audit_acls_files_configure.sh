#!/bin/bash

## Checks audit_acls_files_configure
## 

cis_l1_audit_acls_files_configure=$(/bin/ls -le $(/usr/bin/grep '^dir' /etc/security/audit_control | /usr/bin/awk -F: '{print $2}') | /usr/bin/awk '{print $1}' | /usr/bin/grep -c ":"))

## if cis_l1_audit_acls_files_configure == 1 then, if cis_l1_audit_acls_files_configure == 0, else Failed check
