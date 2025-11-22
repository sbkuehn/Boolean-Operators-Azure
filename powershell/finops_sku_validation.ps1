<#
.SYNOPSIS
    Validate and block high cost SKUs.

.DESCRIPTION
    Prevents deployment of costly SKUs using boolean comparison operators.

.PARAMETER Sku
    The SKU value to validate.

.NOTES
    Author: Shannon Eldridge-Kuehn
    Created: 2025-11-22
#>

param(
    [Parameter(Mandatory=$true)][string]$Sku
)

$blocked = ($Sku -eq "Standard_F64s")
Write-Host "SKU blocked:" $blocked

if ($blocked) {
    Write-Error "High cost SKU detected. Deployment blocked."
    exit 1
}

exit 0
