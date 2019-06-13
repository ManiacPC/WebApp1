using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class TestValidacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidadorNombre_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (String.IsNullOrEmpty(TxtNombre.Text))
            {
                args.IsValid = false;
                ValidadorNombre.ErrorMessage = "El nombre no puede estar vacío";
            }
            else
            {
                if (TxtNombre.Text.ToUpper().Equals("ANDRISTRIAN"))
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                    ValidadorNombre.ErrorMessage = "Usted no es Andristrian";
                } 

            }

        }
    }
}