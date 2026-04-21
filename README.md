# Plantilla para Aplicación Shiny

Este repositorio proporciona un punto de partida limpio y reproducible para 
desarrollar aplicaciones en R Shiny. Incluye manejo de dependencias con `renv`, 
control de versiones con Git y una estructura organizada del proyecto para 
facilitar el mantenimiento y la escalabilidad.

---

## 📁 Estructura del Proyecto

```
my-shiny-app/
├── app.R                # Aplicación principal (o ui.R + server.R)
├── data/                # Datos de entrada
├── www/                 # Archivos estáticos (imágenes, descargas)
├── scripts/             # Scripts auxiliares (procesamiento, utilidades, funciones)
├── renv.lock            # Snapshot reproducible de dependencias
├── .gitignore           # Archivos ignorados por Git
├── my-shiny-app.Rproj   # Archivo de proyecto de RStudio
├── README.md            # Documentación del proyecto
```

---

## ⚙️ Configuración

Clona el repositorio y restaura el entorno de R:

```r
renv::restore()
```

Esto instalará todos los paquetes necesarios definidos en `renv.lock`.

---

## ▶️ Ejecutar la aplicación

```r
shiny::runApp()
```

O abre `app.R` en RStudio y haz clic en **Run App**.

---

## 📦 Manejo de dependencias

Este proyecto utiliza `renv` para asegurar la reproducibilidad.

* Instalar nuevos paquetes:

  ```r
  install.packages("nombre_del_paquete")
  ```

* Actualizar el lockfile:

  ```r
  renv::snapshot()
  ```

* Restaurar el entorno:

  ```r
  renv::restore()
  ```

---

## 🔒 Buenas prácticas con Git

* ✔ Incluir `renv.lock` en el repositorio
* ❌ No incluir `renv/library/`
* ✔ Usar `.gitignore` para excluir archivos temporales