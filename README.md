# Boolean Operators in Azure  
A collection of examples that show how boolean comparison operators drive cloud decisions across Python, PowerShell, Azure CLI, and Bicep.

This repo supports the blog post:  
**"Boolean Comparison Operators: The Tiny Truth Machines Running Your Entire Azure World"**

---

## Overview

Boolean comparison operators are the foundation of:
- Deployment gates  
- Azure Policy checks  
- Bicep conditional logic  
- Autoscaling behavior  
- FinOps anomaly detection  
- CI and CD workflows  
- Custom guardrails and automation  

This repo showcases small, clear examples of how boolean logic works inside real Azure scenarios.

---

## Repo Contents

### `python/`
Python examples demonstrating:
- VM configuration validation  
- Autoscale trigger checks  
- FinOps-preventive logic to block high cost SKUs  

### `powershell/`
PowerShell examples including:
- Storage account HTTPS enforcement  
- Autoscale threshold checks  
- FinOps policy validation  

### `azcli/`
Bash scripts that wrap Azure CLI with boolean logic checks.

### `bicep/`
Examples of conditional deployments and boolean outputs.

---

## How to Use

Clone the repo:
```
git clone https://github.com/<yourname>/boolean-operators-in-azure.git
cd boolean-operators-in-azure
```

Run the scripts directly or incorporate them into your automation pipelines.
```
python python/vm_validation.py
pwsh powershell/storage_https_check.ps1
bash azcli/region_validation.sh
```
Bicep deployment example:
```
az deployment group create
--resource-group MyRG
--template-file bicep/conditional_vm.bicep
--parameters environment=prod vmSku=Standard_DS2_v2
```

---

## License

MIT

