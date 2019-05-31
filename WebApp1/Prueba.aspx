<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Principal.Master" CodeBehind="Prueba.aspx.cs" Inherits="WebApp1.Prueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContenidoPagina" runat="server">

    <form id="form1" runat="server">
        <div class="row">
            <div class="col-8">
                <h1>Test columna izquierda</h1>
                <button class="btn btn-primary">Enviar hola!</button>
                <button class="btn btn-danger mx-md-5 mx-sm-1 mt-md-3 mt-sm-1">¡Chao!</button>
            </div>
            <div class="col-4">
                <h2>Test columna derecha</h2>
            </div>
        </div>
    </form>
</asp:Content>

