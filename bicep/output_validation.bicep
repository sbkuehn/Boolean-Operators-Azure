// Author: Shannon Eldridge-Kuehn
// Created: 2025-11-22
// Purpose: Output boolean validation result for SKU.


param vmSku string

output skuIsValid bool = (vmSku == 'Standard_DS2_v2')
