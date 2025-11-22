# Boolean Operators in Azure  
A collection of enterprise ready examples demonstrating how boolean comparison operators drive cloud automation in Azure environments. The examples cover Python, PowerShell, Azure CLI, and Bicep, and are designed for use in FinOps governance, platform engineering, and CI and CD pipelines.

---

## Purpose

Boolean operators enable automation platforms and cloud governance tools to evaluate configuration, enforce compliance, and drive decision logic. This repository provides reproducible, production quality examples of boolean logic used for:

- Deployment validation  
- Autoscaling decisions  
- FinOps guardrails  
- Configuration enforcement  
- Conditional infrastructure deployments  

---

## Folder Structure

### `python/`
Python scripts that implement pre deployment validation, autoscale checks, and FinOps SKU enforcement using boolean logic.

### `powershell/`
PowerShell scripts designed for automation engineers managing Azure resources, with strong commenting, secure defaults, and clear return codes.

### `azcli/`
Shell scripts that demonstrate boolean validation patterns around Azure CLI output.

### `bicep/`
Infrastructure as Code (IaC) examples that show how boolean logic controls conditional deployments and output validations.

---

## Usage

Clone the repository:

```bash
git clone https://github.com/<your-repo>/boolean-operators-in-azure.git
cd boolean-operators-in-azure
```

Run scripts locally or integrate into CI pipelines.

### Python example:

```bash
python python/vm_validation.py
```

### PowerShell example:

```powershell
pwsh ./powershell/storage_https_check.ps1 -ResourceGroupName MyRG -AccountName mystorage01
```

### Azure CLI example:

```bash
bash azcli/region_validation.sh
```

### Bicep deployment example:

```bash
az deployment group create \
  --resource-group MyRG \
  --template-file bicep/conditional_vm.bicep \
  --parameters environment=prod vmSku=Standard_DS2_v2
```

---

## Requirements

- Python 3.10 or later  
- PowerShell 7 or later  
- Azure CLI 2.57.0 or later  
- Azure Bicep 0.26.0 or later  

---

## License

MIT
