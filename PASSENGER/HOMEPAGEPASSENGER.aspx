<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOMEPAGEPASSENGER.aspx.cs" Inherits="PASSENGER_HOMEPAGEPASSENGER" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/PASSENGERHOME.css" rel="stylesheet" />
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
                  <dx:ASPxLabel ID="lblUSERNAME" runat="server" Text="[USERNAME]" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" ForeColor="#0066CC" Theme="RedWine"></dx:ASPxLabel>
           </div>
           <div class="navigation">
               <dx:ASPxNavBar ID="navbar" ForeColor="#0066CC" Font-Names="Century" Height="30" Font-Size="Large" runat="server" AllowSelectItem="True" EnableAnimation="True"
            Width="20%" EnableTheming="True" Theme="MetropolisBlue" ExpandButtonPosition="Right" AutoCollapse="True">
            <GroupHeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            <Groups>
                 
                <dx:NavBarGroup Text="HOME" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="CadetBlue">
                    <Items>
                        <dx:NavBarItem Text="Home Page"   Enabled="true" NavigateUrl="~/PASSENGER/HOMEPAGEPASSENGER.aspx">
                            <Image Height="30px" Url="../IMAGE/home-icon.png" Width="30px" />
                           
                        </dx:NavBarItem>
                    </Items>      

<HeaderStyle Font-Bold="True" ForeColor="CadetBlue"></HeaderStyle>
                </dx:NavBarGroup>
                 <dx:NavBarGroup Text="PROFILE" HeaderStyle-Font-Bold="true"  HeaderStyle-ForeColor="CadetBlue" Expanded="False">
                    <Items>
                        <dx:NavBarItem Text="My Profile"  Enabled="true" NavigateUrl="~/PASSENGER/PASSENGERPROFILE.aspx">
                            <Image Height="22px" Url="../IMAGE/face-icon-png-4295.png" Width="30px" />
                        </dx:NavBarItem>
                          
                    </Items>      

<HeaderStyle Font-Bold="True" ForeColor="CadetBlue"></HeaderStyle>
                </dx:NavBarGroup>
                 <dx:NavBarGroup Text="BOOK FLIGHT" HeaderStyle-Font-Bold="true"  HeaderStyle-ForeColor="CadetBlue" Expanded="False">
                    <Items>
                        <dx:NavBarItem Text="Book Your Flight"  Enabled="true" NavigateUrl="~/PASSENGER/BOOKFLIGHT.aspx">
                            <Image Height="22px" Url="../IMAGE/book flight.png" Width="30px" />
                        </dx:NavBarItem>
                    </Items>      

<HeaderStyle Font-Bold="True" ForeColor="CadetBlue"></HeaderStyle>
                </dx:NavBarGroup>
                <dx:NavBarGroup Text="MANAGE BOOKING" HeaderStyle-Font-Bold="true"  HeaderStyle-ForeColor="CadetBlue" Expanded="False">
                    <Items>
                        <dx:NavBarItem Text="Manage Your Booking"  Enabled="true" NavigateUrl="~/PASSENGER/MANAGEBOOKING.aspx">
                            <Image Height="22px" Url="../IMAGE/managebooking.jpg" Width="30px" />
                        </dx:NavBarItem>
                          
                    </Items>      

<HeaderStyle Font-Bold="True" ForeColor="CadetBlue"></HeaderStyle>
                </dx:NavBarGroup>
                  <dx:NavBarGroup Text="LOGOUT"  HeaderStyle-ForeColor="CadetBlue" HeaderStyle-Font-Bold="true" Expanded="False">
                    <Items>
                        <dx:NavBarItem Text="Logout Profile"  Enabled="true" NavigateUrl="~/GENERAL/LOGOUT.aspx">
                            <Image Height="22px" Url="../IMAGE/logout.png" Width="30px" />
                        </dx:NavBarItem>
                         </Items>

<HeaderStyle Font-Bold="True" ForeColor="CadetBlue"></HeaderStyle>
                </dx:NavBarGroup>    
            </Groups>
        </dx:ASPxNavBar>
           </div>
             <div class="gallery">
            <dx:ASPxImageSlider ID="ASPxImageSlider1"  runat="server" ClientInstanceName="ImageSlider"
        EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});">
        <SettingsImageArea ImageSizeMode="ActualSizeOrFit" NavigationButtonVisibility="None"
            ItemTextVisibility="Always" EnableLoopNavigation="true" AnimationType="Fade" />
        <SettingsNavigationBar Mode="Dots" />
        <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>
        <Items>
            <dx:ImageSliderItem ImageUrl="../IMAGE/ukraineairport1.jpg"
                NavigateUrl="1">
                <TextTemplate>
                    <h3 class='isdemoH3'>UKRAINE AIRPORT TERMINAL 1</h3>
                  
                </TextTemplate>
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="../IMAGE/ukraineairport2.jpg"
                NavigateUrl="2">
                <TextTemplate>
                    <h3 class='isdemoH3'>UKRAINE AIRPORT MAIN ENTRANCE</h3>
                   
                </TextTemplate>
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="../IMAGE/ukraineairport3.jpg"
                NavigateUrl="3">
         
                <TextTemplate>
                    <h3 class='isdemoH3'>UKRAINE AIRPORT NIGHT VIEW</h3>
                 
                </TextTemplate>
            </dx:ImageSliderItem>
          
        </Items>
        <Styles>
            <ImageArea BackgroundImage-ImageUrl="~/IMAGE/cloudy.jpg" Border-BorderColor="CadetBlue" Border-BorderStyle="Dotted" Width="700" Height="313" >
<BackgroundImage ImageUrl="~/IMAGE/cloudy.jpg"></BackgroundImage>
            </ImageArea>
        </Styles>
    </dx:ASPxImageSlider>
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
    </form>
</body>
</html>
