<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atividade03_Panel.aspx.cs" Inherits="ProjetoWebFormsBootcamp2023.Atividade03_Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Projeto Prático</h1>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Controle Panel</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Panel ID="Panel2" runat="server">
                            <table>
                                <tr>
                                    <td>Informações pessoais:</td>
                                </tr>
                                <tr>
                                    <td>Nome:</td>
                                    <td>
                                        <asp:TextBox ID="TxtBoxNome" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Sobrenome:</td>
                                    <td>
                                        <asp:TextBox ID="TxtBoxSobreNome" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Gênero:</td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="GrpGenero" Text="Masculino" />
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="GrpGenero" Text="Feminino" />
                                        <br />
                                </tr>
                                <tr>
                                    <td>Celular:</td>
                                    <td>
                                        <asp:TextBox ID="TextCel" runat="server" TextMode="Phone"></asp:TextBox></td>
                                    
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
