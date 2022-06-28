#!/bin/bash

## Checks audit_control_owner_configure based on the https://github.com/usnistgov/macos_security project

cis_l1_audit_control_owner_configure=$(/bin/ls -dn /etc/security/audit_control | /usr/bin/awk '{print $3}')

## Write results based on output

if [ $cis_l1_audit_control_owner_configure == 0 ]; then
    echo "<result>Compliant</result>"
elif [ $cis_l1_audit_control_owner_configure == 1 ]; then
    echo "<result>Non-compliant</result>"
else
    echo "<result>Error</result>"
fi
