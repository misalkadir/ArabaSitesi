<%@ Page Title="" Language="C#" MasterPageFile="~/araba.Master" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="ArabaSitesi_2213201042_KadirKarakurt.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 386px;
        }
        .auto-style11 {
            margin-left: 40px;
        }
        .auto-style12 {
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td>Adı Soyadı</td>
            <td>
                <asp:TextBox ID="txtAdiSoyadi" runat="server" BackColor="Black" ForeColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ad Soyad Boş Bırakılamaz" ControlToValidate="txtAdiSoyadi">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Kullanıcı Adı</td>
            <td>
                <asp:TextBox ID="txtKulAdi" runat="server" BackColor="Black" ForeColor="White"></asp:TextBox>
                *</td>
        </tr>
        <tr>
            <td>Şifre</td>
            <td>
                <asp:TextBox ID="txtSifre" runat="server" BackColor="Black" ForeColor="White"></asp:TextBox>
                *</td>
        </tr>
        <tr>
            <td>Şifre tekrarı</td>
            <td>
                <asp:TextBox ID="txtSifreTekrari" runat="server" BackColor="Black" ForeColor="White"></asp:TextBox>
                *<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrari" ErrorMessage="Şifreler Uyuşmuyor">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Email</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtEmail" runat="server" BackColor="Black" ForeColor="White"></asp:TextBox>
                *<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Geçerli bir formatta email adresi giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Email tekrarı</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtEmailTekrari" runat="server" BackColor="Black" ForeColor="White"></asp:TextBox>
                *<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailTekrari" ErrorMessage="Emailler Uyuşmuyor">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Yaşı</td>
            <td>
                <asp:TextBox ID="txtYas" runat="server" BackColor="Black" ForeColor="White"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Yaş Boş Bırakılamaz" ControlToValidate="txtYas">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtYas" ErrorMessage="1-100 arasında yaş giriniz" MaximumValue="100" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
