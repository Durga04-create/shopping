<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutPage.aspx.cs" Inherits="Shopping_Cart_Application.CheckoutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shipping and Payment</title>
    <script src="JavaScript1.js" type="text/javascript">    
</script>
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
.row {
  margin-left:-10px;
  margin-right:-10px;
}
  
.column {
  float: left;
  width: 50%;
  padding: 10px;
}
</style>
</head>
    
<body style="background-image:url(image/bg.png);width:auto;height:auto;">
    <form id="form1" runat="server">

        <center>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Shipping and Payment" Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger"></asp:Label>
            <br />
        </center>

        <h3>Shipping Address</h3>
        <div class="row">
            <div class="column">
            <table style="width:auto;height:300px">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Name:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Address:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="City:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="State:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="PinCode:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="MobileNumber:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button2" runat="server" Text="Conform Address" OnClick="Button2_Click" OnClientClick="return shipvalid();" CssClass="button1" />
                    </td>
                </tr>
                </table>
        </div>

                 <h3>Payment Details</h3>
                        <div class="row">
                            <table style="width:auto;height:300px">
                <tr>
                    
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Name on Card:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Card Number:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Exp.Month:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Exp.Year:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="CVV:" Font-Names="Times New Roman"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Text="Continue To Proceed" OnClick="Button1_Click" OnClientClick="return payvalid();" CssClass="button1"/>
                        
                    </td>
                </tr>
           
                </table>
            </div>
        </div>
        <br />


        <asp:Label ID="Label14" runat="server" Text="Purchased Items:"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingConnectionString16 %>" SelectCommand="SELECT [productname], [amount] FROM [cart] WHERE ([userid] = @userid)" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">productname:
                    <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                    <br />
                    amount:
                    <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C;color: #FFFFFF;">productname:
                    <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
                    <br />
                    amount:
                    <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">productname:
                    <asp:TextBox ID="productnameTextBox" runat="server" Text='<%# Bind("productname") %>' />
                    <br />amount:
                    <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC;color: #000000;">productname:
                    <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                    <br />
                    amount:
                    <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                    <br />
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
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">productname:
                    <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                    <br />
                    amount:
                    <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <br />
        <br />
       <center> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">LOGOUT</asp:HyperLink></center>
</form>
</body>
</html>
