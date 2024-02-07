<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Admin.aspx.cs" Inherits="Group7_FinalProject.Admin" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">

    <h4>Create new menu item</h4>
    <div class="row">
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <div class="row form-group">

                <div class="form-group mb-3 row">
                    <asp:Label ID="Label1" runat="server" class="control-label col-sm-3" Text="Item ID:"></asp:Label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="txtID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Item ID." ControlToValidate="txtID" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group mb-3 row">
                    <asp:Label ID="Label2" runat="server" Text="Item Name:" class="control-label col-sm-3"></asp:Label>
                    <div class="col-sm-5">
                        <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Item Name." ControlToValidate="txtItemName" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="form-group mb-3 row">
                <asp:Label ID="Label6" runat="server" Text="Category:" class="control-label col-sm-3"></asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter Category." ControlToValidate="txtCategory" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group mb-3 row">
                <asp:Label ID="Label3" runat="server" Text="Description:" class="control-label col-sm-3"></asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Description." ControlToValidate="txtDescription" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group mb-3 row">
                <asp:Label ID="Label4" runat="server" Text="Price:" class="control-label col-sm-3"></asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Price." ControlToValidate="txtPrice" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group mb-3 row">
                <asp:Label ID="Label5" runat="server" Text="Image File:" class="control-label col-sm-3"></asp:Label>
                <div class="col-sm-5">
                    <asp:TextBox ID="txtImageFile" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Image file." ControlToValidate="txtImageFile" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div>&nbsp;</div>
            <div>
                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Create Menu Item" OnClick="Button1_Click" />
            </div>
        </div>
        <div class="row form-group">
            <h4>Update/Delete Menu Item</h4>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechStars %>" DeleteCommand="DELETE FROM [Items] WHERE [ItemID] = @ItemID" InsertCommand="INSERT INTO [Items] ([ItemID], [ItemName], [Description], [Price], [ImageFile], [CategoryID]) VALUES (@ItemID, @ItemName, @Description, @Price, @ImageFile, @CategoryID)" SelectCommand="SELECT [ItemID], [ItemName], [Description], [Price], [ImageFile], [CategoryID] FROM [Items]" UpdateCommand="UPDATE [Items] SET [ItemName] = @ItemName, [Description] = @Description, [Price] = @Price, [ImageFile] = @ImageFile, [CategoryID] = @CategoryID WHERE [ItemID] = @ItemID">
                <DeleteParameters>
                    <asp:Parameter Name="ItemID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemID" Type="String" />
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ImageFile" Type="String" />
                    <asp:Parameter Name="CategoryID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ImageFile" Type="String" />
                    <asp:Parameter Name="CategoryID" Type="String" />
                    <asp:Parameter Name="ItemID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ItemID" AllowSorting="True" OnRowDeleted="GridView1_RowDeleted" CssClass="table table-striped table-bordered table-hover" Style="background-color: white;">
                <Columns>
                    <asp:BoundField DataField="ItemID" HeaderText="ID" InsertVisible="false" ReadOnly="true" SortExpression="ItemID" HeaderStyle-CssClass="text-center align-middle" HeaderStyle-ForeColor="#787878" ItemStyle-CssClass="text-center align-middle" />
                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" SortExpression="ItemName" ControlStyle-CssClass="form-control" ItemStyle-CssClass="text-center align-middle" HeaderStyle-CssClass="text-center align-middle" HeaderStyle-ForeColor="#787878" />
                    <asp:BoundField DataField="CategoryID" HeaderText="Category" SortExpression="CategoryID" ControlStyle-CssClass="form-control" ItemStyle-CssClass="text-center align-middle" HeaderStyle-CssClass="text-center align-middle" HeaderStyle-ForeColor="#787878" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ControlStyle-CssClass="form-control" ItemStyle-CssClass="text-center align-middle" HeaderStyle-CssClass="text-center align-middle" HeaderStyle-ForeColor="#787878" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:C}" ControlStyle-CssClass="form-control" ItemStyle-CssClass="text-center align-middle" HeaderStyle-CssClass="text-center align-middle" HeaderStyle-ForeColor="#787878" />
                    <asp:BoundField DataField="ImageFile" HeaderText="Image File" SortExpression="ImageFile" ControlStyle-CssClass="form-control" ItemStyle-CssClass="text-center align-middle" HeaderStyle-CssClass="text-center align-middle" HeaderStyle-ForeColor="#787878" />

                    <asp:CommandField ShowEditButton="true" CausesValidation="false" ItemStyle-CssClass="text-center align-middle" />
                    <asp:CommandField ShowDeleteButton="true" CausesValidation="false" ItemStyle-CssClass="text-center align-middle" />
                </Columns>

            </asp:GridView>
            <asp:Label ID="lblErrorMsg" runat="server" EnableViewState="false" CssClass="text-danger"></asp:Label>

            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
            <div>&nbsp;</div>
        </div>
    </div>
    </div>
</asp:Content>
