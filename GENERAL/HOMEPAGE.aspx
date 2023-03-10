<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOMEPAGE.aspx.cs" Inherits="GENERAL_HOMEPAGE" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/HOMECSS.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="bodyb">
        
         <div class="headerlogo">
             <dx:ASPxImage ID="ASPxImage1" BackgroundImage-ImageUrl="HOMEPAGE.aspx" Width="900px" ImageUrl="~/IMAGE/UIA_Logos_line.gif" runat="server" ShowLoadingImage="true"></dx:ASPxImage>
        </div>
       
        <div class="divider">
            <hr/>
        </div>
        <div class="greetings">
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="WELCOME TO UKRAINE INTERNATIONAL AIRLINES" Font-Bold="True" Font-Names="Century" Font-Size="XX-Large" ForeColor="#0066CC" Theme="RedWine" Font-Overline="True" Font-Underline="True"></dx:ASPxLabel>
        </div>
             <div class="login">
              <dx:ASPxButton ID="bntlogin" Width="10" Image-Height="33" HoverStyle-BackColor="Yellow" HoverStyle-Border-BorderColor="Black"  runat="server" Text="LOGIN" Font-Size="Large" Font-Names="Courier New" ForeColor="#0066CC" EnableTheming="true"  Image-Url="~/IMAGE/loginbutton.png" Theme="Mulberry" OnClick="bntlogin_Click"></dx:ASPxButton>
        </div>
             <div class="register">
              <dx:ASPxButton ID="btnregister" Width="2" HoverStyle-BackColor="Yellow" HoverStyle-Border-BorderColor="Black" Image-Height="34"  runat="server" Text="REGISTER" Font-Size="Large" Font-Names="Courier New" ForeColor="#0066CC" EnableTheming="true"  Image-Url="~/IMAGE/online_icon.png" Theme="Mulberry" OnClick="btnregister_Click"></dx:ASPxButton>
        </div>
        <br />
        <div class="advertise">
            <dx:ASPxImage ID="ASPxImage2" Width="600px" ImageUrl="~/IMAGE/advertise1.JPG" runat="server" ShowLoadingImage="true"></dx:ASPxImage>
        </div>
        <div class="wish">
            <dx:ASPxImage ID="ASPxImage5" Width="300px" ImageUrl="~/IMAGE/wish.JPG" runat="server" ShowLoadingImage="true"></dx:ASPxImage>
        </div>
        <div class="info">
             <dx:ASPxImage ID="ASPxImage3" Width="600px" ImageUrl="~/IMAGE/special offer.JPG" Height="490px" runat="server" ShowLoadingImage="true"></dx:ASPxImage>
        </div>
        <div class="info2">
 <dx:ASPxImage ID="ASPxImage4" Width="600px" ImageUrl="~/IMAGE/advertise.JPG" runat="server" ShowLoadingImage="true"></dx:ASPxImage>
        </div>
          <div class="divider2">
            <hr/>
        </div>
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
