<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="GENERAL_LOGIN" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LOGINSTYLE.css" rel="stylesheet" />
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="bodyb">
                      <div class="headerlogo">
             <dx:ASPxImage ID="ASPxImage1" Width="900px" ImageUrl="~/IMAGE/UIA_Logos_line.gif" LoadingImageUrl="HOMEPAGE.aspx" runat="server" ShowLoadingImage="true"></dx:ASPxImage>
        
               </div>
       
        <div class="divider">
            <hr/>
        </div>
             <div class="infopss">
                 <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="PASSENGER LOGIN PANEL" Font-Bold="True" Font-Names="Century" Font-Size="XX-Large" ForeColor="#0066CC" Theme="RedWine" Font-Overline="True" Font-Underline="True"></dx:ASPxLabel>
             </div>
             <br />
           

            <div class="loginpanel">
             <dx:ASPxRoundPanel ID="ASPxRoundPanel1" BackgroundImage-HorizontalPosition="center" BackgroundImage-ImageUrl="~/IMAGE/cloudy.jpg"  Border-BorderWidth="2" Font-Names="Century"  Font-Size="XX-Large"  EnableTheming="true" runat="server" Theme="MetropolisBlue" HeaderText="                              PASSENGER LOGIN" Width="780px" AllowCollapsingByHeaderClick="True" ShowCollapseButton="True">
                 <PanelCollection>
                    <dx:PanelContent>
                <hr />
                         <div class="passemail">
                              <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="USERNAME" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="passengeremail">
                              <dx:ASPxTextBox ID="txtEmail" ValidateRequestMode="Enabled" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="220px" MaxLength="50" NullText="-- Username--">
                                  <ValidationSettings SetFocusOnError="True">
                                      <RequiredField IsRequired="true" ErrorText="Enter Username" />
                                    
                                  </ValidationSettings>
<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                       <div class="passengerpassword">
                            <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="PASSWORD" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                       </div>
                    
                        <div class="password">
                             <dx:ASPxTextBox ID="txtPASS" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Enter Password" MaxLength="10" Size="30" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="220px" NullText="-- Password --" Password="True">
<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Enter Password"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                    <div class="forgot">
                        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" Font-Names="Century" Font-Size="Large" ForeColor="Maroon" NavigateUrl="FORGOT PASSWORD.aspx" Text="FORGOT PASSWORD ?">
                        </dx:ASPxHyperLink>
                    </div>
                        <hr />
                       <div class="buttonlogin">
                           <dx:ASPxButton ID="bntlogin" Width="10" Image-Height="33" HoverStyle-BackColor="LightBlue" HoverStyle-Border-BorderColor="Black"  runat="server" Text="LOGIN ACCESS" Font-Size="Large" Font-Names="Courier New" ForeColor="#0066CC" EnableTheming="true"  Image-Url="~/IMAGE/user_login_man-512.png" Theme="Glass" OnClick="bntlogin_Click">


<Image Height="33px" Url="~/IMAGE/user_login_man-512.png"></Image>


<HoverStyle Border-BorderColor="Black" BackColor="LightBlue"></HoverStyle>
                               </dx:ASPxButton>
                       </div>
                        </dx:PanelContent>
                     </PanelCollection>

<BackgroundImage ImageUrl="~/IMAGE/cloudy.jpg" HorizontalPosition="center"></BackgroundImage>

<Border BorderWidth="2px"></Border>
                        </dx:ASPxRoundPanel>

                </div>
            <br />
            <br />

            <br />

            <br />

            <br />
<br />
          <br />
                      <br />

     
<br />
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
