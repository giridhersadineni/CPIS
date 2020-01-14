<%@ Page Title="" Language="C#" MasterPageFile="~/_Patient/PatientUI.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Patient_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .profile-pic
        {
            max-width:178px;
            max-height:256px;
            width:178px;
            height:256px;
         }
        
        
    .style40
    {
        width: 100%;
        border-color: #FFFFFF;
    }
    .style41
    {
            width: 179px;
            height: 20px;
        }
        .style47
        {
            width: 141px;
            height: 20px;
        }
        
        
        .style48
        {
            font-size: large;
        }
        .style49
        {
            width: 402px;
            height: 20px;
        }
        .style51
        {
            height: 93px;
            width: 141px;
        }
        .style52
        {
            width: 402px;
        }
        .style53
        {
            width: 179px;
            }
        
        
        .style54
        {
            width: 141px;
        }
        
        
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function profilepic_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <br />
    <table align="left" cellspacing="0" class="style40" 
    style="height: 700px; margin-right: 0px;" border="1">
    <tr>
        <td class="style47">
            <strong>Profile</strong></td>
        <td class="style49">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style48">Welcome&nbsp; </span></td>
        <td class="style41">
            &nbsp;&nbsp; <span class="style48">Notifications</span></td>
    </tr>
    <tr>
        <td 
            valign="top" class="style51">
            <asp:Image ID="profilepic" runat="server" CssClass="profile-pic" />
            <br />
            <br />
        <a href="AddPhoto.aspx">Change Profile Picture</a>
        </td>
        <td class="style52" 
            valign="top" rowspan="2">
            &nbsp;</td>
        <td class="style53" 
            valign="top" rowspan="2" runat="server">
            
            
            </div>



            </td>
    </tr>
    <tr>
        <td 
            valign="top" class="style54">
            <asp:Label ID="Label1" runat="server" Text="Name:" style="font-weight: 700"></asp:Label>
            .<br />
            <asp:Label ID="Lblname" runat="server" Text="Undefined"></asp:Label>
            <br />
            <asp:Label ID="label7" runat="server" Text="UHID:" style="font-weight: 700"></asp:Label>
            &nbsp;<asp:Label ID="lbluhid" runat="server" Text="Undefined"></asp:Label>
            <br />
            <strong>Gender: </strong>
            <asp:Label ID="lblgender" runat="server" Text="Undefined"></asp:Label>
            <br />
            <strong>Date Of Birth:</strong>
            <asp:Label ID="lblDoB" runat="server" Text="Undefined"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email:" style="font-weight: 700"></asp:Label>
            <br />
            <asp:Label ID="lblemail" runat="server" Text="Undefined"></asp:Label>
            <br />
            <strong>Phone:</strong>
            <asp:Label ID="lblphone" runat="server" Text="Undefined"></asp:Label>
            <br />
            <strong>Address:</strong><br />
            <asp:Label ID="lbladdress" runat="server" Text="Undefined"></asp:Label>
            <br />
        </td>
    </tr>
    </table>
</asp:Content>


