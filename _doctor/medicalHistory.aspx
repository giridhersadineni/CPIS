<%@ Page Title="" Language="C#" MasterPageFile="~/_doctor/DoctorUI.master" AutoEventWireup="true" CodeFile="medicalHistory.aspx.cs" Inherits="_doctor_medicalHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
        float: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
    <tr>
        <td>
            Enter UHID&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="282px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Display" Width="126px" 
                onclick="Button1_Click" />
        &nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                Text="Not Found Please Retry!!"></asp:Label>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <br />
            <br />
            <br />
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
</table>
</asp:Content>

