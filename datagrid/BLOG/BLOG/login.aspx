<%@ Page Title="BLOG Admin Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BLOG.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .LoginSection {
        text-align: center;
        background-color: #ffe2e2;
    }
    button{
        width: 140px;
        height: 40px;
        font-size: 20px;
    }
    menu{
        text-align:center;
    }
    .tb5 {
	border:2px solid #456879;
	border-radius:10px;
	height: 22px;
	width: 230px;
}

    .testbutton {
  font-family: arial;
  color: #14396a !important;
  font-size: 10px;
  text-shadow: 1px 1px 0px #7cacde;
  box-shadow: 1px 1px 1px #bee2f9;
  padding: 10px 25px;
  -moz-border-radius: 10px;
  -webkit-border-radius: 10px;
  border-radius: 10px;
  border: 2px solid #3866a3;
  background: #63b8ee;
  background: linear-gradient(top,  #63b8ee,  #468ccf);
  background: -ms-linear-gradient(top,  #63b8ee,  #468ccf);
  background: -webkit-gradient(linear, left top, left bottom, from(#63b8ee), to(#468ccf));
  background: -moz-linear-gradient(top,  #63b8ee,  #468ccf);
}

    .testbutton:hover {
  color: #14396a !important;
  background: #468ccf;
  background: linear-gradient(top,  #468ccf,  #63b8ee);
  background: -ms-linear-gradient(top,  #468ccf,  #63b8ee);
  background: -webkit-gradient(linear, left top, left bottom, from(#468ccf), to(#63b8ee));
  background: -moz-linear-gradient(top,  #468ccf,  #63b8ee);
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="LoginSection">
    <asp:Label ID="lblEmail" runat="server" Text="E-Posta Adresi :"></asp:Label>
    <br />
    <asp:TextBox ID="txtEmail" runat="server" type="email" CssClass="tb5"></asp:TextBox>
    <br />
    <asp:Label ID="lblParola" runat="server" Text="Parola : "></asp:Label>
    <br />
    <asp:TextBox ID="txtParola" runat="server" type="password" CssClass="tb5"></asp:TextBox>
    <br />
    <asp:Label ID="lblHata" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="btnGiris" runat="server" Text="Oturum Aç" OnClick="btnGiris_Click" CssClass="testbutton" />
</section>
    
</asp:Content>
