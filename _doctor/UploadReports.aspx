<%@ Page Title="" Language="C#" MasterPageFile="~/_doctor/DoctorUI.master" AutoEventWireup="true" CodeFile="UploadReports.aspx.cs" Inherits="_doctor_UploadReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            margin-top: 12px;
        }
        .style4
        {
        width: 342px;
        text-align: right;
    }
        .style21
    {
        width: 13px;
        text-align: left;
        font-family: "Times New Roman", Times, serif;
        font-size: medium;
    }
    .style23
    {
        margin-left: 5px;
    }
    .style12
    {
        text-align: left;
    }
        .style10
        {
            width: 6px;
        }
    .style19
    {
        height: 26px;
        text-align: right;
        width: 342px;
            font-weight: 700;
        }
    .style18
    {
        width: 84px;
        text-align: left;
        font-family: "Times New Roman", Times, serif;
        font-size: medium;
        height: 26px;
    }
    .style17
    {
        height: 26px;
    }
        .style6
        {
        width: 342px;
        font-family: "Times New Roman", Times, serif;
        font-size: medium;
        text-align: right;
    }
        .style22
    {
            width: 84px;
            text-align: left;
        }
        .style5
        {
        width: 342px;
        text-align: right;
        font-size: medium;
    }
        .style25
    {
            width: 84px;
            text-align: center;
        }
        .style27
        {
            width: 315px;
            text-align: left;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style29
        {
            width: 342px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            text-align: right;
            height: 132px;
        }
        .style30
        {
            width: 84px;
            text-align: left;
            height: 132px;
        }
        .style31
        {
            height: 132px;
        }
        .style32
        {
            width: 6px;
            height: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="style9">
    <tr>
        <td class="style4">
            <strong>Enter UHID:</strong></td>
        <td class="style27" style="font-weight: bold;">
            <asp:TextBox ID="tbuhid" runat="server" 
            Width="295px" CssClass="style23"></asp:TextBox>
        </td>
        <td class="style21" style="font-weight: bold;">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Get Details" />
        </td>
        <td class="style12">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19">
            <strong>Patient Name:</strong></td>
        <td class="style18" style="font-weight: bold;" colspan="2">
            <asp:Label ID="lblptname" runat="server"></asp:Label>
        &nbsp;&nbsp;
            <asp:Label ID="lbluhid" runat="server"></asp:Label>
        </td>
        <td class="style17">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19">
            Doctor Name</td>
        <td class="style18" style="font-weight: bold;" colspan="2">
            <asp:TextBox ID="tbdoctorname" runat="server" Width="300px"></asp:TextBox>
        </td>
        <td class="style17">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style29" style="font-weight: bold;" valign="top">
            <strong>Symptoms:</strong></td>
        <td class="style30" colspan="2" valign="top">
            <asp:TextBox ID="txtsymptoms" runat="server" Height="121px" 
                    TextMode="MultiLine" Width="736px"></asp:TextBox>
        </td>
        <td class="style31">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td class="style32">
            </td>
    </tr>
    <tr>
        <td align="right" class="style5" 
                
            style="font-weight: bold; font-family: 'Times New Roman', Times, serif" 
            valign="top">
            &nbsp;</td>
        <td class="style22" colspan="2" valign="top">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style6" style="font-weight: bold;" valign="top">
            <strong>Diagnosis:</strong></td>
        <td class="style22" colspan="2" valign="top">
            <asp:TextBox ID="txtdiagnosis" runat="server" Height="121px" 
                    TextMode="MultiLine" Width="736px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style5" 
                
            style="font-weight: bold; font-family: 'Times New Roman', Times, serif" 
            valign="top">
            &nbsp;</td>
        <td class="style22" colspan="2" valign="top">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style6" style="font-weight: bold;" valign="top">
            <strong>Prescription:</strong></td>
        <td class="style22" colspan="2" valign="top">
            <asp:TextBox ID="TxtPrescription" runat="server" Height="121px" 
                    TextMode="MultiLine" Width="736px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style5" 
                
            style="font-weight: bold; font-family: 'Times New Roman', Times, serif" 
            valign="top">
            &nbsp;</td>
        <td class="style22" colspan="2" valign="top">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style6" style="font-weight: bold;" valign="top">
            Recommendations<br />
            (Further Visits)</td>
        <td class="style22" colspan="2" valign="top">
            <asp:TextBox ID="txtfurthervisit" runat="server" Height="121px" 
                    TextMode="MultiLine" Width="736px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style22" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            Next Visit Date</td>
        <td class="style22" colspan="2">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
                Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                    Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                    Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        </td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style25" colspan="2">
            <asp:Button ID="Upload" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Medium" Text="Save Report" Width="255px" onclick="Upload_Click" 
                Enabled="False" style="height: 28px" />
        </td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style25" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style22" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style22" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style22" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style22" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style22" colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

