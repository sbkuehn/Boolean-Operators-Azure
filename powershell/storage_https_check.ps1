<#
.SYNOPSIS
    Validate that a storage account enforces HTTPS-only traffic.

.DESCRIPTION
    Checks the HTTPS-only configuration for an Azure storage account and exits with non-zero if non-compliant.

.PARAMETER ResourceGroupName
    Resource group containing the storage account.

.PARAMETER AccountName
    Name of the storage account to validate.

.NOTES
    Author: Shannon Eldridge-Kuehn
    Created: 2025-11-22
#>

param(
    [Parameter(Mandatory=$true)][string]$ResourceGroupName,
    [Parameter(Mandatory=$true)][string]$AccountName
)

$account = Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $AccountName
$httpsOnly = ($account.EnableHttpsTrafficOnly -eq $true)

Write-Host "HTTPS only enabled:" $httpsOnly

if (-not $httpsOnly) {
    Write-Error "Storage account is not compliant."
    exit 1
}

exit 0
