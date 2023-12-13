#!/bin/bash

# Function to run commands with output redirected to /dev/null
run_command() {
    "$@" > /dev/null 2>&1
}

# Example usage
run_command scripts/getdomains.sh
run_command scripts/gau_node.sh
run_command scripts/cat_uniq.sh
run_command scripts/urldedupe.sh
run_command scripts/gf_lfi_node.sh
run_command scripts/gf_redirect_node.sh
run_command scripts/gf_ssrf_node.sh
run_command scripts/gf_xss_node.sh
run_command scripts/gf_idor_node.sh
run_command scripts/gf_rce_node.sh
run_command scripts/gf_sqli_node.sh
run_command scripts/gf_ssti_node.sh

find finaloutput -type f -exec cat {} + | sort -n | uniq | tee output.txt
rm output/gau_output.txt output/uniqe.txt

