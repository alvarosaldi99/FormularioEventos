# FormularioEventos# Formulario de Eventos GCSSO

Este proyecto implementa el **Formulario de eventos** descrito en el informe de análisis y diseño del sitio web GCSSO.  
El formulario permite crear eventos con título, descripción, fecha, hora, ubicación, responsable, categoría, documentos asociados y notificaciones.

---

- **FormularioEventos.aspx** → Página ASP.NET con el formulario.
- **FormularioEventos.aspx.cs** → Lógica de servidor para guardar eventos en SharePoint Online.
- **styles.css** → Archivo de estilos separado para mantener el diseño limpio.
- **README.md** → Documentación del proyecto.

---

## Requisitos

- **Visual Studio 2022** o superior.
- **ASP.NET Web Forms** habilitado.
- **PnP.Framework** para la conexión con SharePoint Online:
  ```bash
  Install-Package PnP.Framework