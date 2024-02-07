<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.cs" Inherits="Group7_FinalProject.Login" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="d-flex justify-content-center align-items-center flex-column">
        <div class="w-50">
            <h1 class="text-center">Login </h1>
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="txtUsername" CssClass="form-control my-3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" CssClass="text-danger" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Please enter Username" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="text-danger" runat="server" ErrorMessage="Please enter alphanumeric characters" ControlToValidate="txtUsername" ValidationExpression="^[a-zA-Z0-9]+$" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RegularExpressionValidator>
        </div>

        <div class="w-50">
            <asp:Label ID="lblUsertype" runat="server" Text="User Type:"></asp:Label>
            <asp:DropDownList ID="ddlUsertype" CssClass="form-control my-3" runat="server">
                <asp:ListItem Text="--Select--" Value="" Disabled="true" Selected="true"></asp:ListItem>
                <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                <asp:ListItem Text="Customer" Value="Customer"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Please select User type" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ControlToValidate="ddlUsertype"></asp:RequiredFieldValidator>


        </div>
        <div class="mt-3 w-50">
            <asp:Button ID="btnCancelLogin" CssClass="btn btn-secondary" runat="server" Text="Cancel" PostBackUrl="~/Default.aspx" CausesValidation="false" />
            <asp:Button ID="btnLogin" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </div>
</asp:Content>
