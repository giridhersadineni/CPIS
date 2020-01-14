<%@ Page Title="" Language="C#" MasterPageFile="~/FrontUI.master" AutoEventWireup="true" CodeFile="registration_success.aspx.cs" Inherits="registration_success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <h3>
                    Registration Succesfull .&nbsp;We will Activate your account very soon!!!</h3>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Go Back</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

