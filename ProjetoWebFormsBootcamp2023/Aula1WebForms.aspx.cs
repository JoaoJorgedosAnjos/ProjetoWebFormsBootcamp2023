using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormsBootcamp2023
{
    public partial class Aula1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Alimentar a DropDrowList com um ListItem
            //if (!IsPostBack)
            // {
            // //(ID da DropDownList).Item.Add (new ListItem ("info1", "info2");
            // ddlEstados.Items.Add(new ListItem("", "0"));
            // ddlEstados.Items.Add(new ListItem("Amazonas", "1"));
            // ddlEstados.Items.Add(new ListItem("Paraná", "2"));
            // ddlEstados.Items.Add(new ListItem("Rio de Janeiro", "3"));
            // //ou
            //ddlEstados.Items.Add(new ListItem() {Text="Distrito Federal", Value="4"});      
            // }

            //Alimentar a DropDownList com um DATATABLE
            //DataTable dt = new DataTable();
            ////Add colunas no DataTable
            //dt.Columns.Add("Estado", typeof(String));
            //dt.Columns.Add("Valor", typeof(int));
            ////Add as linhas no DataTable
            //dt.Rows.Add("","0");
            //dt.Rows.Add("Distrito Federal","1");
            //dt.Rows.Add("Rio Grande do Sul","2");
            //dt.Rows.Add("Minas Gerais","3");

            ////Vinculação do DataTable com o DropDownList
            ////(ID da DropwDownList).DataSource = nomw da fonte de dados
            ////(ID da DropwDownList).DataTextField = (nomw da fonte de dados).Columns["coluna para Usuario"].ToString
            ////(ID da DropwDownList).DataValueField = (nomw da fonte de dados).Columns["coluna para Valor"].ToString
            ////(ID da DropwDownList).DataBind; (aqui é feito a vinculação da fonte de dados com a DropDownList)
            //if (!IsPostBack)
            //{
            //ddlEstados.DataSource = dt;
            //ddlEstados.DataTextField = dt.Columns["Estado"].ToString();
            //ddlEstados.DataValueField = dt.Columns["Valor"].ToString();
            //ddlEstados.DataBind();                 
            //}

            //Alimentar o DropDownList com uma lista
            //List<string> (Nome da Lista) = newList<string>;
            //<Nome da lista).Add("o elemento da lista");
            List<string> lst1Estados = new List<string>();
            lst1Estados.Add("--Selecione o Estado--");
            lst1Estados.Add("Ceará");
            lst1Estados.Add("Bahia");
            lst1Estados.Add("Sergipe");

            List<string> lst2Estados = new List<string>();
            //(Nome da lista).Insert(indice, "elemento da lista");
            lst2Estados.Insert(0, "--Selecione o estado");
            lst2Estados.Insert(1, "Santa Catarina");
            lst2Estados.Insert(2, "Pernabumco");
            lst2Estados.Insert(3, "Espirito Santo");

            //(ID da DropwDownList).DataSource = nomw da fonte de dados
            ////(ID da DropwDownList).DataBind; (aqui é feito a vinculação da fonte de dados com a DropDownList)

            //Para resolver o desafio colocar o if(!IsPostBack)
            if (!IsPostBack)
            {
                ddlEstados.DataSource = lst1Estados;
                ddlEstados.DataBind();
            }
        }

        protected void btnQuantidade_Click(object sender, EventArgs e)
        {
            //(ID da Label).Text = "Frase para exibir na tela " + (ID da ListBox).Items.Count.ToString();
            //lblResultadoNaTela.Text = "A quanditade de elementos na ListBox é " + lbxNomes.Items.Count.ToString();


        }

        protected void BtnTextoSelecionado_Click(object sender, EventArgs e)
        {
            //Apenas um resultado
            //(ID da Label).Text = "Frase para exibir na tela " + (ID da ListBox).SelectedItem.Text.ToString();
            //lblResultadoNaTela.Text = "O(s) Text(s) selecionado(s) na ListBox é(são) " + lbxNomes.SelectedItem.Text.ToString();

            //Análise para adicionar na tela todos os itens selecionados
            foreach (ListItem item in lbxNomes.Items)
            {
                if (item.Selected)
                {
                    Response.Write(" O texto selecionado é: " + item);
                }
            }

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //Respondese.Write(ID_do_TextBox.Text);
            //Response.Write(txtNome.Text);
        }

        protected void btnDdlTxtSel_Click(object sender, EventArgs e)
        {
            //(ID da Label).Text = "Frase para exibir na tela " + (ID da DropDownList).SelectedItem.Text.ToString();
            ldlDdlResultadosNaTela.Text = "O Texto selecionado na DropDownList é " + ddlEstados.SelectedItem.Text.ToString();

            //Desafio para mostrar o estado selecionado usando a dropdownlist com uma lista
            //alteraçõa no Page_Load

        }

        protected void chkCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (chkCheckBox.Checked)
            {
                lblChkResultadoNaTela.Text = "AVISO: Você selecionou o checkbox";
            }
            else
            {
                lblChkResultadoNaTela.Text = "AVISO: Você precisa selecionar o checkbox antes de verificar";

            }
        }

        protected void brnClbLinguagens_Click(object sender, EventArgs e)
        {
            //Primeira forma com FOREACH
            //lblClbResultadoNaTela.Text = "As linguagnes preferidas seleciondas são: <br />";
            //foreach (ListItem item in CheckBoxList1.Items)
            //{
            //    if (item.Selected)
            //    {
            //        lblClbResultadoNaTela.Text += item.Text + "<br/>";
            //    }
            //    {

            //    }
            //}
            //Segund forma com FOREACH
            lblClbResultadoNaTela.Text = "As linguagnes preferidas seleciondas são: <br />";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                //iteração
                if (CheckBoxList1.Items[i].Selected)
                {
                    lblClbResultadoNaTela.Text += CheckBoxList1.Items[i].Text + "<br/>";
                }
            }
            {
                
            }
        }

        protected void btnTipoFornecedo_Click(object sender, EventArgs e)
        {
            if (radbPessoaFisica.Checked)
            {
                lblBtnResultadoNaTela.Text = "AVISO: Você selecionou o fornecedor " + radbPessoaFisica.Text;
            }
            else
            {
                lblBtnResultadoNaTela.Text = "AVISO: Você selecionou o fornecedor: " + radbPessoaJuridica.Text;

            }
        }
    }
}