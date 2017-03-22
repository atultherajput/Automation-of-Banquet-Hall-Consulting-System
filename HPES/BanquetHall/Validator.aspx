<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Validator.aspx.cs" Inherits="Validator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
            align:auto;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="80%">
        <tr>
            <td>
                        <h2>If You are a new customer then Register first and then Login:-<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /></h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="authopt" Text="Register" Checked="True" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="authopt" Text="Login" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged"  />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        
                        <asp:View ID="View1" runat="server">
                            <h2 align ="center"><strong>Registration Form</strong></h2>

                            <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="0">
                                

                                <asp:View ID="View3" runat="server">
                                    <h3><strong>
                                <br />
                                </strong>
                                <table align="center" class="nav-justified">
                                    <tr>
                                        <td colspan="2">
                                            <strong>Personal Details: </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Full Name</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxFullName" runat="server" OnTextChanged="TextBoxFullName_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxFullName" ErrorMessage="Enter your name" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Email</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBoxEmail" runat="server" ErrorMessage="Enter your email" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Date of Birth</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxDOB" runat="server" TextMode="Date" OnTextChanged="TextBox11_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Enter your Date of Birth" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Occupation</span></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListOccupation" runat="server" OnSelectedIndexChanged="DropDownListOccupation_SelectedIndexChanged">
                                                <asp:ListItem>Govt. Service</asp:ListItem>
                                                <asp:ListItem>Business Man</asp:ListItem>
                                                <asp:ListItem>Student</asp:ListItem>
                                                <asp:ListItem>Self Employed</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Office Phone Number</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxOfficePhone" runat="server" TextMode="Phone" OnTextChanged="TextBoxOfficePhone_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Mobile Number</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxMobile" runat="server" TextMode="Phone" OnTextChanged="TextBoxMobile_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Enter Your 10 digit Mobile Number" Font-Size="Small" ForeColor="Red" MaximumValue="10" MinimumValue="10" SetFocusOnError="True"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Account Number</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxAccountNumber" runat="server" TextMode="Number" OnTextChanged="TextBoxAccountNumber_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="ButtonPDNext" runat="server" OnClick="Button3_Click" Text="Next" />
                                        </td>
                                    </tr>
                                </table>
                            </h3>
                                    </asp:View>


                                    <asp:View ID="View4" runat="server">
                                    <h3><strong>
                                <br />
                                </strong>
                                <table align="center" class="nav-justified">
                                    <tr>
                                        <td colspan="2">
                                            <strong>Address Details: </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Address</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" OnTextChanged="TextBoxAddress_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>City</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxCity" runat="server" OnTextChanged="TextBoxCity_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="Enter your City" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>State</span></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownListState" runat="server" OnSelectedIndexChanged="DropDownListState_SelectedIndexChanged">
                                                <asp:ListItem>Bihar</asp:ListItem>
                                                <asp:ListItem>Jharkhand</asp:ListItem>
                                                <asp:ListItem>New Delhi</asp:ListItem>
                                                <asp:ListItem>U.P</asp:ListItem>
                                                <asp:ListItem>M.P</asp:ListItem>
                                                <asp:ListItem>West Bengal</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Country</span></td>
                                        <td>
                                            <asp:Label ID="LabelCountry" runat="server" Text="India"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Pin</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxPin" runat="server" TextMode="Number" OnTextChanged="TextBoxPin_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxPin" ErrorMessage="Enter 6 digit Post Code" Font-Size="Small" ForeColor="Red" MaximumValue="6" MinimumValue="6" SetFocusOnError="True"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;<asp:Button ID="ButtonADBack" runat="server" Text="Back" OnClick="Button4_Click" />
                                            &nbsp;&nbsp;
                                            <asp:Button ID="ButtonADNext" runat="server" Text="Next" OnClick="Button5_Click" />
                                        </td>
                                    </tr>
                                    </asp:View>


                                


                                <asp:View ID="View5" runat="server">
                            <h3><strong>
                                <br />
                                </strong>
                                <table align="center" class="nav-justified">
                                    <tr>
                                        <td colspan="2">
                                            <strong>User Details: </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>User Name</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxUserName" runat="server" OnTextChanged="TextBoxUserName_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Enter User Name" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Password</span></td>
                                        <td>
                                            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" OnTextChanged="TextBoxPassword_TextChanged"></asp:TextBox>
                                            &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConirmPass" ErrorMessage="Password doesnot Match" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Confirm Password</td>
                                        <td>
                                            <asp:TextBox ID="TextBoxConirmPass" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;<asp:Button ID="ButtonUDBack" runat="server" OnClick="Button1_Click" Text="Back" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="ButtonRegister" runat="server" OnClick="Button2_Click" Text="Register" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><strong>&nbsp;Message:&nbsp;&nbsp;
                                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                            </strong></td>
                                    </tr>
                                    </asp:View>


                                <asp:View ID="View6" runat="server">
                                    
                                    <table align="center" class="auto-style7">
                                        <tr>
                                            <td colspan="2"><h2>Add Profile Picture</h2></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                Please Select a .jpg Image.</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:FileUpload ID="FileUploadImage" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Finish" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5" colspan="2">
                                                <asp:Label ID="Label4" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    
                                </asp:View>




                                    
                                </asp:MultiView>
                        </asp:View>
                    
                        <asp:View ID="View2" runat="server">
                           <h2 align ="center"> <strong>Login Form</strong</h2>
                               <p>
                                   &nbsp;</p>
                              <h3> <table align="center" class="nav-justified">
                                   <tr>
                                       <td>Enter Your User Id</td>
                                       <td>
                                           <asp:TextBox ID="TextBoxLogUser" runat="server" OnTextChanged="TextBoxLogUser_TextChanged"></asp:TextBox>
                                           &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxLogUser" ErrorMessage="Enter Your Username" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>Enter Your Password</td>
                                       <td>
                                           <asp:TextBox ID="TextBoxLogPassword" runat="server" TextMode="Password" OnTextChanged="TextBoxLogPassword_TextChanged"></asp:TextBox>
                                           &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxLogPassword" ErrorMessage="Enter Your Password" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>&nbsp;</td>
                                       <td>
                                           <asp:CheckBox ID="CheckBoxRem" runat="server" Font-Size="Small" Text="Keep Me Login" />
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">
                                           &nbsp;<asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="Button6_Click" />
                                           
                                           <br />
                                           
                                       </td>
                                   </tr>
                                  <tr>
                                      <td colspan="2">
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server"></asp:Label>
                                      </td>
                                  </tr>
                               </table></h3>


                        </asp:View>

                        </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>

