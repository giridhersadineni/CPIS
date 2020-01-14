<%@ Page Title="" Language="C#" MasterPageFile="~/_doctor/DoctorUI.master" AutoEventWireup="true" CodeFile="ViewPatientDetails.aspx.cs" Inherits="_doctor_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 30px;
        }
        .style5
        {
        }
        .style6
        {
            height: 249px;
        }
        .style7
        {
            width: 294px;
        }
        .style8
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style2">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="4" valign="middle">
                &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Enter UHID"></asp:Label>
&nbsp;<asp:TextBox ID="tbuhid" runat="server" Width="292px"></asp:TextBox>
            &nbsp;
                <asp:Button ID="btnviewpntdetails" runat="server" Text="Get Data" 
                    onclick="btnviewpntdetails_Click" style="margin-left: 0px" />
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="4">
                <div>
                <table class="style2">
                    <tr>
                        <td colspan="4" style="border: thin solid #000000">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" style="border: thin solid #000000">
                            <strong>PERSONAL DETAILS:</strong></td>
                    </tr>
                    <tr>
                        <td style="border: thin solid #000000">
                            Name</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblname" runat="server"></asp:Label>
                        </td>
                        <td style="border: thin solid #000000">
                            Father Name</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblfname" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" style="border: thin solid #000000">
                            Gender</td>
                        <td  class="style8" style="border: thin solid #000000">
                            <asp:Label ID="lblgender" runat="server"></asp:Label>
                        </td>
                        <td class="style8" style="border: thin solid #000000">
                            Relationship Status</td>
                        <td class="style8" style="border: thin solid #000000">
                            <asp:Label ID="lblrelationshipstatus" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: thin solid #000000">
                            Date Of Birth</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lbldob" runat="server"></asp:Label>
                        </td>
                        <td style="border: thin solid #000000">
                            Age</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblage" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: thin solid #000000">
                            Blood Group</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblbgroup" runat="server"></asp:Label>
                        </td>
                        <td style="border: thin solid #000000">
                            Mobile</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblphone" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: thin solid #000000">
                            Address</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lbladdress" runat="server"></asp:Label>
                        </td>
                        <td style="border: thin solid #000000">
                            Email ID</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblemailid" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: thin solid #000000">
                            Organ Donor</td>
                        <td style="border: thin solid #000000" >
                            &nbsp;</td>
                        <td style="border: thin solid #000000">
                            &nbsp;</td>
                        <td style="border: thin solid #000000" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" style="border: thin solid #000000">
                            <strong>EMERGENCY DETAILS:</strong></td>
                    </tr>
                    <tr>
                        <td style="border: thin solid #000000">
                            Name</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblicename" runat="server"></asp:Label>
                        </td>
                        <td style="border: thin solid #000000">
                            Relationship</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lblicerel" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: thin solid #000000">
                            Address</td>
                        <td style="border: thin solid #000000" >
                            <asp:Label ID="lbliceaddress" runat="server"></asp:Label>
                        </td>
                        <td style="border: thin solid #000000">
                            Phone</td>
                        <td style="border: thin solid #000000">
                            <asp:Label ID="lblicephone" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" style="border: thin solid #000000">
                            <strong>REPORTS:</strong></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="border: thin solid #000000">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Buttonprint" runat="server" Text="Print" Width="70px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                </div>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                <asp:Label ID="lblex" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


