#!/bin/sh

./ssh_wrapper.sh server-01 "sudo /usr/local/sbin/list_requests -H && echo ✅ All mails moderated;"
