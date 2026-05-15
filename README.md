# 📅 API Calendario Laboral

API REST desarrollada en Java con Spring Boot, contenerizada con Docker y desplegada en AWS ECS mediante un pipeline CI/CD con AWS CodeBuild.

## 🚀 Tecnologías

- **Java 17** (Corretto)
- **Spring Boot**
- **Maven**
- **Docker**
- **AWS ECR** (Elastic Container Registry)
- **AWS ECS** (Elastic Container Service)
- **AWS CodeBuild** (CI/CD)

## 📁 Estructura del Proyecto
Docker/
├── BD_Calendario/
│   └── DML_Calendario.sql    # Script de base de datos
├── calendario/               # Proyecto Spring Boot
│   ├── src/
│   ├── Dockerfile
│   └── pom.xml
└── buildspec.yml             # Pipeline AWS CodeBuild

## ⚙️ Variables de Entorno (AWS CodeBuild)

| Variable | Descripción | Ejemplo |
|---|---|---|
| `AWS_ACCOUNT_ID` | ID de cuenta AWS | `534224643194` |
| `AWS_DEFAULT_REGION` | Región AWS | `us-east-2` |
| `IMAGE_REPO_NAME` | Nombre del repositorio ECR | `api-calendariolaboral` |
| `CONTAINER_NAME` | Nombre del contenedor ECS | `api-calendariolaboral-container` |

## 🔄 Pipeline CI/CD

1. **Pre-build**: Login a Amazon ECR y configuración de variables
2. **Build**: Compilación con Maven y construcción de imagen Docker
3. **Post-build**: Push de imagen a ECR y generación de `imagedefinitions.json`

## 🐳 Correr localmente

```bash
# Compilar el proyecto
mvn clean install -DskipTests

# Construir imagen Docker
docker build -t api-calendario .

# Correr el contenedor
docker run -p 8080:8080 api-calendario
```

## 🗄️ Base de Datos

El archivo `BD_Calendario/DML_Calendario.sql` contiene el script para inicializar la base de datos del sistema de calendario laboral.

## 👤 Autor

**Sebastian Castañeda D.**  
GitHub: [@bastianc92](https://github.com/bastianc92)
