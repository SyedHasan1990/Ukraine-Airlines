<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BOOKFLIGHT.aspx.cs" Inherits="PASSENGER_BOOKFLIGHT" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/BOOKFLIGHTCSS.css" rel="stylesheet" />
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
               <div class="booking">
                    <dx:ASPxPageControl SkinID="None" Width="1000px" EnableViewState="False" ID="ASPxPageControl2"
        runat="server" ActiveTabIndex="1" TabSpacing="0px" CssClass="pcTemplates" Theme="MetropolisBlue" EnableTheming="True" >
        <TabPages>
            <dx:TabPage Text="  BOOK FLIGHT" ActiveTabStyle-Font-Size="Medium" ActiveTabStyle-Font-Names="Century" Name="Ganymede">
                <TabImage IconID="tasks_task_16x16" Url="../IMAGE/bookflight.JPG">
                </TabImage>

<ActiveTabStyle Font-Names="Century" Font-Size="Medium"></ActiveTabStyle>
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <div class="from">
                            <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="FROM :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="fromcountry">
                            <dx:ASPxComboBox ID="cmbNation" ValidationSettings-RequiredField-IsRequired="true"  NullTextStyle-ForeColor="DarkGray" NullText="-- Select Country --" Font-Size="Large" Font-Names="Century" runat="server" EnableTheming="true" Theme="MetropolisBlue" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Width="185px" ValueType="System.String">
                                 <Items>
                                     <dx:ListEditItem ImageUrl="~/IMAGE/malaysia-flag.gif" Text="Malaysia" Value="1" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/NationalFlag.jpg" Text="Bangladesh" Value="0" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/singapore.jpg" Text="Singapore" Value="2" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/usa.png" Text="USA" Value="3" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/flag-of-china.jpg" Text="China" Value="4" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/india.jpg" Text="India" Value="5" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/UK.png" Text="United Kingdom" Value="6" />
                                 </Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>



<ValidationSettings>
<RequiredField IsRequired="True"></RequiredField>
</ValidationSettings>



<Border BorderColor="SkyBlue" BorderStyle="Dashed"></Border>
                             </dx:ASPxComboBox>
                        </div>
                         <div class="to">
                            <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="TO :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="tocountry">
                            <dx:ASPxComboBox ID="cmbto" ValidationSettings-RequiredField-IsRequired="true"  NullTextStyle-ForeColor="DarkGray" NullText="-- Select Country --" Font-Size="Large" Font-Names="Century" runat="server" EnableTheming="true" Theme="MetropolisBlue" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Width="185px" ValueType="System.String">
                                 <Items>
                                     <dx:ListEditItem ImageUrl="~/IMAGE/malaysia-flag.gif" Text="Malaysia" Value="1" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/NationalFlag.jpg" Text="Bangladesh" Value="0" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/singapore.jpg" Text="Singapore" Value="2" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/usa.png" Text="USA" Value="3" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/flag-of-china.jpg" Text="China" Value="4" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/india.jpg" Text="India" Value="5" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/UK.png" Text="United Kingdom" Value="6" />
                                 </Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>



<ValidationSettings>
<RequiredField IsRequired="True" ></RequiredField>
</ValidationSettings>



<Border BorderColor="SkyBlue" BorderStyle="Dashed"></Border>
                             </dx:ASPxComboBox>
                        </div>
                        <div class="trip">
                              <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="TRIP :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="triprec">
                            <dx:ASPxComboBox runat="server" NullText="-- Select Trip --" Width="178px" Theme="MetropolisBlue" EnableTheming="True" Font-Names="Century" Font-Size="Large" ID="cmbtrip">
    <Items>
        <dx:ListEditItem Text="One Way" Value="0">
        </dx:ListEditItem>
        <dx:ListEditItem Text="Two Way" Value="1">
        </dx:ListEditItem>
    </Items>
    <NullTextStyle ForeColor="DarkGray">
    </NullTextStyle>
    <ValidationSettings>
        <RequiredField IsRequired="True">
        </RequiredField>
    </ValidationSettings>
    <Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px">
    </Border>
</dx:ASPxComboBox>

                        </div>
                        <div class="number">
                                <dx:ASPxLabel ID="ASPxLabel15" runat="server" Text="SEAT :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="tickets">
                                                          <dx:ASPxComboBox runat="server" NullText="-- Select Seat --" Width="170px" Theme="MetropolisBlue" EnableTheming="True" Font-Names="Century" Font-Size="Large" ID="cmbseat"><Items>
<dx:ListEditItem Text="EC-A" Value="0"></dx:ListEditItem>
<dx:ListEditItem Text="EC-A1" Value="1"></dx:ListEditItem>
<dx:ListEditItem Text="EC-B" Value="2"></dx:ListEditItem>
<dx:ListEditItem Text="EC-B1" Value="3"></dx:ListEditItem>
<dx:ListEditItem Text="EC-C" Value="4"></dx:ListEditItem>
<dx:ListEditItem Text="EC-C1" Value="5"></dx:ListEditItem>
<dx:ListEditItem Text="EC-D" Value="6"></dx:ListEditItem>
<dx:ListEditItem Text="EC-D1" Value="7"></dx:ListEditItem>
<dx:ListEditItem Text="EC-E" Value="8"></dx:ListEditItem>
<dx:ListEditItem Text="EC-E1" Value="9"></dx:ListEditItem>
</Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Select Seat"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
</dx:ASPxComboBox>

                        

                        </div>
                        <div class="departuredate">
                             <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="DEPARTURE :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="departure">
                            <dx:ASPxDateEdit ID="txtDeparture" ValidateRequestMode="Enabled"  ValidationSettings-RequiredField-IsRequired="true" NullText="-- Departure Date --" NullTextStyle-ForeColor="DarkGray" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" EditFormat="Custom" runat="server" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue">
                             

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True" ></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                             

                            </dx:ASPxDateEdit>
                        </div>
                         <div class="arrivaldate">
                              <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="ARRIVAL :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="arrivale">
                            <dx:ASPxDateEdit ID="txtarrival" ValidateRequestMode="Enabled" ValidationSettings-RequiredField-IsRequired="true" NullText="-- Arrival Date --" NullTextStyle-ForeColor="DarkGray" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" EditFormat="Custom" runat="server" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue">
                             

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>

<ValidationSettings>
<RequiredField IsRequired="True"></RequiredField>
</ValidationSettings>

<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                             

                            </dx:ASPxDateEdit>
                        </div>
                        <br />
                        <hr />
                        <div class="searchflight">
                            <dx:ASPxButton ID="btnSearch" Width="10" Image-Height="33" HoverStyle-BackColor="LightBlue" HoverStyle-Border-BorderColor="Black"  runat="server" Text="SEARCH FLIGHT" Font-Size="Large" Font-Names="Courier New" ForeColor="#0066CC" EnableTheming="true"  Theme="Glass" OnClick="btnSearch_Click">
<Image Height="33px" Url="../IMAGE/search_flight-512.png"></Image>

<HoverStyle Border-BorderColor="Black" BackColor="LightBlue"></HoverStyle>
                               </dx:ASPxButton>
                        </div>
                        </dx:ContentControl>
                        </ContentCollection>
                </dx:TabPage>
            </TabPages>
                </dx:ASPxPageControl>
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
                  <br />
                  <br />
                   <br />
                  <br />
                   <div class="footer">
            <div class="joining">
        <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="JOIN US ON SOCIAL MEDIA" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#0066CC" Theme="iOS" Font-Overline="True" Font-Underline="True"></dx:ASPxLabel>
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
