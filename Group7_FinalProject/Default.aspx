<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Group7_FinalProject._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">

    <div class="container glass">
        <div class="subContainer">
            <h1>From Our Kitchen to Your Soul</h1>
            <h4>Welcome to Comfort Cuisine</h4>


            <asp:Button ID="Button1" CssClass="btn" runat="server" PostBackUrl="~/Menu.aspx" Text="Browse the Menu" />

        </div>
    </div>
</asp:Content>
