<%@ Page Title="" Language="C#" MasterPageFile="~/FrontUI.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            float: left;
        }
    .style3
    {
        height: 21px;
        text-align: center;
    }
    .style4
    {
        height: 23px;
    }
    .style5
    {
        width: 483px;
        text-align: right;
    }
    .style6
    {
        height: 23px;
        width: 483px;
        text-align: right;
    }
    .style7
    {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table cellspacing="0" class="style2">
        <tr>
            <td colspan="2">
                <h2 class="style7">
                    Forgot Credentials
                </h2>
                <h3 class="style7">
                    No Problem, You can answer your own question to gain account access.</h3>
            </td>
        </tr>
        <tr>
            <td
                &nbsp;</td colspan="2">
            </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                What did you forgot:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" 
                    Height="34px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="224px">
                    <asp:ListItem>Password</asp:ListItem>
                    <asp:ListItem>Username</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Go" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lblask" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtunorphone" runat="server" Font-Size="Medium" 
                    ontextchanged="txtunorphone_TextChanged" Visible="False" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btngetsq" runat="server" Font-Size="Medium" 
                    onclick="Button1_Click" Text="Get Security Question" Visible="False" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblmessage" runat="server" Font-Size="Medium" Text="Message" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" 
                    Text="Security Question" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblquestion" runat="server" Font-Size="Medium" 
                    Text="security question goes here" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


