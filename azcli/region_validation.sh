# Author: Shannon Eldridge-Kuehn
# Created: 2025-11-22
# Purpose: Validate that VM region is approved.


#!/bin/bash
set -euo pipefail

REGION=$(az vm show -g MyRG -n MyVM --query location -o tsv)

if [ "$REGION" == "eastus2" ]; then
    echo "Region approved."
else
    echo "Region not approved."
    exit 1
fi
