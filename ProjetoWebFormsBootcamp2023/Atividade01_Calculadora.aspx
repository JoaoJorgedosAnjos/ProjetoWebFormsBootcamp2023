<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atividade01_Calculadora.aspx.cs" Inherits="ProjetoWebFormsBootcamp2023.Atividade01_Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Atividade 01</title>
</head>
<body>
    <h1>Calculadora</h1>
    <form id="form1" runat="server">
        <asp:Label ID="lblNumero1" runat="server" Text="Número 1" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>

        <asp:Label ID="lblNumero2" runat="server" Text="Número 2" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>

        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="+" >Somar</asp:ListItem>
            <asp:ListItem Value="-">Subtrair</asp:ListItem>
            <asp:ListItem Value="*">Multiplicar</asp:ListItem>
            <asp:ListItem Value="/">Dividir</asp:ListItem>
            <asp:ListItem Value="%">Resto da divisão</asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click"/>
        <asp:Label ID="lblResultado" runat="server" Font-Bold="True"></asp:Label>

        <div>
        </div>
    </form>
</body>
</html>
