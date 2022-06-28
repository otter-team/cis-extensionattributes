#!/bin/bash

## Checks audit_control_mode_configure based on the https://github.com/usnistgov/macos_security project

cis_l1_audit_control_mode_configure=$(/bin/ls -l /etc/security/audit_control | awk '!/-r--r-----|current|total/{print $1}' | /usr/bin/wc -l | /usr/bin/xargs)

## Write results based on output

if [ $cis_l1_audit_control_mode_configure == 0 ]; then
    echo "<result>Compliant</result>"
elif [ $cis_l1_audit_control_mode_configure == 1 ]; then
    echo "<result>Non-compliant</result>"
else
    echo "<result>Error</result>"
fi
