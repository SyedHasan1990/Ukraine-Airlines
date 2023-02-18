<%@ Page Language="C#" AutoEventWireup="true" CodeFile="REGISTRATION.aspx.cs" Inherits="GENERAL_REGISTRATION" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/registration.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="bodyb">
               <div class="headerlogo">
             <dx:ASPxImage ID="ASPxImage1" Width="900px" ImageUrl="~/IMAGE/UIA_Logos_line.gif" runat="server" ShowLoadingImage="true"></dx:ASPxImage>
        
               </div>
       
        <div class="divider">
            <hr/>
        </div>
             <div class="infopss">
                 <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="PASSENGER REGISTRATION" Font-Bold="True" Font-Names="Century" Font-Size="XX-Large" ForeColor="#0066CC" Theme="RedWine" Font-Overline="True" Font-Underline="True"></dx:ASPxLabel>
             </div>
             <br />
              <div class="addpassenger">
                  <dx:ASPxRoundPanel ID="ASPxRoundPanel1" BackgroundImage-HorizontalPosition="center" BackgroundImage-ImageUrl="~/IMAGE/cloudy.jpg"  Border-BorderWidth="2" Font-Names="Century"  Font-Size="XX-Large"  EnableTheming="true" runat="server" Theme="MetropolisBlue" HeaderText="           PASSENGER REGISTRATION FORM" Width="780px" AllowCollapsingByHeaderClick="True" ShowCollapseButton="True">
                 <PanelCollection>
                    <dx:PanelContent>
                     <hr />
                      
                        <div class="customername">
                              <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="FULL NAME" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                       <div class="name">
                            <dx:ASPxTextBox ID="txtName" Size="30" NullTextStyle-ForeColor="DarkGray" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Your Full Name" NullText="-- Full Name --">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>


<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Your Full Name"></RequiredField>
</ValidationSettings>


<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                        <div class="username">
                              <dx:ASPxLabel ID="ASPxLabel12" runat="server" Text="USERNAME" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="passusername">
                              <dx:ASPxTextBox ID="txtUsername" Size="30" MaxLength="10" NullTextStyle-ForeColor="DarkGray" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Username" NullText="-- Username --">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>


<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Username"></RequiredField>
</ValidationSettings>


<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                          <div class="customernation">
                              <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="NATIONALITY" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="nation">
                             <dx:ASPxComboBox ID="cmbNation" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Select Your Nationality" NullTextStyle-ForeColor="DarkGray" NullText="-- Select Country --" Font-Size="Large" Font-Names="Century" runat="server" EnableTheming="true" Theme="MetropolisBlue" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Width="170px" ValueType="System.String">
                                 <Items>
                                     <dx:ListEditItem ImageUrl="~/IMAGE/NationalFlag.jpg" Text="Bangladesh" Value="0" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/malaysia-flag.gif" Text="Malaysia" Value="1" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/singapore.jpg" Text="Singapore" Value="2" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/usa.png" Text="USA" Value="3" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/flag-of-china.jpg" Text="China" Value="4" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/india.jpg" Text="India" Value="5" />
                                 </Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>



<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Select Your Nationality"></RequiredField>
</ValidationSettings>



<Border BorderColor="SkyBlue" BorderStyle="Dashed"></Border>
                             </dx:ASPxComboBox>
                        </div>
                      <div class="dob">
                           <dx:ASPxLabel ID="ASPxLabel13" runat="server" Text="DATE OF BIRTH" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                      </div>
                        <div class="dateofbirth">
                            <dx:ASPxDateEdit ID="txtDate" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-ErrorText="Select Your Date Of Birth" ValidationSettings-RequiredField-IsRequired="true" NullText="-- Date Of Birth" NullTextStyle-ForeColor="DarkGray" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" EditFormat="Custom" runat="server" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue">
                             

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Select Your Date Of Birth"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                             

                            </dx:ASPxDateEdit>
                       
                            </div>
                        
                        <div class="passemail">
                              <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="EMAIL" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="passengeremail">
                              <dx:ASPxTextBox ID="txtEmail" ValidateRequestMode="Enabled" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px" MaxLength="50" NullTextStyle-ForeColor="DarkGray" NullText="-- Email--">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

                                  <ValidationSettings>
                                      <RequiredField IsRequired="true" ErrorText="Enter Email Address" />
                                      <RegularExpression ErrorText="Please Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                  </ValidationSettings>
<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                       <div class="passengerpassword">
                            <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="PASSWORD" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                       </div>
                        <div class="password">
                             <dx:ASPxTextBox ID="txtPASS" ValidationSettings-RequiredField-IsRequired="true" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-ErrorText="Please Enter Your Password" MaxLength="10" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" NullTextStyle-ForeColor="DarkGray" Width="170px" NullText="-- Password --" Password="True">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Your Password"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                        <div class="question">
                             <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="SECURITY QUESTION" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="securityquestion">
                            <dx:ASPxComboBox ID="cmbsecurity" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Select Security Question" NullTextStyle-ForeColor="DarkGray" NullText="-- Select --" Font-Size="Large" Font-Names="Century" runat="server" EnableTheming="true" Theme="MetropolisBlue" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Width="170px" ValueType="System.String">
                                 <Items>
                                     <dx:ListEditItem Text="What is your mothers given name ?" Value="0" />
                                     <dx:ListEditItem Text="Where is your mothers place of birth ?" Value="1" />
                                     <dx:ListEditItem Text="Which city your childhood belong to ?" Value="2" />
                                     <dx:ListEditItem Text="Your pet name ?" Value="3" />
                                     <dx:ListEditItem Text="What is your fathers place of birth ?" Value="4" />
                                     <dx:ListEditItem Text="What is the name of your first car ?" Value="5" />
                                 </Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Select Your Nationality"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed"></Border>
                             </dx:ASPxComboBox>
                        </div>
                         <div class="answer">
                             <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="YOUR ANSWER" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="myanswer">
                             <dx:ASPxTextBox ID="txtanswer" NullTextStyle-ForeColor="DarkGray" NullText="-- Your Answer --" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Your Answer" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Your Answer"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                         <div class="passengeric">
                              <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="NRIC / IC" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="ic">
                              <dx:ASPxTextBox ID="txtIC" NullTextStyle-ForeColor="DarkGray" NullText="-- IC --" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Your IC" MaxLength="30" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Your IC"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                      
                        <div class="passengeraddress">
                              <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="ADDRESS" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="address">
                             <dx:ASPxTextBox ID="txtAddress" NullTextStyle-ForeColor="DarkGray" NullText="-- Your Address --" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Your Address" MaxLength="30" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Your Address"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                        
                        <div class="passengercontact">
                              <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="CONTACT" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="contact">
                            <dx:ASPxTextBox ID="txtContact"  NullTextStyle-ForeColor="DarkGray" NullText="-- Contact --" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Contact Number" MaxLength="15" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
    <RegularExpression ErrorText="Enter Valid Contact Number" ValidationExpression="^[0-9]{10,12}$" />
<RequiredField IsRequired="True" ErrorText="Please Enter Contact Number"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
   
                         <hr />
                        <div class="access">
                               <dx:ASPxButton ID="bntregister" Width="10" Image-Height="33" HoverStyle-BackColor="LightBlue" HoverStyle-Border-BorderColor="Black"  runat="server" Text="REGISTER ACCOUNT" Font-Size="Large" Font-Names="Courier New" ForeColor="#0066CC" EnableTheming="true"  Image-Url="~/IMAGE/userregistration.png" Theme="Glass" OnClick="bntregister_Click">
<Image Height="33px" Url="~/IMAGE/userregistration.png"></Image>

<HoverStyle Border-BorderColor="Black" BackColor="LightBlue"></HoverStyle>
                               </dx:ASPxButton>
                        </div>
                         </dx:PanelContent>
                        </PanelCollection>

<BackgroundImage ImageUrl="~/IMAGE/cloudy.jpg"></BackgroundImage>

                      <Border BorderColor="AliceBlue" BorderStyle="Dashed" BorderWidth="2px" />
                 </dx:ASPxRoundPanel>
              </div>
           <br />
            
       

             <div class="footer">
            <div class="joining">
        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="JOIN US ON SOCIAL MEDIA" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#0066CC" Theme="iOS" Font-Overline="True" Font-Underline="True"></dx:ASPxLabel>
        </div>
            <div class="socialmedia">
                <dx:ASPxButton ID="btnfacebook" HoverStyle-BackColor="Yellow" HoverStyle-Border-BorderColor="DarkSlateBlue"  runat="server" Text="" EnableTheming="true" Width="30px" Height="20px" Image-Url="~/IMAGE/facebook-2-256.png" Theme="Mulberry"></dx:ASPxButton>

            </div>
            <div class="twitter">
             <dx:ASPxButton ID="btntwitter" HoverStyle-BackColor="Yellow" HoverStyle-Border-BorderColor="Black"  runat="server" Text="" EnableTheming="true" Width="30px" Height="20px" Image-Url="~/IMAGE/twitter2.png" Theme="Mulberry"></dx:ASPxButton>
            </div>
            </div>
             </div>
    </form>
</body>
</html>
