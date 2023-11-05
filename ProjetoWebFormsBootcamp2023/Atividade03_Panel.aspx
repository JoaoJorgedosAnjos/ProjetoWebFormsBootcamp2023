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
                                    <td>Informações pessoais</td>
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
                                </tr>
                                <td>
                                    <asp:Button ID="btnPainel2Proximo" runat="server" Text="Proximo" OnClick="btnPainel2Proximo_Click" />
                                </td>
                        </asp:Panel>
                        <asp:Panel ID="Panel3" runat="server" Visible="false">
                            <table>
                                <tr>
                                    <td>Detalhes do endereço</td>
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
                                    <td>Área do Login</td>
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
</body>
</html>
