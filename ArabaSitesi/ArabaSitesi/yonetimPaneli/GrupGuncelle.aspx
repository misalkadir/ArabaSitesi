<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimPaneli/yonetimPaneli.Master" AutoEventWireup="true" CodeBehind="GrupGuncelle.aspx.cs" Inherits="ArabaSitesi_2213201042_KadirKarakurt.yonetimPaneli.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
        <tr>
            <td>GrupAdı</td>
            <td>
                <asp:TextBox ID="txtGrupAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" OnClick="btnGuncelle_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>
