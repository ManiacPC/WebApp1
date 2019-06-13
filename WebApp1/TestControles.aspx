<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="TestControles.aspx.cs" Inherits="WebApp1.TestControles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContenidoEstilosAdicionales" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPagina" runat="server">
    <div class="mt-5">
        <asp:Menu ID="MenuSitio" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal" StaticDisplayLevels="2"></asp:Menu>
        <asp:SiteMapDataSource runat="server" ID="SiteMapDataSource1"></asp:SiteMapDataSource>
        <hr />
    </div>
    <div class="mt-5">
        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
    </div>
    
    <div class="text-center text-sm-right">
        <h1 class="text-uppercase">
            ¡Plop!
            <small class="text-muted">Dijo el condorito</small>
        </h1> 

        <asp:Label ID="Label1" runat="server" Text="Esta es una etiqueta awesome"></asp:Label>

    </div>
    
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoScriptsAdicionales" runat="server">
</asp:Content>
