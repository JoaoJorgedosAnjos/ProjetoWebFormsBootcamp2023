using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormsBootcamp2023
{
    public partial class Atividade03_Panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPainel2Proximo_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }
        protected void btnPainel3Proximo_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
        }

        protected void btnPainel3EVoltar_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }

        protected void btnPainel4Voltar_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }

       

        protected void btnPainel4Enviar_Click(object sender, EventArgs e)
        {
            lblEnviarDados.Text = "AVISO! Os seus dados foram enviados com sucesso";
        }

       
    }
}