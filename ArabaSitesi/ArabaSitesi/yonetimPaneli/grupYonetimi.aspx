<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimPaneli/yonetimPaneli.Master" AutoEventWireup="true" CodeBehind="grupYonetimi.aspx.cs" Inherits="ArabaSitesi_2213201042_KadirKarakurt.yonetimPaneli.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 600px;
        }

        .auto-style3 {
            width: 41px;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td width="30%">&nbsp;</td>
        </tr>
        <tr>
            <td>Grup Adi</td>
            <td>
                <asp:TextBox ID="txtGrupAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnEkle" runat="server" OnClick="btnEkle_Click" Text="Ekle" />
            </td>
        </tr>
    </table>

    <table class="auto-style2">
        <asp:Repeater ID="rpGruplar" runat="server">
            <ItemTemplate>
                <tr>
                    <td width="60%"><%#Eval("grupAdi") %></td>
                    <td width="20%">Düzenle

                        <a href="GrupGuncelle.aspx?GrupId=<%#Eval("grupId")%> ">
                        <img alt="" class="auto-style3" src="resimler/iconlar/kul_duzenle.png" /></td>





                    <td width="20%">Sil
                        <a href="GrupYonetimi.aspx?GrupId=<%#Eval("grupId")%> &islem=sil">
                            <img border="0" alt="" class="auto-style3" src="resimler/iconlar/kul_sil.png" style="width: 41px; height: 41px" />
                        </a>
                    </td>



                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>
