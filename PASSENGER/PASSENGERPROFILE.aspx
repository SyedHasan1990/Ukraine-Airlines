<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PASSENGERPROFILE.aspx.cs" Inherits="PASSENGER_PASSENGERPROFILE" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/PASSENGERPROFILE.css" rel="stylesheet" />
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
           <br />
           <div class="session">
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="YOU ARE LOGGED IN AS :" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="#0066CC" Theme="RedWine" Font-Overline="True" Font-Underline="True"></dx:ASPxLabel>
           </div>
           <div class="sessionname">
                  <dx:ASPxLabel ID="lblUSERNAME" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="#0066CC" Theme="RedWine"></dx:ASPxLabel>
           </div>
           <div class="navigation">
               <dx:ASPxNavBar ID="navbar" runat="server" AllowSelectItem="True" AutoCollapse="True" EnableAnimation="True" EnableTheming="True" ExpandButtonPosition="Right" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Height="30" Theme="MetropolisBlue" Width="20%">
                   <GroupHeaderStyle HorizontalAlign="Left" />
                   <ItemStyle HorizontalAlign="Left" />
                   <Groups>
                       <dx:NavBarGroup HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="CadetBlue" Text="HOME">
                           <Items>
                               <dx:NavBarItem Enabled="true" NavigateUrl="~/PASSENGER/HOMEPAGEPASSENGER.aspx" Text="Home Page">
                                   <Image Height="30px" Url="../IMAGE/home-icon.png" Width="30px" />
                               </dx:NavBarItem>
                           </Items>
                           <HeaderStyle Font-Bold="True" ForeColor="CadetBlue" />
                       </dx:NavBarGroup>
                       <dx:NavBarGroup Expanded="False" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="CadetBlue" Text="PROFILE">
                           <Items>
                               <dx:NavBarItem Enabled="true" NavigateUrl="~/PASSENGER/PASSENGERPROFILE.aspx" Text="My Profile">
                                   <Image Height="22px" Url="../IMAGE/face-icon-png-4295.png" Width="30px" />
                               </dx:NavBarItem>
                           </Items>
                           <HeaderStyle Font-Bold="True" ForeColor="CadetBlue" />
                       </dx:NavBarGroup>
                       <dx:NavBarGroup Expanded="False" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="CadetBlue" Text="BOOK FLIGHT">
                           <Items>
                               <dx:NavBarItem Enabled="true" NavigateUrl="~/PASSENGER/BOOKFLIGHT.aspx" Text="Book Your Flight">
                                   <Image Height="22px" Url="../IMAGE/book flight.png" Width="30px" />
                               </dx:NavBarItem>
                           </Items>
                           <HeaderStyle Font-Bold="True" ForeColor="CadetBlue" />
                       </dx:NavBarGroup>
                       <dx:NavBarGroup Expanded="False" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="CadetBlue" Text="MANAGE BOOKING">
                           <Items>
                               <dx:NavBarItem Enabled="true" NavigateUrl="~/PASSENGER/MANAGEBOOKING.aspx" Text="Manage Your Booking">
                                   <Image Height="22px" Url="../IMAGE/managebooking.jpg" Width="30px" />
                               </dx:NavBarItem>
                           </Items>
                           <HeaderStyle Font-Bold="True" ForeColor="CadetBlue" />
                       </dx:NavBarGroup>
                       <dx:NavBarGroup Expanded="False" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="CadetBlue" Text="LOGOUT">
                           <Items>
                               <dx:NavBarItem Enabled="true" NavigateUrl="~/GENERAL/LOGOUT.aspx" Text="Logout Profile">
                                   <Image Height="22px" Url="../IMAGE/logout.png" Width="30px" />
                               </dx:NavBarItem>
                           </Items>
                           <HeaderStyle Font-Bold="True" ForeColor="CadetBlue" />
                       </dx:NavBarGroup>
                   </Groups>
               </dx:ASPxNavBar>
           </div>

           <div class="profile">
               <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Theme="MetropolisBlue" EnableAnimation="true" EnableTheming="true" Border-BorderWidth="2" Font-Names="Century"  Font-Size="XX-Large" HeaderText="                   YOUR INFORMATION" Width="700px" AllowCollapsingByHeaderClick="True" BackgroundImage-ImageUrl="~/IMAGE/cloudy.jpg" ShowCollapseButton="true">
                   <PanelCollection>
                    <dx:PanelContent>
                        <hr />
                         <div class="customername">
                              <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="FULL NAME :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                       <div class="name">
                           <dx:ASPxLabel ID="lblfullname" runat="server" Text="FULL NAME" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                          <div class="customernation">
                              <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="NATIONALITY :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="nation">
                             <dx:ASPxLabel ID="lblnation" runat="server" Text="nationality" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                      <div class="dob">
                           <dx:ASPxLabel ID="ASPxLabel13" runat="server" Text="DATE OF BIRTH :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                      </div>
                        <div class="dateofbirth">
                       <dx:ASPxLabel ID="lbldob" runat="server" Text="dob" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                            </div>
                        
                        <div class="passemail">
                              <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="EMAIL :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="passengeremail">
                            <dx:ASPxLabel ID="lblemail" runat="server" Text="email" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="passengeric">
                              <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="NRIC / IC :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="ic">
                             <dx:ASPxLabel ID="lblic" runat="server" Text="ic" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                      
                        <div class="passengeraddress">
                              <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="ADDRESS :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="address">
                            <dx:ASPxLabel ID="lbladdress" runat="server" Text="address" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        
                        <div class="passengercontact">
                              <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="CONTACT :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="contact">
                            <dx:ASPxLabel ID="lblcontact" runat="server" Text="contact" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        </dx:PanelContent>
                       </PanelCollection>

<BackgroundImage ImageUrl="~/IMAGE/cloudy.jpg"></BackgroundImage>

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
