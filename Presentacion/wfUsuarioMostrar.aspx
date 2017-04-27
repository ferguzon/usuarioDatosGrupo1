<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfUsuarioMostrar.aspx.cs" Inherits="Presentacion.wfUsuarioMostrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="mvAgruparDatos" runat="server">
        <asp:View ID="vwEspecificarUsuario" runat="server">
            <table class="nav-justified">
                <tr>
                    <td style="width: 314px">Login del usuario</td>
                    <td>
                        <asp:TextBox ID="txtLoginBuscar" runat="server" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 314px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 314px">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnBuscarUsuario" runat="server" Text="Buscar" OnClick="btnBuscarUsuario_Click" />
                        &nbsp;<asp:CustomValidator ID="cvErrores" runat="server" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="vwMostrarDatos" runat="server">
            <table class="nav-justified">
                <tr>
                    <td style="width: 305px">Login</td>
                    <td>
                        <asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 305px">Nombre</td>
                    <td>
                        <asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 305px">Correo electrónico</td>
                    <td>
                        <asp:Label ID="lblCorreoElectronico" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 305px">Fecha de proceso</td>
                    <td>
                        <asp:Label ID="lblFechaProceso" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 305px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 305px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
