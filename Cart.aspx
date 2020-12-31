<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Shopping_Cart_Application.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME TO YOUR CART</title>
    <style>
        body {
  font-family:Times New Roman;
  font-size: 20px;
  padding: 10px;
}
        .button1 {
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  background-color: white; 
  color: black; 
  border: 2px solid  #FF69B4;
}

.button1:hover {
  background-color:#FF69B4;
  color: white;
}
</style>
</head>
<body style="background-image:url(image/bg.png);width:auto;height:auto;">
    <form id="form1" runat="server">
    <div>
        <center><asp:Label ID="Label1" runat="server" Text="Your Shopping Basket" Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger"></asp:Label></center>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingConnectionString15 %>" DeleteCommand="DELETE FROM [cart] WHERE [productid] = @productid AND [userid] = @userid" InsertCommand="INSERT INTO [cart] ([productid], [productname], [price], [quantity], [amount], [userid]) VALUES (@productid, @productname, @price, @quantity, @amount, @userid)" SelectCommand="SELECT [productid], [productname], [price], [quantity], [amount], [userid] FROM [cart] WHERE ([userid] = @userid)" UpdateCommand="UPDATE [cart] SET [productname] = @productname, [price] = @price, [quantity] = @quantity, [amount] = @amount WHERE [productid] = @productid AND [userid] = @userid">
                <DeleteParameters>
                    <asp:Parameter Name="productid" Type="Int32" />
                    <asp:Parameter Name="userid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="productid" Type="Int32" />
                    <asp:Parameter Name="productname" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Int32" />
                    <asp:Parameter Name="userid" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="userid" SessionField="userid" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="productname" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Int32" />
                    <asp:Parameter Name="productid" Type="Int32" />
                    <asp:Parameter Name="userid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="productid,userid" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFF8DC;">productid:
                        <asp:Label ID="productidLabel"  runat="server" Text='<%# Eval("productid") %>' />
                        <br />
                        productname:
                        <asp:Label ID="productnameLabel"  runat="server" Text='<%# Eval("productname") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel"  runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        quantity:
                        <asp:Label ID="quantityLabel"  runat="server" Text='<%# Eval("quantity") %>' />
                        <br />
                        amount:
                        <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                        <br />
                        userid:
                        <asp:Label ID="useridLabel"  runat="server" Text='<%# Eval("userid") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #008A8C;color: #FFFFFF;">productid:
                        <asp:Label ID="productidLabel1" ReadOnly="true" runat="server" Text='<%# Eval("productid") %>' />
                        <br />
                        productname:
                        <asp:TextBox ID="productnameTextBox" ReadOnly="true" runat="server" Text='<%# Bind("productname") %>' />
                        <br />
                        price:
                        <asp:TextBox ID="priceTextBox" ReadOnly="true" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        quantity:
                        <asp:TextBox ID="quantityTextBox" runat="server" Text='<%# Bind("quantity") %>' />
                        <br />
                        amount:
                        <asp:TextBox ID="amountTextBox" ReadOnly="true" runat="server" Text='<%# Bind("amount") %>' />
                        <br />
                        userid:
                        <asp:Label ID="useridLabel1" ReadOnly="true" runat="server" Text='<%# Eval("userid") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">productid:
                        <asp:TextBox ID="productidTextBox" runat="server" Text='<%# Bind("productid") %>' />
                        <br />
                        productname:
                        <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
                        <br />
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        quantity:
                        <asp:TextBox ID="quantityTextBox" runat="server" Text='<%# Bind("quantity") %>' />
                        <br />
                        amount:
                        <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                        <br />
                        userid:
                        <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #DCDCDC;color: #000000;">productid:
                        <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
                        <br />
                        productname:
                        <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        quantity:
                        <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                        <br />
                        amount:
                        <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                        <br />
                        userid:
                        <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">productid:
                        <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
                        <br />
                        productname:
                        <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        quantity:
                        <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                        <br />
                        amount:
                        <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                        <br />
                        userid:
                        <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
        <br />
            <center><asp:Button ID="Button1" runat="server" Text="Proceed to Pay" OnClick="Button1_Click" CssClass="button1" /><br />
            <asp:Label ID="Label5" runat="server" Text="Total of Products:"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button2" runat="server" Text="Conform" CssClass="button1" PostBackUrl="~/CheckoutPage.aspx" /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProductListing.aspx">Return to Product Page</asp:HyperLink>
   </center>
    </div>
    </form>
</body>
</html>
