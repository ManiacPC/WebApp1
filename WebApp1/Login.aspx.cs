﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtPrueba.Text = "Hola mundo";
        }

        protected void BtnPrueba_OnClick(object sender, EventArgs e)
        {
            TxtPrueba.Text = "Bienvenido " + TxtUsuario.Text;

        }
    }
}