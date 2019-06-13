<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="TestValidacion.aspx.cs" Inherits="WebApp1.TestValidacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContenidoEstilosAdicionales" runat="server">
    <link rel="stylesheet" href="./Resources/fontawesome-5.9.0/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@8.11.6/dist/sweetalert2.css" rel="stylesheet"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPagina" runat="server">
    <div class="card">
        <div class="card-header bg-primary text-white">Ingreso de formulario</div>
        <div class="card-body">
            <h2>Complete los datos solicitados</h2>
            <p class="mt-2">Ingrese los datos que se solicitarán a continuación, si no le gusta <a href="#" data-toggle="modal" data-target="#miModalPrueba">abra un modal automaticamente</a> o ábralo <a href="#" id="abrirModalProgramaticamente" class="abrir-modal-programaticamente">enviando parámetros</a></p>
            
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="nombre">Nombre: <span class="text-danger">*</span></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">Su nombre:</div>
                            </div>
                            <asp:TextBox ID="TxtNombre" maxlength="50" required runat="server" CssClass="form-control" placeholder="Ingrese un nombre" ></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text"><i class="fas fa-user"></i></div>
                              
                            </div>
                        </div>
                        <asp:CustomValidator 
                            ID="ValidadorNombre" 
                            runat="server" 
                            ControlToValidate="TxtNombre"
                            CssClass="text-danger"
                            ValidateEmptyText="True"
                            ErrorMessage="CustomValidator" 
                            OnServerValidate="ValidadorNombre_ServerValidate">
                        </asp:CustomValidator>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="telefono">Telefono: <span class="text-danger">*</span></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fas fa-phone"></i></div>
                            </div>
                            <asp:TextBox ID="TxtTelefono" CssClass="form-control" type="tel" required max="12" min="7" runat="server" placeholder="P.ej.: +56912345678"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="observaciones">Observaciones:</label>
                        <textarea class="form-control" rows="5" id="observaciones" name="observaciones" placeholder="Escriba sus observaciones (si es que existe una)"></textarea>
                    </div>
                </div>
                <div class="col-md-12">
                <button type="submit" runat="server" class="btn btn-primary" id="BtnEnviar" name="btn-enviar"><i class="fas fa-arrow-right"></i> Enviar formulario</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- modal prueba -->
    <div class="modal mi-modal" id="miModalPrueba" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Modal body text goes here.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-guardar">Guardar algo</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /modal prueba -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoScriptsAdicionales" runat="server">
    <script src="./Resources/fontawesome-5.9.0/js/all.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    
    <script>

        $(document).ready(function () {
            /*$(document).on('click', '.abrir-modal-programaticamente', function() {

            }); */

            $('.btn-guardar').on('click', function() {
                Swal.fire({
                    title: '¿Desea guardar algo?',
                    text: "No podrás deshacer esta acción",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '¡Soy inevitable!'
                }).then((result) => {
                    if (result.value) {
                        Swal.fire(
                            '¡Tu dato imaginario se guardó!',
                            'Imaginariamente también pasaste el ramo',
                            'success'
                        );
                        $('#TxtNombre').attr('disabled', true).attr('readonly', true);
                        $('#miModalPrueba').modal('hide');
                    }
                })
            });

            $('.abrir-modal-programaticamente').on('click', function() {
                var nombre = $('#nombre').val();

                $('#miModalPrueba').modal('show');

                $('.modal-body').html(nombre);

                console.log('funcó');
            });
        });
    </script>
</asp:Content>
