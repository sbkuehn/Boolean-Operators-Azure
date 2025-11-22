<#
.SYNOPSIS
    Evaluate autoscale logic using boolean comparisons.

.DESCRIPTION
    Validates CPU and memory thresholds to determine if a scale-out event should occur.

.NOTES
    Author: Shannon Eldridge-Kuehn
    Created: 2025-11-22
#>

$cpu = 82
$memory = 65

$cpuHigh = ($cpu -gt 70)
$memorySafe = ($memory -lt 80)

$scaleOut = $cpuHigh -and $memorySafe

Write-Host "Scale out recommended:" $scaleOut
