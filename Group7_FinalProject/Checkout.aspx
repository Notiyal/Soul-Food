<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Group7_FinalProject.Checkout" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <h4>CHECKOUT</h4>
    <div class="row">
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-7">
            <div class="form-group mb-3 row">
                <label class="control-label col-md-3">Fullname :</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Fullname" Display="Dynamic" ControlToValidate="txtFullname" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group mb-3 row">
                <label class="control-label col-sm-3">Email Address:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a email address" ControlToValidate="txtEmail1" Display="Dynamic" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter a valid email address" Display="Dynamic" ControlToValidate="txtEmail1" ForeColor="Red" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>




            <div class="form-group mb-3 row">
                <label class="control-label col-md-3">Phone Number :</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Your phone number is required" ControlToValidate="txtPhone" Display="Dynamic" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must use this format: 123-456-7890" ControlToValidate="txtPhone" CssClass="text-danger" Display="Dynamic" SetFocusOnError="True" ValidationExpression="((\d{3}-))\d{3}-\d{4}" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group mb-3 row">
                <label class="control-label col-md-3">Date Of Birth:</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your date of birth" ControlToValidate="txtDOB" Display="Dynamic" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group mb-3 row">
                <label class="control-label col-md-3">Address :</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter your address" CssClass="text-danger" ControlToValidate="txtAddress" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group mb-3 row">
                <label class="control-label col-md-3">City :</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter city" Display="Dynamic" CssClass="text-danger" ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group mb-3 row">
                <label class="control-label col-md-3">Zip Code :</label>
                <div class="col-md-5">
                    <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter zip code" Display="Dynamic" ControlToValidate="txtZipCode" ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="You need to use this format: 99999 or 99999-9999" ValidationExpression="^\d{5}(?:-\d{4})?$" ControlToValidate="txtZipCode" ForeColor="Red" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group mb-3 row">
                <div class="col-md-12">
                    <!-- Action buttons -->
                    <asp:Button ID="btnPlaceOrder" runat="server" CssClass="btn" Text="Place Order" PostBackUrl="~/Success.aspx" />
                    <asp:Button ID="btnGoBackToCart" runat="server" CssClass="btn" Text="Cart" CausesValidation="false" PostBackUrl="~/Cart.aspx" />
                    <asp:LinkButton ID="lbtnContinueShopping" runat="server" CssClass="btn" Text="Menu" PostBackUrl="~/Menu.aspx" CausesValidation="False"></asp:LinkButton>
                    <asp:Button ID="btnCancel" CssClass="btn" runat="server" Text="Cancel Order" CausesValidation="False" OnClick="btnCancel_Click" />
                </div>
            </div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
        </div>
    </div>
</asp:Content>
