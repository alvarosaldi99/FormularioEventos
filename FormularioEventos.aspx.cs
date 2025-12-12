using System;
using Microsoft.SharePoint.Client;
using PnP.Framework;

namespace GCSSO
{
    public partial class FormularioEventos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCrearEvento_Click(object sender, EventArgs e)
        {
            try
            {
                // Datos del formulario
                string titulo = txtTitulo.Text;
                string descripcion = txtDescripcion.Text;
                string fecha = txtFecha.Text;
                string horaInicio = txtHoraInicio.Text;
                string horaFin = txtHoraFin.Text;
                string ubicacion = txtUbicacion.Text;
                string responsable = txtResponsable.Text;
                string categoria = ddlCategoria.SelectedValue;


                string siteUrl = "https://5c2j1t.sharepoint.com/sites/pwso/_layouts/15/viewlsts.aspx?view=14";
                string userName = "asaldias@5c2j1t.onmicrosoft.com";
                string password = "$Alvaro$20251126";

                using (var authManager = new AuthenticationManager())
                using (var context = authManager.GetContext(siteUrl, userName, password))
                {
                    // Obtener la lista de eventos
                    List listaEventos = context.Web.Lists.GetByTitle("EventosGCSSO");

                    // Crear nuevo ítem
                    ListItemCreationInformation itemCreateInfo = new ListItemCreationInformation();
                    ListItem newItem = listaEventos.AddItem(itemCreateInfo);

                    newItem["Title"] = titulo;
                    newItem["Descripcion"] = descripcion;
                    newItem["FechaEvento"] = DateTime.Parse(fecha);
                    newItem["HoraInicio"] = horaInicio;
                    newItem["HoraFin"] = horaFin;
                    newItem["Ubicacion"] = ubicacion;
                    newItem["Responsable"] = responsable;
                    newItem["Categoria"] = categoria;

                    newItem.Update();
                    context.ExecuteQuery();

                    lblMensaje.Text = "Evento creado exitosamente";
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al crear el evento: " + ex.Message;
            }
        }
    }
}