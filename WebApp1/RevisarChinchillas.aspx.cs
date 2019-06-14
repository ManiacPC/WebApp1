using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp1DAL.DAL;

namespace WebApp1
{
    public partial class RevisarChinchillas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DdChinchillas.DataSource = ChinchillaDAL.GetAll();
                DdChinchillas.DataTextField = "NombreMostrar";
                DdChinchillas.DataValueField = "Id";
                DdChinchillas.DataBind();

                TblChinchillas.DataSource = ChinchillaDAL.GetAll();
                TblChinchillas.DataBind();
            }
        }

        protected void DdChinchillas_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(1000);
            String test = DdChinchillas.SelectedItem.Text;
            TxtSeleccionado.Text = DdChinchillas.SelectedItem.Text;
        }

        protected void TblChinchillas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "visualizarDetalles")
            {
                
            }
        }
    }
}