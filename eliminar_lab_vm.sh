#!/bin/bash

RG="rg-lab-vm"

echo "Eliminando grupo de recursos completo..."
az group delete --name $RG --yes --no-wait
