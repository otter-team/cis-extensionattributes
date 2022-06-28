#!/bin/bash

## Checks audit_auditd_enabled based on the https://github.com/usnistgov/macos_security project

cis_l1_audit_auditd_enabled=$(/bin/launchctl list | /usr/bin/grep -c com.apple.auditd)

## Write results based on output

if [ $cis_l1_audit_auditd_enabled == 0 ]; then
    echo "<result>Compliant</result>"
elif [ $cis_l1_audit_auditd_enabled == 1 ]; then
    echo "<result>Non-compliant</result>"
else
    echo "<result>Error</result>"
fi
