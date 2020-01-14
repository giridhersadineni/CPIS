<%@ Page Title="" Language="C#" MasterPageFile="~/_patient/PatientUI.master" AutoEventWireup="true" CodeFile="PatientUploadReports.aspx.cs" Inherits="_patient_PatientUploadReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        text-align: right;
        vertical-align:top;
    }
    .style4
    {
        text-align: left;
    }
    .style5
    {
        text-align: left;
    }
    .style6
    {
        margin-left: 30px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" action="PatientUploadReports.aspx">
    <table class="style2">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            <strong>UPLOAD A REPORT HERE</strong></td>
        <td rowspan="11">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3" >
            <strong>Report Date:</strong></td>
        <td class="style4">
            <asp:TextBox ID="txtreportdate" runat="server" 
                ></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtreportdate" ErrorMessage="Enter Report Date" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Enter Date in<strong> MM/DD/YYYY</strong> format</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            <strong>Doctor Name:</strong></td>
        <td class="style4">
        <asp:TextBox ID="txtdoctorname" runat="server" style="margin-left: 29px" 
            Width="203px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtdoctorname" ErrorMessage="Doctor Name Required" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            <strong>Specialization:</strong></td>
        <td class="style4">
        <asp:DropDownList ID="ddldoctorspecialization" runat="server" Height="25px" 
            Width="212px" 
                CssClass="style6" DataSourceID="specialization" 
                DataTextField="specialization" DataValueField="specialization">
            
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="ddldoctorspecialization" 
                ErrorMessage="Please Select a Specialization" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            <asp:SqlDataSource ID="specialization" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [specialization]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            <strong>Choose From:</strong></td>
        <td class="style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUploadReport" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="FileUploadReport" ErrorMessage="Select a file to upload" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
        
            <strong>(Upload files in pdf format only&#39;)</strong></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
        <asp:Button ID="Submitbutton" runat="server" Font-Bold="True" Font-Size="Medium" 
            Text="Submit" Width="113px" onclick="Submitbutton_Click" 
                style="text-align: left" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style5">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</form>
</asp:Content>

