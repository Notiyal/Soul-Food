<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Group7_FinalProject.Cart" MasterPageFile="~/Site.Master" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <h4>SHOPPING CART</h4>
    <div class="row">
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <div class="row form-group">

                <div class="col-sm-5">
                    <asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox>
                </div>

                <div class="col-sm-4">
                    <!-- Buttons to remove items and empty the cart -->
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnRemove" runat="server"
                                Text="Remove Item" CssClass="btn" OnClick="btnRemove_Click" />
                        </div>
                        <div class="col-sm-12">
                            <asp:Button ID="btnEmpty" runat="server"
                                Text="Clear Cart" CssClass="btn" OnClick="btnEmpty_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-sm-5">
                    <div class="form-group lblMessage">

                        <asp:Label ID="lblMessage" runat="server"
                            CssClass="text-info col-sm-12" EnableViewState="False"></asp:Label>
                    </div>
                    <div class="form-group">
                        <!-- Buttons to continue shopping and proceed to checkout -->
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" runat="server" Text="Menu" CssClass="btn" PostBackUrl="~/Menu.aspx" />
                            <asp:Button ID="btnCheckOut" runat="server" Text="Checkout" CssClass="btn" PostBackUrl="~/Checkout.aspx" />
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>
