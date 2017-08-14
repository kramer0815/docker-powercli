#!/bin/sh

yum -y install https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.14/powershell-6.0.0_alpha.14-1.el7.centos.x86_64.rpm
exec "$@"
if [[ -z ${1} ]]; then
  exec $(which powershell)
else
  exec "$@"
fi
