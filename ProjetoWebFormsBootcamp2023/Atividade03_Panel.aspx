<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Atividade03_Panel.aspx.cs" Inherits="ProjetoWebFormsBootcamp2023.Atividade03_Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Panel</title>
    <link rel="stylesheet" type="text/css" href="css/panel.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Projeto Prático</h1>
        <form id="form1" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:Panel ID="Panel2" runat="server">
                                <table>
                                    <tr>
                                        <td>
                                            <h2>
                                            Informações pessoais</td>
                                        </h2>
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
                                            <asp:RadioButton CssClass="radioBtn" ID="RadioButton1" runat="server" GroupName="GrpGenero" Text="Masculino" />
                                            <asp:RadioButton CssClass="radioBtn" ID="RadioButton2" runat="server" GroupName="GrpGenero" Text="Feminino" />
                                            <br />
                                    </tr>
                                    <tr>
                                        <td>Celular:</td>
                                        <td>
                                            <asp:TextBox ID="TextCel" runat="server" TextMode="Phone"></asp:TextBox></td>
                                    </tr>
                                    <td>
                                        <asp:Button ID="btnPainel2Proximo" runat="server" Text="Proximo" OnClick="btnPainel2Proximo_Click" />
                                    </td>
                            </asp:Panel>
                            <asp:Panel ID="Panel3" runat="server" Visible="false">
                                <table>
                                    <tr>
                                        <td>
                                            <h2>
                                            Detalhes do endereço</td>
                                        </h2>
                                    </tr>
                                    <tr>
                                        <td>Endereço:</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxEndereco" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Cidade:</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxCidade" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>CEP:</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxCep" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <td>
                                        <asp:Button ID="btnPainel3Voltar" runat="server" Text="Voltar" OnClick="btnPainel3EVoltar_Click" />
                                        <asp:Button ID="btnPainel3Proximo" runat="server" Text="Proximo" OnClick="btnPainel3Proximo_Click" />
                                    </td>
                            </asp:Panel>
                            <asp:Panel ID="Panel4" runat="server" Visible="false">
                                <table>
                                    <tr>
                                        <td>
                                            <h2>Área do Login</h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Usuário:</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxUsuario" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Senha:</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxSa" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <td>
                                        <asp:Button ID="btnPainel4Voltar" runat="server" Text="Voltar" OnClick="btnPainel4Voltar_Click" />
                                        <asp:Button ID="btnPainel4Enviar" runat="server" Text="Enviar" OnClick="btnPainel4Enviar_Click" />
                                    </td>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblEnviarDados" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                            </asp:Panel>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <div>
            </div>
        </form>
    </div>
</body>
</html>
