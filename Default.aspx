<%@ Page Title="" Language="C#" MasterPageFile="~/FrontUI.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .blue-button
        {
            margin-top:5px;
            margin-bottom:5px;
            height:auto;
            display:block;
            border-radius:25px;
            background-color:Lime;
            width:auto;
            text-align: center;
        }
        .content
        {
            background:white;
            padding-left:2%;
            
            }
        
        
        .style2
        {
            left:5%;
            width:90%;
            align:center;
            
        }
        .style3
        {
            height: 21px;
        }
        .style6
        {
            text-align: left;
        }
        #Button1
        {
        }
        #Button2
        {
        }
        
            
            
            
        .style8
        {
            text-align: center;
        }
        .login-button
        {
            text-align: center;
        }
        .style9
        {
            text-align: right;
            width: 90%;
            height: 475px;
        }
        .style10
        {
            text-align: left;
            height: 172px;
        }
        .style12
        {
            font-size: large;
        }
        .style13
        {
            font-size: medium;
        }
        .style14
        {
            height: 12px;
        }
        .style15
        {
            text-align: left;
            height: 475px;
        }
        .style16
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div class="content">
    
    <table class="style2" bgcolor="White">
        <tr>
            <td colspan="2" class="style14">
                </td>
        </tr>
        <tr>
            <td class="style9" bgcolor="White" valign="top">
                <div class="style8" dir="ltr" style="padding: 10px">
                <h3 class="style6">Welcome to the new era of healh care emergency management System</h3>
                <p style="text-align: left" class="style16">Patient Medical information is most important in case of emergency to treat the patients according to their previous medical history</p>
                <p style="text-align: left" class="style16">Do you Carry your medical information everytime with you? Is it possibleto do so?</p>
                <p style="text-align: left" class="style16">What if you run into that situation?</p>
                <p style="text-align: left" class="style16">Dont click your panic button. Just click the signup button to carry your medical information with you. </p> 
                
                &nbsp;&nbsp;<br />
                </div>
               
                    <br />
          
                </td>
            <td class="style15" bgcolor="White" valign="top">
               <form method="post" action="#">
                <table frame="box">
                    <tr>
                        <td class="style12" colspan="2" style="background-color: #FFFFFF">
                            Login to the System</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: #FFFFFF">
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" style="background-color: #FFFFFF">
                            Username</td>
                        <td style="background-color: #FFFFFF">
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="style13" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" style="background-color: #FFFFFF">
                            Password</td>
                        <td style="background-color: #FFFFFF">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="style13" 
                                TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #FFFFFF">
                            I am a</td>
                        <td style="background-color: #FFFFFF">
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" 
                                Width="207px" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>Patient</asp:ListItem>
                                <asp:ListItem>Doctor</asp:ListItem>
                                <asp:ListItem Value="Admin">Hospital/Admin </asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: #FFFFFF">
                        
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #FFFFFF">
                        
                            <asp:Button ID="Button2" runat="server" Height="28px" 
                                Text="Forgot Credentials?" Width="150px" onclick="Button2_Click" />
                        </td>
                        <td style="background-color: #FFFFFF">
                            <asp:Button ID="Button1" runat="server" Height="29px" Text="Login" 
                                Width="142px" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: #FFFFFF">
                        
                            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="login-button" colspan="2" style="background-color: #FFFFFF">
                        
                            <span class="style13">Click the button below for signing up</span><br />
                            <asp:Button ID="Button3" runat="server" Font-Size="Medium" Text="Signup" 
                                Width="192px" onclick="Button3_Click" />
                        </td>
                    </tr>
                </table>
          </form>
                </td>
        </tr>
        <tr>
            <td class="style10" bgcolor="White" colspan="2" valign="top">
                </td>
            </table>
        </div>
</asp:Content>


