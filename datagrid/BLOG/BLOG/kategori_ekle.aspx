<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kategori_ekle.aspx.cs" Inherits="BLOG.kategori_ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="kategoriKayit">
        <asp:Label ID="lbl_kat_ad" runat="server" Text="kategori Ad"></asp:Label>
        <asp:TextBox ID="katad" runat="server" CssClass="tb5"></asp:TextBox>
        <br />
        <asp:Button ID="Buton_Kat" runat="server" Text="Kategori Ekle" OnClick="Button_Kategori_Kaydet_Click" CssClass="testbutton" />
    </section>

</asp:Content>

