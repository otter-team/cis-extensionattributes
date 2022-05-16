#!/bin/bash

## Checks audit_acls_folders_configure based on the https://github.com/usnistgov/macos_security project

cis_l1_audit_acls_folders_configure=$(/bin/ls -lde $(/usr/bin/grep '^dir' /etc/security/audit_control | /usr/bin/awk -F: '{print $2}') | /usr/bin/awk '{print $1}' | /usr/bin/grep -c ":")

## Write results based on output

if [ $cis_l1_audit_acls_folders_configure == '0' ]; then
    echo "<result>Compliant</result>"
elif [ $cis_l1_audit_acls_folders_configure == '1' ]; then
    echo "<result>Non-compliant</result>"
else
    echo "<result>Error</result>"
fi