using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormsBootcamp2023
{
    public partial class Atividade01_Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                float num1 = float.Parse(txtNum1.Text);
                float num2 = float.Parse(txtNum2.Text);
                float resultado = 0;
                switch (DropDownList1.SelectedValue)
                {
                    case "+":
                        resultado = num1 + num2;
                        lblResultado.Text = "= " + resultado;
                        break;
                    case "-":
                        resultado = num1 - num2;
                        lblResultado.Text = "= " + resultado;
                        break;
                    case "*":
                        resultado = num1 * num2;
                        lblResultado.Text = "= " + resultado;
                        break;
                    case "/":
                        if (num2 == 0)
                        {
                            lblResultado.Text = "Por favor, insira números diferente de 0.";
                        }
                        else
                        {
                            resultado = num1 / num2;
                            lblResultado.Text = "= " + resultado;
                            
                        }
                        break;
                    case "%":
                        resultado = num1 % num2;
                        lblResultado.Text = "= " + resultado;
                        break;
                }

            }
            catch (Exception ex)
            {
                lblResultado.Text = "Por favor, insira números válidos.";
            }
        }
    }
}