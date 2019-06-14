<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RevisarChinchillas.aspx.cs" Inherits="WebApp1.RevisarChinchillas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContenidoEstilosAdicionales" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPagina" runat="server">
    <h2>Gestionar chinchillas</h2>
    
    <asp:dropdownlist ID="DdChinchillas" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdChinchillas_SelectedIndexChanged"></asp:dropdownlist>
    
    <asp:textbox  ID="TxtSeleccionado" CssClass="form-control mt-3" runat="server"></asp:textbox>
    
    <asp:gridview ID="TblChinchillas" CssClass="table table-hover" AutoGenerateColumns="False" runat="server" OnRowCommand="TblChinchillas_RowCommand">
        <Columns>
            <asp:BoundField HeaderText="Id" DataField="Id"/>
            <asp:BoundField HeaderText="Locación" DataField="Locacion"/>
            <asp:BoundField HeaderText="Género" DataField="Genero"/>
            <asp:BoundField HeaderText="Familia" DataField="Familia"/>
            <asp:BoundField HeaderText="Edad" DataField="Edad"/>
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate>
                    <asp:Button 
                        CssClass="btn btn-outline-primary" 
                        Text="Ver detalles de la chinchilla :3"
                        CommandName="visualizarDetalles"
                        CommandArgument='<%# Eval("Id") + ";" + Eval("Genero")  %>'
                        runat="server"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:gridview>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoScriptsAdicionales" runat="server">
</asp:Content>
