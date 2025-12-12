<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioEventos.aspx.cs" Inherits="GCSSO.FormularioEventos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulario de Eventos - GCSSO</title>
    <meta charset="utf-8" />
<link href="~/Content/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Crear Nuevo Evento</h2>

            <!-- Título -->
            <label for="txtTitulo">Título</label>
            <asp:TextBox ID="txtTitulo" runat="server" MaxLength="100"></asp:TextBox>

            <!-- Descripción -->
            <label for="txtDescripcion">Descripción (máx. 300 caracteres)</label>
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" MaxLength="300" Rows="4"></asp:TextBox>

            <!-- Fecha -->
            <label for="txtFecha">Fecha</label>
            <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>

            <!-- Hora inicio y fin -->
            <label for="txtHoraInicio">Hora de inicio</label>
            <asp:TextBox ID="txtHoraInicio" runat="server" TextMode="Time"></asp:TextBox>

            <label for="txtHoraFin">Hora fin</label>
            <asp:TextBox ID="txtHoraFin" runat="server" TextMode="Time"></asp:TextBox>

            <!-- Ubicación -->
            <label for="txtUbicacion">Ubicación</label>
            <asp:TextBox ID="txtUbicacion" runat="server"></asp:TextBox>

            <!-- Responsable -->
            <label for="txtResponsable">Responsable</label>
            <asp:TextBox ID="txtResponsable" runat="server"></asp:TextBox>

            <!-- Categoría -->
            <label for="ddlCategoria">Categoría</label>
            <asp:DropDownList ID="ddlCategoria" runat="server">
                <asp:ListItem Text="Prevención" Value="Prevencion"></asp:ListItem>
                <asp:ListItem Text="Riesgos Críticos" Value="RiesgosCriticos"></asp:ListItem>
                <asp:ListItem Text="Salud Ocupacional" Value="SaludOcupacional"></asp:ListItem>
                <asp:ListItem Text="Cumplimiento Normativo" Value="CumplimientoNormativo"></asp:ListItem>
                <asp:ListItem Text="Emergencias" Value="Emergencias"></asp:ListItem>
            </asp:DropDownList>

            <!-- Documentos asociados -->
            <label for="fuDocumentos">Documentos asociados</label>
            <asp:FileUpload ID="fuDocumentos" runat="server" AllowMultiple="true" />

            <!-- Notificaciones -->
            <label>Notificaciones</label>
            <asp:CheckBox ID="chkNotificar" runat="server" Text="Enviar notificaciones" />
            <asp:CheckBox ID="chkCalendario" runat="server" Text="Agregar al calendario" />

            <!-- Botón -->
            <asp:Button ID="btnCrearEvento" runat="server" Text="Crear Evento" CssClass="btn" OnClick="btnCrearEvento_Click" />
        </div>
    </form>
</body>
</html>