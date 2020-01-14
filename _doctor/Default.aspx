<%@ Page Title="" Language="C#" MasterPageFile="~/_doctor/DoctorUI.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 26px;
        }
        .style4
        {
            width: 20px;
        }
        .style8
        {
            width: 269px;
        }
        .style9
        {
            height: 23px;
            width: 233px;
        }
        .style10
        {
            width: 101%;
        }
        .style11
        {
            width: 583px;
        }
        .style12
        {
            width: 233px;
        }
        .style13
        {
            height: 139px;
            width: 269px;
        }
        .style15
        {
            height: 8px;
            width: 233px;
        }
        .style16
        {
        height: 23px;
        width: 142px;
        font-weight: bold;
    }
        .style17
        {
        width: 142px;
        font-weight: bold;
    }
    .style18
    {
        width: 161px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td class="style4" rowspan="4">
                &nbsp;</td>
            <td class="style18" style="border-style: ridge; border-color: #C6C6FF" 
                align="center">
                <strong>Profile:</strong></td>
            <td class="style11" style="border-style: ridge; border-color: #C6C6FF" 
                align="center">
                <strong>Welcome!!!</strong></td>
            <td class="style8" style="border-style: ridge; border-color: #C6C6FF" 
                align="center">
                <strong>Notifications:</strong></td>
            <td class="style4" rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18" style="border-style: ridge; border-color: #C6C6FF" 
                align="center">
                <asp:Image ID="profilepic" runat="server" Height="221px" Width="164px" />
                <br />
                <a href="AddPhoto.aspx">Change Profile Picture</a>
            </td>
            <td class="style11" rowspan="3" 
                style="border-style: ridge; border-color: #C6C6FF" valign="top">
                &nbsp;</td>
            <td class="style13" rowspan="2" 
                style="border-style: ridge; border-color: #C6C6FF" valign="top">
                <div id="notificationspanel" runat=server>
                </div>
            </td>
        </tr>
        <tr>
            <td class="style18" rowspan="2" 
                style="border-style: ridge; border-color: #C6C6FF">
                <table class="style10">
                    <tr>
                        <td class="style15" colspan="2">
                            <strong>Personal Details:</strong></td>
                    </tr>
                    <tr>
                        <td class="style16">
                            UHID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style9">
                            <asp:Label ID="lbluhid" runat="server" Text="Undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style9">
                            <asp:Label ID="lblname" runat="server" Text="undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Specialization:&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style12">
                            <asp:Label ID="lblsepecialization" runat="server" Text="undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style12">
                            <asp:Label ID="lblgender" runat="server" Text="undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Date of Birth&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style12">
                            <asp:Label ID="lbldob" runat="server" Text="undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Email ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style12">
                            <asp:Label ID="lblemail" runat="server" Text="undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style12">
                            <asp:Label ID="lblphone" runat="server" Text="undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style12">
                            <asp:Label ID="lbladdress" runat="server" Text="undefined"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style8" style="border-style: ridge; border-color: #C6C6FF" 
                valign="top">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

