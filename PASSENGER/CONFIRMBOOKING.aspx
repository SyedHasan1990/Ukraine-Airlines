<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CONFIRMBOOKING.aspx.cs" Inherits="PASSENGER_CONFIRMBOOKING" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/PAYMENTSTYLE.css" rel="stylesheet" />
    <link href="../CSS/CONFIRMBOOKINFCSS.css" rel="stylesheet" />
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
                    <dx:ASPxPageControl SkinID="None" Width="580px" EnableViewState="False" ID="ASPxPageControl2"
        runat="server" ActiveTabIndex="0" TabSpacing="0px" CssClass="pcTemplates" Theme="MetropolisBlue" EnableTheming="True" >
        <TabPages>
            <dx:TabPage Text="ONE WAY PRICE" ActiveTabStyle-Font-Size="Medium" ActiveTabStyle-Font-Names="Century" Name="Ganymede">
                <TabImage IconID="tasks_task_16x16" Url="../IMAGE/Malaysian_ringgit_MYR_Sen-128.png">
                </TabImage>

<ActiveTabStyle Font-Names="Century" Font-Size="Medium"></ActiveTabStyle>
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:ASPxGridView ID="ASPxGridView1" Font-Size="Large" Font-Names="Century" EnableTheming="true"  Theme="MetropolisBlue" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                            <SettingsSearchPanel Visible="True" />
                            <SettingsText SearchPanelEditorNullText="Enter Destination To Search" />
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="Origin_Country" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" Caption="ORIGIN" ShowInCustomizationForm="True" VisibleIndex="0">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Dest_Country" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" Caption="DESTINATION" ShowInCustomizationForm="True" VisibleIndex="1">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Trip_Details" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" Caption="TRIP" ShowInCustomizationForm="True" VisibleIndex="2">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Total_Price" Caption="PRICE PER PERSON" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" ShowInCustomizationForm="True" VisibleIndex="3">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uadb %>" SelectCommand="SELECT [Origin_Country], [Dest_Country], [Trip_Details], [Total_Price] FROM [SINGLE_TRIP_DETAILS]"></asp:SqlDataSource>
                        </dx:ContentControl>
                        </ContentCollection>
                </dx:TabPage>
             <dx:TabPage Text="TWO WAY PRICE" ActiveTabStyle-Font-Size="Medium" ActiveTabStyle-Font-Names="Century" Name="Ganymede">
                <TabImage IconID="tasks_task_16x16" Url="../IMAGE/Malaysian_ringgit_MYR_Sen-128.png">
                </TabImage>

<ActiveTabStyle Font-Names="Century" Font-Size="Medium"></ActiveTabStyle>
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:ASPxGridView ID="ASPxGridView2" Font-Size="Large" Font-Names="Century"  AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Theme="MetropolisBlue" EnableTheming="true" runat="server">
                            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                            <SettingsSearchPanel Visible="True" />
                           
                                 <Columns>
                                <dx:GridViewDataTextColumn FieldName="Origin_Country" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" Caption="ORIGIN" ShowInCustomizationForm="True" VisibleIndex="0">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Dest_Country" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" Caption="DESTINATION" ShowInCustomizationForm="True" VisibleIndex="1">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Trip_Details" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" Caption="TRIP" ShowInCustomizationForm="True" VisibleIndex="2">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Total_Price" Caption="PRICE PER PERSON" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" ShowInCustomizationForm="True" VisibleIndex="3">
<HeaderStyle BackColor="DarkSlateBlue" ForeColor="WhiteSmoke"></HeaderStyle>
                                </dx:GridViewDataTextColumn>
                            </Columns>
                    
                        </dx:ASPxGridView>
                        
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:uadb %>" SelectCommand="SELECT [Origin_Country], [Dest_Country], [Trip_Details], [Total_Price] FROM [ROUND_TRIP_DETAILS]"></asp:SqlDataSource>
                        </dx:ContentControl>
                        </ContentCollection>
                </dx:TabPage>
            </TabPages>
                </dx:ASPxPageControl>
               </div>
           <div class ="info">
               <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Theme="MetropolisBlue" EnableAnimation="true" EnableTheming="true" Border-BorderWidth="2" Font-Names="Century"  Font-Size="XX-Large" HeaderText="              PASSENGER INFORMATION" Width="700px" AllowCollapsingByHeaderClick="true" BackgroundImage-ImageUrl="~/IMAGE/cloudy.jpg" ShowCollapseButton="true">
                   <PanelCollection>
                    <dx:PanelContent>
                        <hr />
                         <div class="customername">
                              <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="FULL NAME :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                       <div class="name">
                           <dx:ASPxLabel ID="lblfullname" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                          <div class="customernation">
                              <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="NATIONALITY :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="nation">
                             <dx:ASPxLabel ID="lblnation" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                      <div class="dob">
                           <dx:ASPxLabel ID="ASPxLabel13" runat="server" Text="DATE OF BIRTH :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                      </div>
                        <div class="dateofbirth">
                       <dx:ASPxLabel ID="lbldob" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                            </div>
                        
                        <div class="passemail">
                              <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="EMAIL :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="passengeremail">
                            <dx:ASPxLabel ID="lblemail" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="passengeric">
                              <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="NRIC / IC :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="ic">
                             <dx:ASPxLabel ID="lblic" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                      
                        <div class="passengeraddress">
                              <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="ADDRESS :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="address">
                            <dx:ASPxLabel ID="lbladdress" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        
                        <div class="passengercontact">
                              <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="CONTACT :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="contact">
                            <dx:ASPxLabel ID="lblcontact" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
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
           <div class="payment">
               <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Theme="MetropolisBlue" EnableAnimation="true" EnableTheming="true" Border-BorderWidth="2" Font-Names="Century"  Font-Size="XX-Large" HeaderText="                               BOOKING CONFIRMATION" Width="700px" BackgroundImage-ImageUrl="~/IMAGE/cloudy.jpg">
                   <PanelCollection>
                    <dx:PanelContent>
                        <hr />
                         <div class="origin">
                              <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="ORIGIN :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                       <div class="originnname">
                           <dx:ASPxLabel ID="lblOrigin" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue" Text="origin">
                           </dx:ASPxLabel>
                        </div>
                          <div class="destination">
                              <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="DESTINATION :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="destinationname">
                             <dx:ASPxLabel ID="lbldestination" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue" Text="destination">
                             </dx:ASPxLabel>
                        </div>
                      <div class="trip">
                           <dx:ASPxLabel ID="ASPxLabel12" runat="server" Text="TRIP :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                      </div>
                        <div class="triptype">
                            <dx:ASPxLabel ID="lbltrip" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue" Text="trip">
                            </dx:ASPxLabel>
                            </div>
                        
               
                         <div class="departure">
                              <dx:ASPxLabel ID="ASPxLabel17" runat="server" Text="DEPARTURE :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                         <div class="departuredate">
                             <dx:ASPxLabel ID="lbldeprt" runat="server" Text="ic" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                      
                        <div class="arrival">
                              <dx:ASPxLabel ID="ASPxLabel19" runat="server" Text="ARRIVAL :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="arrivaledate">
                            <dx:ASPxLabel ID="lblarrv" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue" Text="arrival"></dx:ASPxLabel>
                        </div>
                        <div class="seat">
                             <dx:ASPxLabel ID="ASPxLabel20" runat="server" Text="SEAT :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="seatnumber">
<dx:ASPxLabel ID="lblseat" runat="server" Font-Names="Century" Font-Size="Medium" ForeColor="#0066CC" Theme="MetropolisBlue" Text="origin">
                           </dx:ASPxLabel>
                        </div>
                        <hr />
                        <div class="paymentselect">
                              <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="SELECT CARD :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="card">
                            <dx:ASPxComboBox ID="cmbCardType" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Select Your Nationality" NullTextStyle-ForeColor="DarkGray" NullText="-- Select Card --" Font-Size="Large" Font-Names="Century" runat="server" EnableTheming="true" Theme="MetropolisBlue" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Width="170px" ValueType="System.String">
                                 <Items>
                                     <dx:ListEditItem ImageUrl="~/IMAGE/amex.JPG" Text="AMEX" Value="0" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/visa.JPG" Text="VISA" Value="1" />
                                     <dx:ListEditItem ImageUrl="~/IMAGE/mastercard.JPG" Text="MASTERCARD" Value="2" />
                                 </Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>



<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Select Card"></RequiredField>
</ValidationSettings>



<Border BorderColor="SkyBlue" BorderStyle="Dashed"></Border>
                             </dx:ASPxComboBox>
                        </div>
                        <div class="cardnumber">
  <dx:ASPxLabel ID="ASPxLabel14" runat="server" Text="CARD NUMBER :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="numbercard">
                            <dx:ASPxTextBox ID="txtCardNumber" Size="30" NullTextStyle-ForeColor="DarkGray" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="170px" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Card Number" MaxLength="16" NullText="-- Card Number --">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>


<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Card Number"></RequiredField>
</ValidationSettings>


<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                        <div class="cardcvv">
               <dx:ASPxLabel ID="ASPxLabel15" runat="server" Text="CVV :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
           </div>
           <div class="cvvcode">
               <dx:ASPxTextBox ID="txtCVV" Size="30" NullTextStyle-ForeColor="DarkGray" Font-Size="Large" Font-Names="Century" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Theme="Metropolis" runat="server" Width="100px" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Enter Card Number" MaxLength="3" NullText="-- CVV --">
<NullTextStyle ForeColor="DarkGray"></NullTextStyle>


<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Enter Card Number"></RequiredField>
</ValidationSettings>


<Border BorderColor="SkyBlue" BorderStyle="Dashed" BorderWidth="3px"></Border>
                            </dx:ASPxTextBox>
                        </div>
                        <div class="expire">
                              <dx:ASPxLabel ID="ASPxLabel16" runat="server" Text="EXPIRY :" Font-Names="Century" Font-Size="Large" ForeColor="#0066CC" Theme="MetropolisBlue"></dx:ASPxLabel>
                        </div>
                        <div class="expiremonth">
                            <dx:ASPxComboBox ID="cmbEXPMO" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Select Month" NullTextStyle-ForeColor="DarkGray" NullText="-- Select Month --" Font-Size="Large" Font-Names="Century" runat="server" EnableTheming="true" Theme="MetropolisBlue" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Width="170px" ValueType="System.String">
                                 <Items>
                                     <dx:ListEditItem Text="Jan" Value="0" />
                                     <dx:ListEditItem Text="Feb" Value="1" />
                                     <dx:ListEditItem Text="Mar" Value="2" />
                                     <dx:ListEditItem Text="Apr" Value="3" />
                                     <dx:ListEditItem Text="May" Value="4" />
                                     <dx:ListEditItem Text="Jun" Value="5" />
                                     <dx:ListEditItem Text="Jul" Value="6" />
                                     <dx:ListEditItem Text="Aug" Value="7" />
                                     <dx:ListEditItem Text="Sep" Value="8" />
                                     <dx:ListEditItem Text="Oct" Value="9" />
                                     <dx:ListEditItem Text="Nov" Value="10" />
                                     <dx:ListEditItem Text="Dec" Value="11" />
                                 </Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>



<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Select Month"></RequiredField>
</ValidationSettings>



<Border BorderColor="SkyBlue" BorderStyle="Dashed"></Border>
                             </dx:ASPxComboBox>
                        </div>
                         <div class="expireyear">
                            <dx:ASPxComboBox ID="cmbEXPYE" ValidationSettings-RequiredField-IsRequired="true" ValidationSettings-RequiredField-ErrorText="Please Select Year" NullTextStyle-ForeColor="DarkGray" NullText="-- Select Year --" Font-Size="Large" Font-Names="Century" runat="server" EnableTheming="true" Theme="MetropolisBlue" Border-BorderColor="SkyBlue" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Width="170px" ValueType="System.String">
                                 <Items>
                                     <dx:ListEditItem Text="2016" Value="0" />
                                     <dx:ListEditItem Text="2017" Value="1" />
                                     <dx:ListEditItem Text="2018" Value="2" />
                                     <dx:ListEditItem Text="2019" Value="3" />
                                     <dx:ListEditItem Text="2020" Value="4" />
                                     <dx:ListEditItem Text="2021" Value="5" />
                                     <dx:ListEditItem Text="2022" Value="6" />
                                     <dx:ListEditItem Text="2023" Value="7" />
                                     <dx:ListEditItem Text="2024" Value="8" />
                                     <dx:ListEditItem Text="2025" Value="9" />
                                     <dx:ListEditItem Text="2026" Value="10" />
                                     <dx:ListEditItem Text="2027" Value="11" />
                                 </Items>

<NullTextStyle ForeColor="DarkGray"></NullTextStyle>



<ValidationSettings>
<RequiredField IsRequired="True" ErrorText="Please Select Year"></RequiredField>
</ValidationSettings>



<Border BorderColor="SkyBlue" BorderStyle="Dashed"></Border>
                             </dx:ASPxComboBox>
                        </div>
                        <div class="pay">
                            <dx:ASPxButton ID="btnSearch" Width="10" Image-Height="33" HoverStyle-BackColor="LightBlue" HoverStyle-Border-BorderColor="Black"  runat="server" Text="PAY ONLINE" Font-Size="Large" Font-Names="Courier New" ForeColor="#0066CC" EnableTheming="true"  Theme="Glass" OnClick="btnSearch_Click">
<Image Height="33px" Url="../IMAGE/pay.JPG"></Image>

<HoverStyle Border-BorderColor="Black" BackColor="LightBlue"></HoverStyle>
                               </dx:ASPxButton>
                        </div>
                        </dx:PanelContent>
                       </PanelCollection>

<BackgroundImage ImageUrl="~/IMAGE/cloudy.jpg"></BackgroundImage>

<Border BorderWidth="2px"></Border>
               </dx:ASPxRoundPanel>
           </div>
            <div class="footer">
            <div class="joining">
        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="JOIN US ON SOCIAL MEDIA" Font-Bold="True" Font-Names="Courier New" Font-Size="XX-Large" ForeColor="#0066CC" Theme="iOS" Font-Overline="True" Font-Underline="True"></dx:ASPxLabel>
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
