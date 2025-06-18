
---

## 📜 Script `crear_lab_vm.sh`

```bash
#!/bin/bash

# Variables
RG="rg-lab-vm"
LOCATION="eastus"
VM_NAME="vm-lab-ubuntu"
DISK_NAME="datadisk-lab-01"
SIZE="Standard_B1s"
TAGS="docente=gmtech proyecto=lab_vm_disco"

echo "Creando grupo de recursos..."
az group create --name $RG --location $LOCATION --tags $TAGS

echo "Creando VM Ubuntu..."
az vm create \
  --resource-group $RG \
  --name $VM_NAME \
  --image Ubuntu2204 \
  --size $SIZE \
  --generate-ssh-keys \
  --tags $TAGS

echo "Creando disco de datos..."
az disk create \
  --resource-group $RG \
  --name $DISK_NAME \
  --size-gb 10 \
  --sku Standard_LRS \
  --tags $TAGS

echo "Adjuntando disco a la VM..."
az vm disk attach \
  --resource-group $RG \
  --vm-name $VM_NAME \
  --name $DISK_NAME

echo "=== RECURSOS CREADOS ==="
az resource list --resource-group $RG --output table
