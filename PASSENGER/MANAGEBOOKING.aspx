﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MANAGEBOOKING.aspx.cs" Inherits="PASSENGER_MANAGEBOOKING" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/MANAGEBOOKINGCSS.css" rel="stylesheet" />
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
                            <Image Height="22px" Url="../IMAGE/logout.png"  Width="30px" />
                        </dx:NavBarItem>
                         </Items>

<HeaderStyle Font-Bold="True" ForeColor="CadetBlue"></HeaderStyle>
                </dx:NavBarGroup>    
            </Groups>
        </dx:ASPxNavBar> 
               <div class="manage">
                  <dx:ASPxGridView ID="ASPxGridView1" Font-Size="Large" Font-Names="Century" EnableTheming="True"  Theme="MetropolisBlue" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="Booking_ID">
                            <SettingsDataSecurity AllowEdit="False" AllowInsert="False" />
                            <SettingsSearchPanel Visible="True" />
                            <SettingsText SearchPanelEditorNullText="Enter Destination To Search" />
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="Booking_ID" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" VisibleIndex="0" ReadOnly="True">
                                    <EditFormSettings Visible="False" />

                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Passenger_Name" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Passenger_Origin" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Passenger_Arrival" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Passenger_Trip" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Departure_Date" VisibleIndex="5" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Arrival_Date" VisibleIndex="6" HeaderStyle-ForeColor="WhiteSmoke" HeaderStyle-BackColor="DarkSlateBlue">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AIRLINESDATABASESYSTEMConnectionString %>" DeleteCommand="DELETE FROM [PASSENGER_BOOKING_RECORDS] WHERE [Booking_ID] = @Booking_ID" InsertCommand="INSERT INTO [PASSENGER_BOOKING_RECORDS] ([Passenger_Name], [Passenger_Origin], [Passenger_Arrival], [Passenger_Trip], [Departure_Date], [Arrival_Date]) VALUES (@Passenger_Name, @Passenger_Origin, @Passenger_Arrival, @Passenger_Trip, @Departure_Date, @Arrival_Date)" SelectCommand="SELECT [Booking_ID], [Passenger_Name], [Passenger_Origin], [Passenger_Arrival], [Passenger_Trip], [Departure_Date], [Arrival_Date] FROM [PASSENGER_BOOKING_RECORDS]" UpdateCommand="UPDATE [PASSENGER_BOOKING_RECORDS] SET [Passenger_Name] = @Passenger_Name, [Passenger_Origin] = @Passenger_Origin, [Passenger_Arrival] = @Passenger_Arrival, [Passenger_Trip] = @Passenger_Trip, [Departure_Date] = @Departure_Date, [Arrival_Date] = @Arrival_Date WHERE [Booking_ID] = @Booking_ID">
                       <DeleteParameters>
                           <asp:Parameter Name="Booking_ID" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="Passenger_Name" Type="String" />
                           <asp:Parameter Name="Passenger_Origin" Type="String" />
                           <asp:Parameter Name="Passenger_Arrival" Type="String" />
                           <asp:Parameter Name="Passenger_Trip" Type="String" />
                           <asp:Parameter Name="Departure_Date" Type="String" />
                           <asp:Parameter Name="Arrival_Date" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="Passenger_Name" Type="String" />
                           <asp:Parameter Name="Passenger_Origin" Type="String" />
                           <asp:Parameter Name="Passenger_Arrival" Type="String" />
                           <asp:Parameter Name="Passenger_Trip" Type="String" />
                           <asp:Parameter Name="Departure_Date" Type="String" />
                           <asp:Parameter Name="Arrival_Date" Type="String" />
                           <asp:Parameter Name="Booking_ID" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                    
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uadb %>" DeleteCommand="DELETE FROM [PASSENGER_BOOKING_RECORDS] WHERE [Booking_ID] = @Booking_ID" InsertCommand="INSERT INTO [PASSENGER_BOOKING_RECORDS] ([Passenger_Name], [Passenger_Origin], [Passenger_Arrival], [Passenger_Trip], [Departure_Date], [Arrival_Date]) VALUES (@Passenger_Name, @Passenger_Origin, @Passenger_Arrival, @Passenger_Trip, @Departure_Date, @Arrival_Date)" SelectCommand="SELECT [Booking_ID], [Passenger_Name], [Passenger_Origin], [Passenger_Arrival], [Passenger_Trip], [Departure_Date], [Arrival_Date] FROM [PASSENGER_BOOKING_RECORDS]" UpdateCommand="UPDATE [PASSENGER_BOOKING_RECORDS] SET [Passenger_Name] = @Passenger_Name, [Passenger_Origin] = @Passenger_Origin, [Passenger_Arrival] = @Passenger_Arrival, [Passenger_Trip] = @Passenger_Trip, [Departure_Date] = @Departure_Date, [Arrival_Date] = @Arrival_Date WHERE [Booking_ID] = @Booking_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Booking_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Passenger_Name" Type="String" />
                        <asp:Parameter Name="Passenger_Origin" Type="String" />
                        <asp:Parameter Name="Passenger_Arrival" Type="String" />
                        <asp:Parameter Name="Passenger_Trip" Type="String" />
                        <asp:Parameter Name="Departure_Date" Type="String" />
                        <asp:Parameter Name="Arrival_Date" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Passenger_Name" Type="String" />
                        <asp:Parameter Name="Passenger_Origin" Type="String" />
                        <asp:Parameter Name="Passenger_Arrival" Type="String" />
                        <asp:Parameter Name="Passenger_Trip" Type="String" />
                        <asp:Parameter Name="Departure_Date" Type="String" />
                        <asp:Parameter Name="Arrival_Date" Type="String" />
                        <asp:Parameter Name="Booking_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                    
            </div>
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
