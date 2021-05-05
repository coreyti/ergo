#!/usr/bin/env bash

missing_secrets() {
  path=${1:-.local/envrc}

  if [ -f "${path}" ] ; then
    log_status ""
    log_status "checking for missing 'secrets' in: ${path}"

    local IFS=$'\n'
    lines=$(cat ./.envrc | grep -e '^: \$')

    for line in $lines ; do
      secret=$(expr "${line}" : '[^A-Z0-9]*\([_A-Z0-9]*\)')
      grep -q ${secret} .local/envrc || log_status "  ➜ ${secret} is missing"
    done

    log_status ""
  fi
}
