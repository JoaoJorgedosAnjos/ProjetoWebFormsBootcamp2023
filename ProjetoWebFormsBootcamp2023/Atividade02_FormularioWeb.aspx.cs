using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormsBootcamp2023
{
    public partial class Atividade02_FormularioWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void brnCblDiasSemana_Click(object sender, EventArgs e)
        {
            bool peloMenosUmSelecionado = false;

            lblClbResultadoNaTela.Text = "O(s) dia(s) disponível(is) para trabalhar é(são): <br />";

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    lblClbResultadoNaTela.Text += item.Text + "<br/>";
                    peloMenosUmSelecionado = true;
                }
            }

            if (!peloMenosUmSelecionado)
            {
                lblClbResultadoNaTela.Text = "Selecione pelo menos um dia da semana";
            }
        }
    }
}