<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KullaniciKayit.aspx.cs" Inherits="BLOG.KullaniciKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    </style>
    <style type="text/css">
        #dogumtarihi {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="KullaniciKayit">

         <asp:Label ID="Label1" runat="server" Text="Ad Soyad"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="kullanici_ad" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        <br />

         <asp:Label ID="Label2" runat="server" Text="Dogum Tarihi"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input ID="dogumtarihi" runat="server" type="date" value="1.01.1990">


        <br />

         <asp:Label ID="Label3" runat="server" Text="E-Posta"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="kullanici_eposta" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        <br />

        <asp:Label ID="Label5" runat="server" Text="Parola"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="kullanici_parola" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        <br />

         <asp:Label ID="Label4" runat="server" Text="Fotoğraf"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" Width="262px" />
        <br />

         
        <asp:Button ID="Button1" runat="server" Text="Kayit Ol" OnClick="Button1_Click" CssClass="testbutton" />

         <br />
         <br />
         <asp:Label ID="bos_gecme" runat="server"></asp:Label>

    </section>
</asp:Content>
