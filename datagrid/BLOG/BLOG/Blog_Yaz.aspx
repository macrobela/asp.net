<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog_Yaz.aspx.cs" Inherits="BLOG.Blog_Yaz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .tb5 {
	border:2px solid #456879;
	border-radius:10px;
	height: 22px;
	width: 230px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="BlogBaslik" runat="server" Text="BAŞLİK"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="text1" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
    <br />
    <asp:Label ID="Blogicerik" runat="server" Text="İÇERİK"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="text2" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
    <br />
    <asp:Label ID="BlogGorselUrl" runat="server" Text="FOTOGRAF"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
    <br />
    <asp:Label ID="bos" runat="server"></asp:Label>


    <br />


    <asp:Button ID="Button1" runat="server" Text="Blog olustur" OnClick="Button1_Click" CssClass="testbutton" />




</asp:Content>
