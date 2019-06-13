<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./Resources/css/bootstrap-personalizado.css">
    <link rel="stylesheet" href="./Resources/css/style.css">}
    <link rel="stylesheet" href="./Resources/fontawesome-5.9.0/css/all.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server" novalidate>
            <div class="row mt-5">
                <div class="col-5 mx-auto">
                    <h2>Iniciar sesión <span class="badge badge-info">Genial</span></h2>
                        <div class="form-group">
                        <label for="usuario">Usuario:</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fas fa-user"></i></div>
                            </div>
                            <asp:TextBox ID="TxtUsuario" runat="server" required placeholder="Ingrese usuario" CssClass="form-control"></asp:TextBox>
                            <div class="invalid-tooltip">
                                Escriba un nombre de usuario
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password">Contraseña:</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fas fa-key text-primary"></i></div>
                            </div>
                            <asp:TextBox ID="TxtPassword" type="password" CssClass="form-control" required placeholder="Ingrese su contraseña" runat="server"></asp:TextBox>
                            <div class="invalid-tooltip">
                                Escriba la contraseña
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="campo-prueba">Campo prueba:</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fas fa-spider text-primary"></i></div>
                            </div>
                            <asp:TextBox ID="TxtPrueba" type="campo-prueba" CssClass="form-control" placeholder="Control de pruebas" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="BtnLogin" CssClass="btn btn-primary btn-lg" runat="server" Text="Iniciar sesión" type="submit" />
                    <asp:Button ID="BtnPrueba" CssClass="btn btn-info btn-lg" runat="server" Text="Probar cambios de valores" OnClick="BtnPrueba_OnClick" />
                </div>
            </div>
        </form>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="./Resources/fontawesome-5.9.0/js/all.js"></script>
<script>
    //$(document).ready(function() {
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            var form = document.getElementById('form1');
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        }, false);
    })();
    //});
</script>
</html>
