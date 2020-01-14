<%@ Page Title="" Language="C#" MasterPageFile="~/_hospital/HospitalUI.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            margin-bottom: 0px;
        }
        .style3
        {
            height: 27px;
        }
        .style6
        {
            text-align: center;
            height: 907px;
        }
        .style7
        {
            height: 29px;
            text-align: left;
        }
        .style10
        {
            text-align: center;
            width: 153px;
            height: 907px;
        }
        .style12
        {
            height: 28px;
            text-align: left;
            font-weight: 700;
        }
        .style15
        {
            text-align: center;
            width: 361px;
            height: 28px;
        }
        .style17
        {
            font-size: medium;
            text-align: left;
        }
        .style18
        {
            text-align: center;
            width: 701px;
            height: 28px;
        }
        .style21
        {
            text-align: left;
            font-size: medium;
        }
        .style22
        {
            height: 29px;
            text-align: left;
        }
        #Reset1
        {
            height: 33px;
            width: 126px;
        }
        .style23
        {
            text-align: right;
            width: 361px;
            height: 29px;
        }
        .style25
        {
            width: 100%;
            margin-bottom: 0px;
            height: 920px;
        }
        .style26
        {
            height: 29px;
            text-align: left;
            font-weight: 700;
        }
        .style29
        {
            text-align: right;
            width: 361px;
            font-size: medium;
            height: 28px;
        }
        .style30
        {
            width: 672px;
            height: 28px;
        }
        .style31
        {
            width: 609px;
            height: 28px;
        }
        .style32
        {
            text-align: left;
            font-size: medium;
            width: 609px;
        }
        .style33
        {
            height: 29px;
            text-align: left;
        }
        .style34
        {
            width: 800px;
            height: 28px;
        }
        .style35
        {
            text-align: right;
            font-size: medium;
            width: 800px;
        }
        .style36
        {
            width: 800px;
            height: 29px;
        }
        .style37
        {
            text-align: right;
            font-size: medium;
            width: 672px;
        }
        .style38
        {
            height: 29px;
            width: 672px;
        }
        .style39
        {
            height: 29px;
            text-align: left;
            width: 332px;
        }
        .style40
        {
            height: 29px;
            text-align: right;
        }
        .style41
        {
            text-align: left;
            font-size: medium;
            height: 26px;
        }
        .style42
        {
            text-align: right;
            font-size: medium;
        }
        .style43
        {
            text-align: right;
            font-size: medium;
            height: 26px;
        }
        .style44
        {
            text-align: left;
            font-size: medium;
            width: 361px;
        }
    .style45
    {
        text-align: left;
        font-size: medium;
        width: 361px;
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style25">
        <tr>
            <td class="style10" rowspan="36">
                <br />
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style18" colspan="7">
                &nbsp;</td>
            <td class="style6" rowspan="36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" colspan="8">
                PERSONAL DETAILS:</td>
        </tr>
        <tr>
            <td class="style29">
                AADHAR NO:</td>
            <td class="style31" colspan="4">
                <asp:TextBox ID="tbaadhar" runat="server" CssClass="style17" Font-Size="Medium" 
                    Width="300px" ontextchanged="tbaadhar_TextChanged"></asp:TextBox>
            </td>
            <td class="style34" colspan="2">
                &nbsp;</td>
            <td class="style30">
                <asp:TextBox ID="tbuhid" runat="server" CssClass="style17" Font-Size="Medium" 
                    Width="300px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                First Name :</td>
            <td class="style31" colspan="4">
                <asp:TextBox ID="tbfirstname" runat="server" CssClass="style17" 
                    Font-Size="Medium" Width="300px"></asp:TextBox>
            </td>
            <td class="style34" colspan="2">
                Surname :</td>
            <td class="style30">
                <asp:TextBox ID="tbsurname" runat="server" CssClass="style17" 
                    Font-Size="Medium" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                Father Name :</td>
            <td class="style31" colspan="4">
                <asp:TextBox ID="tbfathername" runat="server" CssClass="style17" 
                    Font-Size="Medium" Width="300px"></asp:TextBox>
            </td>
            <td class="style34" colspan="2">
                Date of Birth :</td>
            <td class="style30">
                <asp:DropDownList ID="ddldate" runat="server" CssClass="style17" 
                    Font-Size="Medium">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem Value="11"></asp:ListItem>
                    <asp:ListItem Value="12"></asp:ListItem>
                    <asp:ListItem Value="13"></asp:ListItem>
                    <asp:ListItem Value="14"></asp:ListItem>
                    <asp:ListItem Value="15"></asp:ListItem>
                    <asp:ListItem Value="16"></asp:ListItem>
                    <asp:ListItem Value="17"></asp:ListItem>
                    <asp:ListItem Value="18"></asp:ListItem>
                    <asp:ListItem Value="19"></asp:ListItem>
                    <asp:ListItem Value="20">20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlmonth" runat="server" CssClass="style17" 
                    Font-Size="Medium">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem Value="01">January</asp:ListItem>
                    <asp:ListItem Value="02">February</asp:ListItem>
                    <asp:ListItem Value="03">March</asp:ListItem>
                    <asp:ListItem Value="04">April</asp:ListItem>
                    <asp:ListItem Value="05">May</asp:ListItem>
                    <asp:ListItem Value="06">June</asp:ListItem>
                    <asp:ListItem Value="07">July</asp:ListItem>
                    <asp:ListItem Value="08">August</asp:ListItem>
                    <asp:ListItem Value="09">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlyear" runat="server" CssClass="style17" 
                    Font-Size="Medium">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1960</asp:ListItem>
                    <asp:ListItem>1961</asp:ListItem>
                    <asp:ListItem>1962</asp:ListItem>
                    <asp:ListItem>1963</asp:ListItem>
                    <asp:ListItem>1964</asp:ListItem>
                    <asp:ListItem>1965</asp:ListItem>
                    <asp:ListItem>1966</asp:ListItem>
                    <asp:ListItem>1967</asp:ListItem>
                    <asp:ListItem>1968</asp:ListItem>
                    <asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style29">
                Gender :</td>
            <td class="style31" colspan="4">
                <asp:DropDownList ID="ddlgender" runat="server" CssClass="style17" 
                    Font-Size="Medium">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style34" colspan="2">
                Relation Status :</td>
            <td class="style30">
                <asp:DropDownList ID="ddlrelationstatus" runat="server" CssClass="style17" 
                    Font-Size="Medium">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style29">
                Occupation :</td>
            <td class="style31" colspan="4">
                <asp:DropDownList ID="ddloccupation" runat="server" CssClass="style17" 
                    Font-Size="Medium">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Architect</asp:ListItem>
                    <asp:ListItem>Agriculturist</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Engineer</asp:ListItem>
                    <asp:ListItem>Lawyer</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Ministry</asp:ListItem>
                    <asp:ListItem>Professor</asp:ListItem>
                    <asp:ListItem>Police</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Worker</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style34" colspan="2">
                Blood Group
            </td>
            <td class="style30">
                <asp:DropDownList ID="ddlbloodgroup" runat="server" CssClass="style17" 
                    Font-Size="Medium" 
                    onselectedindexchanged="ddlbloodgroup_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Organ Donor :</td>
            <td class="style32" colspan="4">
                <asp:DropDownList ID="ddlorgan" runat="server" CssClass="style17" 
                    Font-Size="Medium">
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style35" colspan="2">
               
            </td>
            <td class="style37">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" colspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26" colspan="8">
                LOGIN DETAILS </td>
        </tr>
        <tr>
            <td class="style45">
                Username :</td>
            <td class="style7" colspan="4">
                <asp:TextBox ID="tbusername" runat="server" CssClass="style17" Width="270px"></asp:TextBox>
            </td>
            <td class="style36" colspan="2">
                </td>
            <td class="style38">
                </td>
        </tr>
        <tr>
            <td class="style44">
                Password</td>
            <td class="style33" colspan="4">
                <asp:TextBox ID="tbmagicword" runat="server" TextMode="Password" 
                    CssClass="style17" Width="273px"></asp:TextBox>
            </td>
            <td class="style36" colspan="2">
                Re-Enter Password</td>
            <td class="style38">
                <asp:TextBox ID="repeatpwd" runat="server" TextMode="Password" 
                    CssClass="style17" Width="200px">*</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Role :</td>
            <td class="style33" colspan="4">
                <asp:DropDownList ID="ddlrole" runat="server" CssClass="style17" Width="280px">
                    <asp:ListItem>Patient</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style36" colspan="2">
                &nbsp;</td>
            <td class="style38">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style44">
                Security Question1 :</td>
            <td class="style22" colspan="7">
                <asp:DropDownList ID="ddlsecurity1" runat="server" CssClass="style17" 
                    Width="673px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>What is your Mother&#39;s Maiden Name?</asp:ListItem>
                    <asp:ListItem>What is your Favourite Sport?</asp:ListItem>
                    <asp:ListItem>What is your favourite picnic spot?</asp:ListItem>
                    <asp:ListItem>What is first phone number?</asp:ListItem>
                    <asp:ListItem>What is your Favourite Book?</asp:ListItem>
                    <asp:ListItem>Who is your inspiration?</asp:ListItem>
                    <asp:ListItem>What is your petname</asp:ListItem>
                    <asp:ListItem>What is your roll number in college?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Answer1 :</td>
            <td class="style22" colspan="7">
                <asp:TextBox ID="tbanswer1" runat="server" TextMode="Password" 
                    CssClass="style17" Width="662px">*</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Security Question2 :</td>
            <td class="style22" colspan="7">
                <asp:DropDownList ID="ddlsecurity2" runat="server" CssClass="style17" 
                    Width="667px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>What is your Mother&#39;s Maiden Name?</asp:ListItem>
                    <asp:ListItem>What is your Favourite Sport?</asp:ListItem>
                    <asp:ListItem>What is your favourite picnic spot?</asp:ListItem>
                    <asp:ListItem>What is first phone number?</asp:ListItem>
                    <asp:ListItem>What is your Favourite Book?</asp:ListItem>
                    <asp:ListItem>Who is your inspiration?</asp:ListItem>
                    <asp:ListItem>What is your petname</asp:ListItem>
                    <asp:ListItem>What is your roll number in college?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Answer2 :</td>
            <td class="style22" colspan="7">
                <asp:TextBox ID="tbanswer2" runat="server" TextMode="Password" 
                    CssClass="style17" Width="660px">*</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="8">
                <strong>CONTACT DETAILS </strong></td>
        </tr>
        <tr>
            <td class="style44">
                Mobile :</td>
            <td class="style33" colspan="4">
                <asp:TextBox ID="txtmobile" runat="server" Font-Size="Medium" Width="316px"></asp:TextBox>
            </td>
            <td class="style40" colspan="2">
                Phone :</td>
            <td class="style38">
                <asp:TextBox ID="txtphone" runat="server" CssClass="style17" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style44">
                E-Mail ID :</td>
            <td class="style33" colspan="4">
                <asp:TextBox ID="tbemail" runat="server" CssClass="style17" Width="318px"></asp:TextBox>
            </td>
            <td class="style40" colspan="2">
                Alternate email:</td>
            <td class="style38">
                <asp:TextBox ID="txtaltemail" runat="server" CssClass="style17" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style44">
                Address :</td>
            <td class="style22" colspan="4">
                <asp:TextBox ID="tbaddress" runat="server" CssClass="style17" Width="319px"></asp:TextBox>
            </td>
            <td class="style40" colspan="2">
                Town :</td>
            <td class="style22">
                <asp:TextBox ID="txttown" runat="server" CssClass="style17" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style44">
                State :</td>
            <td class="style33" colspan="4">
                <asp:DropDownList ID="ddlstate" runat="server" CssClass="style17" Width="316px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chattisgarh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>TELANGANA</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style40" colspan="2">
                City :</td>
            <td class="style38">
                <asp:TextBox ID="ddlcity" runat="server"  
                    Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style44">
                &nbsp;</td>
            <td class="style33" colspan="4">
                &nbsp;</td>
            <td class="style40" colspan="2">
                Pincode :</td>
            <td class="style38">
                <asp:TextBox ID="tbpincode" runat="server" CssClass="style17"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" colspan="8">
                <strong>CONTACT DETAILS ( IN CASE OF EMERGENCY)</strong></td>
        </tr>
        <tr>
            <td class="style17" colspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style41" colspan="2">
                Name</td>
            <td class="style41" colspan="2">
                <asp:TextBox ID="txticename" runat="server" Font-Size="Medium" Width="309px"></asp:TextBox>
            </td>
            <td class="style43" colspan="2">
                Relationship</td>
            <td class="style41" colspan="2">
                <asp:TextBox ID="txticerelation" runat="server" Font-Size="Medium" 
                    Width="178px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                Address</td>
            <td class="style21" colspan="2">
                <asp:TextBox ID="txticeaddress" runat="server" Font-Size="Medium" Width="305px"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                Phone</td>
            <td class="style21" colspan="2">
                <asp:TextBox ID="txticephone" runat="server" Font-Size="Medium" Width="178px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                &nbsp;</td>
            <td class="style21" colspan="2">
                &nbsp;</td>
            <td class="style21" colspan="2">
                &nbsp;</td>
            <td class="style21" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style44" rowspan="3">
                &nbsp;</td>
            <td class="style33" colspan="7">
                <asp:CheckBox ID="chkterms" runat="server" style="text-align: left" 
                    Text="I accept the terms and conditions for using the service." />
            </td>
        </tr>
        <tr>
            <td class="style33" colspan="7">
                <asp:CheckBox ID="CheckBox2" runat="server" style="text-align: left" 
                    Text="Please Add me to the mailing list." />
            </td>
        </tr>
        <tr>
            <td class="style33" colspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style44">
                &nbsp;</td>
            <td class="style39" colspan="2">
                &nbsp;</td>
            <td class="style33" colspan="2">
                <input id="Reset1" type="reset" value="Reset all Fields" /></td>
            <td class="style22" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="34px" onclick="Button1_Click" 
                    Text="Sign Up" Width="146px" />
            </td>
            <td class="style38">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style22" colspan="7">
                </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style22" colspan="7">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>


