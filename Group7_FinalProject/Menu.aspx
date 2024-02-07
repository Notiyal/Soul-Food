<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Group7_FinalProject.Menu" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <h4>MENU</h4>
    <div class="row">
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-5">
            <div class="row form-group">
                <label>Select an Item:</label>
                <asp:DropDownList ID="ddlItem" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="ItemName" DataValueField="ItemID" AutoPostBack="True"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechStars %>" SelectCommand="SELECT DISTINCT [ItemID], [ItemName], [Description], [Price], [ImageFile], [CategoryID] FROM [Items] ORDER BY [ItemName]"></asp:SqlDataSource>
            </div>
            <div class="form-group">

                <h3>
                    <asp:Label ID="lblItemName" runat="server" Text="Label"></asp:Label></h3>
            </div>

            <div class="form-group">

                <span class="span">Description:</span>
                <asp:Label ID="lblDescription" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">

                <span class="span">Price:</span>
                <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>

            </div>
            <div class="form-group">

                <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>

                <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter quantity." CssClass="text-danger" ControlToValidate="txtQuantity" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Quantity must range from 1 to 100." CssClass="text-danger" Display="Dynamic" ControlToValidate="txtQuantity" MinimumValue="1" MaximumValue="100" Type="Integer"></asp:RangeValidator>
            </div>
            <div>&nbsp;</div>
            <div class="form-group">

                <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CssClass="btn" OnClick="btnAdd_Click" />

                <asp:Button ID="btnCart" runat="server" Text="Go to Cart" CssClass="btn" CausesValidation="False" PostBackUrl="~/Cart.aspx" />

            </div>
        </div>
        <div class="col-md-1">&nbsp;</div>
        <div class="col-md-3">
            <!-- Image of the selected item -->
            <asp:Image ID="imgItem" runat="server" Width="300px" />
        </div>

    </div>
</asp:Content>
