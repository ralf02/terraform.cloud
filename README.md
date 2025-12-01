# Proyecto con Terraform Cloud

Este proyecto tiene como objetivo servir como un EC2 para pruebas usando Terraform Cloud. Despliega una infraestructura básica en Amazon Web Services (AWS) que incluye:


- **Instancia EC2**: Una instancia de cómputo EC2.
- **VPC**: Una instancia de cómputo EC2.

## Requisitos Previos

Antes de comenzar, asegúrate de tener lo siguiente:

*   Una cuenta de AWS configurada con las credenciales necesarias.
*   Una cuenta de Terraform Cloud.
*   Acceso a la línea de comandos de Terraform (CLI).

## Configuración del Proyecto

1.  **Clonar el Repositorio**:
    ```bash
    git clone <URL_DEL_REPOSITORIO>
    cd master
    ```

2.  **Configurar Terraform Cloud**:
    *   Se crea un nuevo Workspace en Terraform Cloud.
    *   **Configura el Directorio de Trabajo**: Es crucial configurar el "Terraform Working Directory" en tu Workspace de Terraform Cloud. Para este proyecto, el directorio de trabajo principal para el despliegue de un servidor simple es: `environments/simple-server/`.
    *   Configura las variables de entorno de AWS (`AWS_ACCESS_KEY_ID` y `AWS_SECRET_ACCESS_KEY`) en tu Workspace de Terraform Cloud. Asegúrate de marcarlas como "Sensitive" y de tipo "Environment Variable".
    *   Configura las variables de Terraform específicas del proyecto (como `ohio_cidr`, `subnet_public`, `myTagsGeneric`, `ec2_specs`) en tu Workspace de Terraform Cloud, de tipo "Terraform Variable".
    *   Vincula tu repositorio VCS (GitHub, GitLab, etc.) al Workspace de Terraform Cloud.


## Despliegue de la Infraestructura

    Terraform Cloud ejecutará el `plan` y `apply` de forma remota, mostrando los resultados en la interfaz web de Terraform Cloud.

## Destrucción de la Infraestructura

Para destruir los recursos creados por este proyecto para el entorno `simple-server`, uso la interfaz de Terraform Cloud.

## Archivos del Proyecto

Aquí se listan los archivos principales:

*   **`environments/simple-server/main.tf`**: Punto de entrada principal para el entorno `simple-server`, donde se instancian los módulos.
*   **`environments/simple-server/providers.tf`**: Configuración del proveedor de AWS para el entorno `simple-server`.
*   **`modules/ec2/data.tf`**: Define la fuente de datos para el par de claves EC2.
*   **`modules/ec2/main.tf`**: Define los recursos EC2 del módulo.
*   **`modules/ec2/outputs.tf`**: Define las salidas del módulo EC2.
*   **`modules/ec2/variables.tf`**: Define las variables de entrada para el módulo EC2.
*   **`modules/security_groups/main.tf`**: Define los recursos de Security Groups del módulo.
*   **`modules/security_groups/outputs.tf`**: Define las salidas del módulo Security Groups.
*   **`modules/vpc/main.tf`**: Define los recursos de VPC del módulo.
*   **`modules/vpc/variables.tf`**: Define las variables de entrada para el módulo VPC.
*   **`README.md`**: Este archivo, que describe el proyecto y su estructura.
