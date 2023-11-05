<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aula1WebForms.aspx.cs" Inherits="ProjetoWebFormsBootcamp2023.Aula1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>WebForm Aula 1</title>
</head>
<body>
    <script language="javascript">
        function Exibir() {
            let nome = document.getElementById("txtNome").value;
            alert(nome);
        }

    </script>
    <form id="form1" runat="server">
        <div> 
        </div>
        <asp:Label ID="lblNome" runat="server" Text="Nome" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <%--c#  
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" Font-Bold="true" BackColor="BlueViolet" ForeColor="White" OnClick="btnEnviar_Click" />
         botão js --%>
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" Font-Bold="true" BackColor="BlueViolet" ForeColor="White" OnClientClick="Exibir()" />
        <br />
        <asp:ListBox ID="lbxNomes" runat="server" SelectionMode="Multiple">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1">Joao</asp:ListItem>
            <asp:ListItem Value="2">Marcos</asp:ListItem>
            <asp:ListItem Value="3">Maria</asp:ListItem>
            <asp:ListItem Value="4">Lucia</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:Button ID="btnQuantidade" runat="server" Text="Quantidade" OnClick="btnQuantidade_Click" />
        <asp:Button ID="btnTextoSelecionado" runat="server" Text="Texto(s) Selecionado(s)" OnClick="BtnTextoSelecionado_Click" />
        <br />
        <asp:Label ID="lblResultadoNaTela" runat="server" Text=""></asp:Label>
        <br />
        <asp:DropDownList Id="ddlEstados" runat="server">

            <%--<asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1">Amazonas</asp:ListItem>
            <asp:ListItem Value="2">Bahia</asp:ListItem>
            <asp:ListItem Value="3">Pernambuco</asp:ListItem>
            <asp:ListItem Value="4">Piauí</asp:ListItem>
            <asp:ListItem Value="5">Paraná</asp:ListItem>--%>
        </asp:DropDownList>
        <br />
         <asp:Button ID="btnDdlTxtSel" runat="server" Text="Texto Selecionado" OnClick="btnDdlTxtSel_Click"  />
        <br />
        <asp:Label ID="ldlDdlResultadosNaTela" runat="server"></asp:Label>
        <br />
        <br />
        <asp:CheckBox ID="chkCheckBox" runat="server" OnCheckedChanged="chkCheckBox_CheckedChanged"></asp:CheckBox>
        <br />
        <asp:Button ID="btnChkVerificacao" runat="server" Text="Verificacao" />
        <br />
        <asp:Label ID="lblChkResultadoNaTela" runat="server"></asp:Label>
        <br />
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4">
            <asp:ListItem Value="1">C#</asp:ListItem>
            <asp:ListItem Value="2">Java</asp:ListItem>
            <asp:ListItem Value="3">Fortran</asp:ListItem>
            <asp:ListItem Value="4">Matlab</asp:ListItem>
            <asp:ListItem Value="5">Javascript</asp:ListItem>
            <asp:ListItem Value="6">Assembly</asp:ListItem>
            <asp:ListItem Value="7">Pascal</asp:ListItem>
            <asp:ListItem Value="8">Cobol</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="brnClbLinguagens" runat="server" Text="Escolher linguagens preferidas" OnClick="brnClbLinguagens_Click" />
        <br />
        <asp:Label ID="lblClbResultadoNaTela" runat="server"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="radbPessoaFisica" runat="server" GroupName="GrpFornecedor" Text="Pessoa Física" />
        <asp:RadioButton ID="radbPessoaJuridica" runat="server" GroupName="GrpFornecedor" Text="Pessoa Jurídica" />
        <br />
        <asp:Button ID="btnTipoFornecedo" runat="server" Text="Tipo Fornecedor" OnClick="btnTipoFornecedo_Click" />
        <br />
        <asp:Label ID="lblBtnResultadoNaTela" runat="server"></asp:Label>
        <br />        
    </form>
</body>
</html>
