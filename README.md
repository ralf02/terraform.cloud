# Proyecto de Práctica Terraform Cloud

Este proyecto tiene como objetivo servir como un entorno de práctica para el uso de Terraform Cloud. Despliega una infraestructura básica en Amazon Web Services (AWS) que incluye:

- **S3 Bucket**: Un bucket de S3 para almacenamiento de objetos.
- **Instancia EC2**: Una instancia de cómputo EC2.

## Requisitos Previos

Antes de comenzar, asegúrate de tener lo siguiente:

*   Una cuenta de AWS configurada con las credenciales necesarias.
*   Una cuenta de Terraform Cloud.
*   Acceso a la línea de comandos de Terraform (CLI).

## Configuración del Proyecto

1.  **Clonar el Repositorio**:
    ```bash
    git clone <URL_DEL_REPOSITORIO>
    cd terraform.cloud
    ```

2.  **Configurar Terraform Cloud**:
    *   Crea un nuevo Workspace en Terraform Cloud.
    *   Configura las variables de entorno de AWS (`AWS_ACCESS_KEY_ID` y `AWS_SECRET_ACCESS_KEY`) en tu Workspace de Terraform Cloud. Asegúrate de marcarlas como "Sensitive" si es necesario.
    *   Vincula tu repositorio VCS (GitHub, GitLab, etc.) al Workspace de Terraform Cloud.

3.  **Inicializar Terraform**:
    Asegúrate de haber configurado tu `~/.terraformrc` para usar Terraform Cloud como backend. Luego, ejecuta:
    ```bash
    terraform init
    ```

## Despliegue de la Infraestructura

Una vez que Terraform esté inicializado y configurado con Terraform Cloud, puedes aplicar los cambios:

```bash
terraform plan
terraform apply
```

Terraform Cloud ejecutará el `plan` y `apply` de forma remota, mostrando los resultados en la interfaz web de Terraform Cloud.

## Destrucción de la Infraestructura

Para destruir los recursos creados por este proyecto, puedes usar la interfaz de Terraform Cloud o ejecutar el siguiente comando localmente:

```bash
terraform destroy
```

**¡Importante!** Asegúrate de entender qué recursos se eliminarán antes de ejecutar `terraform destroy`.

## Archivos del Proyecto

*   `main.tf`: Archivo principal de configuración de Terraform.
*   `variables.tf`: Define las variables utilizadas en el proyecto.
*   `outputs.tf`: Define las salidas del proyecto.
*   `providers.tf`: Configura los proveedores de Terraform (AWS en este caso).
*   `s3.tf`: Define la configuración del bucket S3.
*   `ec2.tf`: Define la configuración de la instancia EC2.
*   `data.tf`: Define las fuentes de datos de Terraform.
*   `locals.tf`: Define las variables locales.

---

Este `README.md` proporciona una visión general del proyecto y las instrucciones necesarias para su configuración y despliegue utilizando Terraform Cloud.
