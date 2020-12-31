<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductListing.aspx.cs" Inherits="Shopping_Cart_Application.ProductListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME To ProductListing</title>
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
   * {
  box-sizing: border-box;
}
/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
}
</style>
</head>
<body style="background-image:url(image/bg.png);width:auto;height:auto;" >
    <form id="form1" runat="server">
    <div>
        <center><asp:Label ID="Label1" runat="server" Text="Products to Shop Now" Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger"></asp:Label><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingConnectionString9 %>" DeleteCommand="DELETE FROM [product] WHERE [Productid] = @Productid" InsertCommand="INSERT INTO [product] ([Productid], [ProductName], [Price], [StockAvailable]) VALUES (@Productid, @ProductName, @Price, @StockAvailable)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [ProductName] = @ProductName, [Price] = @Price, [StockAvailable] = @StockAvailable WHERE [Productid] = @Productid">
            <DeleteParameters>
                <asp:Parameter Name="Productid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Productid" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="StockAvailable" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="StockAvailable" Type="Int32" />
                <asp:Parameter Name="Productid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Productid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Productid" HeaderText="Productid" ReadOnly="True" SortExpression="Productid" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="StockAvailable" HeaderText="StockAvailable" SortExpression="StockAvailable" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        
        
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to Cart" CssClass="button1" />
        
        
        <br />
        
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cart.aspx">Move to Cart</asp:HyperLink>
            </center>
        </div>
        </form>
</body>
</html>
