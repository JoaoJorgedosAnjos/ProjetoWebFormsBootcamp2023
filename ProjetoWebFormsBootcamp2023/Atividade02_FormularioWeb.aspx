﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atividade02_FormularioWeb.aspx.cs" Inherits="ProjetoWebFormsBootcamp2023.Atividade02_FormularioWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
         <asp:Button ID="brnCblDiasSemana" runat="server" Text="Enviar" OnClick="brnCblDiasSemana_Click"/>
    <br />
    <asp:Label ID="lblClbResultadoNaTela" runat="server"></asp:Label>
        <div>
        </div>
    </form>
</body>
</html>