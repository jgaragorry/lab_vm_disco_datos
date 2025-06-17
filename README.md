# 🧪 Laboratorio VM con Disco de Datos - GMTech

Este laboratorio enseña a crear una máquina virtual Linux (Ubuntu) con un disco de datos adicional en Azure, aplicando buenas prácticas como etiquetado, bajo costo, uso de grupos de recursos, automatización y limpieza total de recursos.

---

## 📁 Estructura del directorio

lab_vm_disco_datos/
├── crear_lab_vm.sh
├── eliminar_lab_vm.sh
└── README.md


---

## ⚙️ Requisitos Previos

- Cuenta de Azure activa (ideal con créditos gratuitos).
- Azure CLI instalada y configurada (`az login`).
- Bash disponible (Linux, WSL o Git Bash en Windows).

---

## 🚀 Instrucciones

### 1. Clonar el repositorio

```bash
git clone https://github.com/jgaragorry/laboratorios-linux-azure-gmtech.git
cd laboratorios-linux-azure-gmtech/lab_vm_disco_datos


2. Crear la infraestructura

bash crear_lab_vm.sh


Este script:

✅ Crea un grupo de recursos rg-lab-vm

✅ Crea una VM con Ubuntu (tamaño económico B1s)

✅ Agrega un disco de datos (Standard HDD)

✅ Aplica etiquetas:

docente=gmtech

proyecto=lab_vm_disco

✅ Lista los recursos creados al finalizar

3. Verifica en Azure
VM: vm-lab-ubuntu

Disco OS: creado automáticamente

Disco adicional: datadisk-lab-01

🧹 Limpieza del laboratorio

bash eliminar_lab_vm.sh


Esto eliminará todo el grupo de recursos, asegurando que no quede ningún costo pendiente.

🧑‍🏫 Propósito del laboratorio
Aprender a automatizar la creación de VMs.

Gestionar discos y recursos adjuntos.

Aplicar etiquetas y buenas prácticas para entornos de prueba.

Enseñar la importancia de limpiar recursos para evitar costos.

📄 Licencia
Distribuido bajo licencia MIT.