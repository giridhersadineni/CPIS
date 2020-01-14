<%@ Page Title="" Language="C#" MasterPageFile="~/FrontUI.master" AutoEventWireup="true" CodeFile="hospital_registration.aspx.cs" Inherits="hospital_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 105px;
        }
        .style12
        {
            height: 35px;
        }
        .style15
        {
            text-align: left;
            width: 172px;
        }
        .style16
        {
            width: 172px;
        }
        .style18
        {
            text-align: left;
        }
        .style19
        {
            text-align: left;
        }
        .style21
        {
            text-align: left;
            width: 172px;
            height: 23px;
        }
        .style22
        {
            width: 187px;
            height: 23px;
            text-align: left;
        }
        .style23
        {
            height: 23px;
        }
        .style27
        {
            height: 22px;
        }
        .style29
        {
            text-align: left;
            width: 172px;
            height: 29px;
        }
        .style30
        {
            width: 187px;
            text-align: left;
            height: 29px;
        }
        .style31
        {
            height: 29px;
        }
        .style33
        {
            width: 222px;
            height: 29px;
        }
        .style34
        {
            width: 222px;
            height: 23px;
        }
        .style35
        {
            width: 222px;
        }
        .style39
        {
            height: 35px;
            width: 208px;
        }
        .style40
        {
            width: 208px;
        }
        .style41
        {
            width: 208px;
            height: 29px;
        }
        .style42
        {
            width: 208px;
            height: 23px;
        }
        .style43
        {
            width: 82px;
        }
        .style44
        {
            height: 29px;
            width: 82px;
        }
        .style45
        {
            height: 23px;
            width: 82px;
        }
        .style46
        {
            height: 35px;
            width: 82px;
        }
        .style47
        {
            height: 22px;
            width: 29px;
        }
        .style48
        {
            width: 29px;
        }
        .style49
        {
            height: 29px;
            width: 29px;
        }
        .style50
        {
            height: 23px;
            width: 29px;
        }
        .style51
        {
            height: 35px;
            width: 29px;
        }
        .style52
        {
            width: 29px;
            height: 73px;
        }
        .style53
        {
            text-align: left;
            width: 172px;
            height: 73px;
        }
        .style54
        {
            text-align: left;
            height: 73px;
        }
        .style55
        {
            height: 73px;
        }
        .style56
        {
            width: 222px;
            height: 73px;
        }
        .style57
        {
            width: 208px;
            height: 73px;
        }
        .style58
        {
            width: 82px;
            height: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style47">
            </td>
            <td class="style27" colspan="7">
                <strong>Hospital Details:</strong></td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style18" colspan="5">
                Hospital Name&nbsp;&nbsp;
                <asp:TextBox ID="tbhosname" runat="server" Height="25px" Width="514px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="rfvhosname" runat="server" 
                    ControlToValidate="tbhosname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style15">
                Hospital Type</td>
            <td class="style18">
                <asp:TextBox ID="tbhostype" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvhostype" runat="server" 
                    ControlToValidate="tbhostype" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style35">
                Address</td>
            <td class="style40">
                <asp:TextBox ID="tbaddress" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="rfvhosaddr" runat="server" 
                    ControlToValidate="tbaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style15">
                City</td>
            <td class="style18">
                <asp:TextBox ID="tbhoscity" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvhoscity" runat="server" 
                    ControlToValidate="tbhoscity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style35">
                State</td>
            <td class="style40">
                <asp:TextBox ID="tbhosstate" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="rfvhosstate" runat="server" 
                    ControlToValidate="tbhosstate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style15">
&nbsp;Phone Number</td>
            <td class="style18">
                <asp:TextBox ID="tbhosphone" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvhosphone" runat="server" 
                    ControlToValidate="tbhosphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style35">
                Email ID</td>
            <td class="style40">
                <asp:TextBox ID="tbhosemail" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="rfvhosemail" runat="server" 
                    ControlToValidate="tbhosemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="tbhosemail" ErrorMessage="enter valid email " 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style15">
                Hospital Website</td>
            <td class="style18">
                <asp:TextBox ID="tbhoswebsite" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="rfvhoswebsite" runat="server" 
                    ControlToValidate="tbhoswebsite" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="tbhoswebsite" ErrorMessage="enter valid url" ForeColor="Red" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
            <td class="style40">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style19" colspan="7">
                <strong>Hospital Manager Details:</strong></td>
        </tr>
        <tr>
            <td class="style49">
            </td>
            <td class="style29">
                Manager Name</td>
            <td class="style30">
                <asp:TextBox ID="tbmgrname" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvmgrname" runat="server" 
                    ControlToValidate="tbmgrname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style33">
                Phone Number</td>
            <td class="style41">
                <asp:TextBox ID="tbmgrphone" runat="server" Height="25px" TextMode="singleline" 
                    Width="186px"></asp:TextBox>
            </td>
            <td class="style44">
                <asp:RequiredFieldValidator ID="rfvmgrphone" runat="server" 
                    ControlToValidate="tbmgrphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style31">
            </td>
            <td class="style31">
            </td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style15">
                Email ID</td>
            <td class="style18">
                <asp:TextBox ID="tbmgremai" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
                    ControlToValidate="tbmgremai" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="tbmgremai" ErrorMessage="enter valid email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style40">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style19" colspan="7">
                <strong>Login Details:</strong></td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style15">
                UserName</td>
            <td class="style18">
                <asp:TextBox ID="tbusername" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvusername" runat="server" 
                    ControlToValidate="tbusername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style35">
                Password</td>
            <td class="style40">
                <asp:TextBox ID="tbpswd" runat="server" Height="25px" TextMode="Password" 
                    Width="186px"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="rfvpswd" runat="server" 
                    ControlToValidate="tbpswd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style52">
                </td>
            <td class="style53">
                Confirm Password</td>
            <td class="style54">
                <asp:TextBox ID="tbconfirmpwd" runat="server" Height="25px" TextMode="Password" 
                    Width="186px"></asp:TextBox>
            </td>
            <td class="style55">
                <asp:RequiredFieldValidator ID="rfvconpswd" runat="server" 
                    ControlToValidate="tbconfirmpwd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="tbpswd" ControlToValidate="tbconfirmpwd" 
                    ErrorMessage="Both password must match" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="style56">
                Date of Enrollnment</td>
            <td class="style57">
                <asp:TextBox ID="tbdoe" runat="server" Height="25px" Width="186px"></asp:TextBox>
            </td>
            <td class="style58">
                <asp:RequiredFieldValidator ID="rfvdoe" runat="server" 
                    ControlToValidate="tbdoe" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style55">
                </td>
            <td class="style55">
                </td>
        </tr>
        <tr>
            <td class="style50">
            </td>
            <td class="style21">
            </td>
            <td class="style22">
            </td>
            <td class="style23">
            </td>
            <td class="style34">
            </td>
            <td class="style42">
            </td>
            <td class="style45">
            </td>
            <td class="style23">
            </td>
        </tr>
        <tr>
            <td class="style51">
            </td>
            <td align="center" colspan="4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button 
                    ID="btregister" runat="server" Height="31px" onclick="btregister_Click" 
                    Text="Register" Width="109px" />
            </td>
            <td class="style39">
            </td>
            <td class="style46">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style35">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

