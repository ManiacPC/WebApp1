<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebApp1.Contacto" %>
<asp:Content runat="server" ID="Content0" ContentPlaceHolderID="ContenidoEstilosAdicionales">
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@8.11.6/dist/sweetalert2.css" rel="stylesheet"/>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContenidoPagina" runat="server">
<h1>Contacto</h1>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoScriptsAdicionales" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script>
        $(document).ready(function() {
            Swal.fire({
                position: 'top-end',
                type: 'success',
                title: 'Te salvaste!',
                showConfirmButton: false,
                timer: 1500
            });
        });

        
    </script>

    </asp:Content>
