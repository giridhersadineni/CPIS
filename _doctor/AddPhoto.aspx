<%@ Page Title="" Language="C#" MasterPageFile="~/FrontUI.master" AutoEventWireup="true" CodeFile="AddPhoto.aspx.cs" Inherits="_Patient_AddPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            float: left;
        }
        .style3
        {
            height: 29px;
        }
        .style4
        {
            height: 49px;
        }
        .style5
        {
            height: 48px;
        }
        .style6
        {
            height: 252px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table cellspacing="0" class="style2">
            <tr>
                <td align="center" style="margin-left: 200px">
                    Upload a Profile Picture</td>
            </tr>
            <tr>
                <td align="center" class="style6" style="margin-left: 200px">
                    <asp:Image ID="profilepic" runat="server" Height="220px" Width="176px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style5" style="margin-left: 200px">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center" class="style4" style="margin-left: 200px">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Upload Picture" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Done" Height="25px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style4" style="margin-left: 200px">
                    <br />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblfilename" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>

