<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="BLOG.Repeater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <section class="kutu">
                <p class="KullaniciID"> Numarasi: <%# Eval("KullaniciID") %></p>
                <p class="KullaniciAdSoyad"> AdSoyad: <%# Eval("KullaniciAdSoyad") %></p>
                 <p class="KullaniciDogumTarihi"> DogumTarihi: <%# Eval("KullaniciDogumTarihi") %></p>
                 <img class="KullaniciFotoUrl" style=" width:100px; height:100px;" Fotograf: src='<%# Eval("KullaniciFotoUrl") %>'/>
            </section>

           

        </ItemTemplate>

    </asp:Repeater>

  

   

</asp:Content>
