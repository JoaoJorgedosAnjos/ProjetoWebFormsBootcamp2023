<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atividade02_FormularioWeb.aspx.cs" Inherits="ProjetoWebFormsBootcamp2023.Atividade02_FormularioWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulário Web</title>

    <link rel="stylesheet" type="text/css" href="css/formWeb.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Selecione os dias disponiveis para trabalhar</h1>
        <form id="form1" runat="server">
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="1">Domingo</asp:ListItem>
                <asp:ListItem Value="2">Segunda-feira</asp:ListItem>
                <asp:ListItem Value="3">Terça-feira</asp:ListItem>
                <asp:ListItem Value="4">Quarta-feira</asp:ListItem>
                <asp:ListItem Value="5">Quinta-feira</asp:ListItem>
                <asp:ListItem Value="6">Sexta-feira</asp:ListItem>
                <asp:ListItem Value="7">Sábado</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Button CssClass="btnForm" ID="brnCblDiasSemana" runat="server" Text="Enviar" OnClick="brnCblDiasSemana_Click" />
            <br />

            <div class="lblClbResultadoNaTela">
                <asp:Label ID="lblClbResultadoNaTela" runat="server"></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
