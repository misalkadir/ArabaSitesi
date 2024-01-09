<%@ Page Title="" Language="C#" MasterPageFile="~/araba.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="ArabaSitesi_2213201042_KadirKarakurt.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>Konu</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#000000" ForeColor="White">
                    <asp:ListItem>Satış Öncesi İşlemler</asp:ListItem>
                    <asp:ListItem>Satış Sonrası İşlemler</asp:ListItem>
                    <asp:ListItem>Teknik Bilgiler</asp:ListItem>
                    <asp:ListItem>Yedek Parça Servis</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Cinsiyet</td>
            <td>
                <asp:RadioButton ID="rbKadin" runat="server" GroupName="cinsiyet" Text="Kadın" Font-Bold="True" />&nbsp;&nbsp;&nbsp;
             <asp:RadioButton ID="rbErkek" runat="server" GroupName="cinsiyet" Text="Erkek" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td>Ad Soyad</td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" Width="250px" BackColor="Black" ForeColor="White"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Telefon</td>
            <td>
                <asp:TextBox ID="txtTel" runat="server" Width="250px" BackColor="Black" ForeColor="White"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="250px" BackColor="Black" ForeColor="White"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mesaj</td>
            <td>
                <asp:TextBox ID="txtMesaj" runat="server" Height="200px" TextMode="MultiLine" BackColor="Black" ForeColor="White" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGonder" runat="server" Text="Gönder" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
