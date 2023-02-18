﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGOUT.aspx.cs" Inherits="GENERAL_LOGOUT" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/LAYOUT.css" rel="stylesheet" />
    <link href="../CSS/LOGOUT.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="logout">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" Border-BorderStyle="Dashed" Border-BorderWidth="3px" Border-BorderColor="Tan" BackColor="Maroon" runat="server" Height="200px" Width="800px" ShowHeader="False">
            <PanelCollection>
                    <dx:PanelContent>
                        <div class="loggedout">
                         <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="YOU ARE SUCCESSFULLY LOGGED OUT FROM UIA" Font-Size="XX-Large" Theme="Mulberry" ForeColor="#FFCCFF"></dx:ASPxLabel>
                            </div>
                        <br />
                        
                        <div class="login">
                             <dx:ASPxButton ID="btnPRCD" runat="server" Text="PROCEED TO LOGIN"  HoverStyle-ForeColor="RoyalBlue" BackColor="White" Theme="Mulberry" Border-BorderColor="DarkOliveGreen" Border-BorderStyle="Solid" OnClick="btnPRCD_Click" >
                <Image Url="../IMAGE/login.png"></Image>

<HoverStyle ForeColor="RoyalBlue"></HoverStyle>

<Border BorderColor="DarkOliveGreen" BorderStyle="Solid"></Border>
            </dx:ASPxButton>
                        </div>
                        </dx:PanelContent>
                       </PanelCollection>

<Border BorderColor="Tan" BorderStyle="Dashed" BorderWidth="3px"></Border>
                 </dx:ASPxRoundPanel>
            </div>
    </form>
</body>
</html>
